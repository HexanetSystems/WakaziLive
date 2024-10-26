<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use App\Models\Product;
use App\Models\User;
use App\Models\SendEmail;
use App\Models\Orders;
use Gloudemans\Shoppingcart\Facades\Cart;
use Redirect;

class UserController extends Controller
{
    public function index()
    {
        $userId = Auth::id();

        $orders = Orders::where('user_id', $userId)->get();
        $pending = $orders->where('status', 'pending');
        $complete = $orders->where('status', 'complete');

        return view('dashboard.index', compact('orders', 'pending', 'complete'));
    }

    public function orders()
    {
        return $this->index();  // Reuse the index logic for listing orders
    }

    public function order($id)
    {
        $userId = Auth::id();

        $order = Orders::where('user_id', $userId)->where('id', $id)->first();
        if (!$order) {
            return redirect()->route('dashboard.index')->withErrors('Order not found');
        }

        $orders = Orders::where('user_id', $userId)->get();
        $pending = $orders->where('status', 'pending');
        $complete = $orders->where('status', 'complete');

        return view('dashboard.order', compact('order', 'pending', 'complete'));
    }

    public function cancel($id)
    {
        $userId = Auth::id();

        $order = Orders::where('user_id', $userId)->where('id', $id)->first();
        if (!$order) {
            return redirect()->route('dashboard.index')->withErrors('Order not found or already deleted');
        }

        $order->delete();
        DB::table('orders_product')->where('orders_id', $id)->delete();

        return redirect()->route('dashboard.index')->with('success', 'Order canceled successfully');
    }

    public function profile()
    {
        return view('dashboard.profile', ['user' => Auth::user()]);
    }

    public function profile_save(Request $request)
    {
        $user = Auth::user();
        
        $user->update([
            'name' => $request->name,
            'company' => $request->company,
            'address' => $request->address,
            'apartment' => $request->apartment,
            'street' => $request->street,
            'mobile' => $request->mobile,
            'country' => $request->country,
            'zip' => $request->zip,
        ]);

        return redirect()->back()->with('success', 'Profile updated successfully');
    }

    public function thankYou()
    {
        $latestOrder = Orders::latest()->first();
        $orderId = $latestOrder ? $latestOrder->id + 1 : 1;
        $invoiceNumber = "wkz-" . $orderId;

        // ** Send to Supplier **
        foreach (Cart::content() as $cartItem) {
            $product = Product::find($cartItem->id);

            if ($product) {
                $supplier = User::find($product->UserID);
                if ($supplier && $supplier->email) {
                    $emailSent = SendEmail::MailSupplier($supplier->email, $supplier->name, $invoiceNumber);
                    if ($emailSent) {
                        Log::info("Email has been sent to: " . $supplier->email);
                    }
                }
            }
        }

        // ** Send to User **
        SendEmail::mailUser(Auth::user()->email, Auth::user()->name, $invoiceNumber);

        // Create Order
        Orders::createOrder();

        // Clear Cart
        Cart::destroy();

        return view('dashboard.thankYou');
    }
}
