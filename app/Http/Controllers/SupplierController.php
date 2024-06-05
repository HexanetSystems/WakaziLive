<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

   /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('suppliers.index');
    }

    // my orders method
    public function myOrders(){
        $UserID = Auth::User()->id;
        $Orders = \App\Models\Order::where('user_id',$UserID)->get();
        return view('suppliers.myOrders', compact('Orders'));
    }

    // Single Order method
    public function orderDetails($id){
        $Orders = \App\Models\Order::where('id',$id)->get();
        return view('suppliers.orderDetails', compact('Orders'));
    }

    //my products
    public function myProducts(){
        $UserID = Auth::User()->id;
        $products = \App\Models\Product::where('UserID',$UserID)->get();
        return view('suppliers.myProducts', compact($products));
    }

    // Add Product Method
    public function addProduct(){
        $Categories = \App\Models\Category::all();
        return view('suppliers.addProduct', compact('Categories'));
    }

    // post method for addProduct
    public function addProductPost(Request $request){
        $UserID = Auth::User()->id;
        $product = new \App\Models\Product();
        $product->UserID = $UserID;
        $product->Name = $request->Name;
        $product->Price = $request->Price;
        $product->Quantity = $request->Quantity;
        $product->CategoryID = $request->CategoryID;
        $product->save();
        return redirect('/myProducts');
    }

    // Edit Product Method
    public function editProduct($id){
        $product = \App\Models\Product::find($id);
        $Categories = \App\Models\Category::all();
        return view('suppliers.editProduct', compact('product', 'Categories'));
    }

    //Edit product post
    public function editProductPost(Request $request){
        $product = \App\Models\Product::find($request->id);
        $product->Name = $request->Name;
        $product->Price = $request->Price;
        $product->Quantity = $request->Quantity;
        $product->CategoryID = $request->CategoryID;
        $product->save();
        return redirect('/myProducts');
    }

    // Invoices Method
    public function invoices(){
        $UserID = Auth::User()->id;
        $invoices = \App\Models\Invoice::where('UserID', $UserID)->get();
        return view('suppliers.invoices', compact('invoices'));
    }

    public function mypayments(){
        $UserID = Auth::User()->id;
        $payments = \App\Models\Payment::where('UserID', $UserID)->get();
        return view('suppliers.payments', compact('payments'));
    }

    public function makePayment(){
        return view('suppliers.makePayment');
    }

    // terms and condition
    public function terms(){
        return view('suppliers.terms');
    }

    public function privacy(){
        return view('suppliers.privacy');
    }

    // My Profile
    public function profile(){
        $User = User::find(Auth::User()->id);
        return view('suppliers.profile', compact('User'));
    }

}
