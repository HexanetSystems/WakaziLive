<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use DB;
use Session;
use App\Models\Product;
use App\Models\User;
use App\Models\SendEmail;
use Redirect;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Log;
use App\Models\orders;

class UserController extends Controller
{
    public function index(){
        $Order = DB::table('orders')->where('user_id', Auth::User()->id)->get();
        $Pending = DB::table('orders')->where('status','pending')->where('user_id', Auth::User()->id)->get();
        $Complete = DB::table('orders')->where('status','complete')->where('user_id', Auth::User()->id)->get();

        return view('dashboard.index', compact('Order','Pending','Complete'));
    }

    public function orders(){
        $Order = DB::table('orders')->where('user_id', Auth::User()->id)->get();
        $Pending = DB::table('orders')->where('status','pending')->where('user_id', Auth::User()->id)->get();
        $Complete = DB::table('orders')->where('status','complete')->where('user_id', Auth::User()->id)->get();

        return view('dashboard.orders', compact('Order','Pending','Complete'));
    }

    public function order($id){
        $Order = DB::table('orders')->where('user_id', Auth::User()->id)->where('id',$id)->get();
        $Pending = DB::table('orders')->where('status','pending')->where('user_id', Auth::User()->id)->get();
        $Complete = DB::table('orders')->where('status','complete')->where('user_id', Auth::User()->id)->get();
        return view('dashboard.order', compact('Order','Pending','Complete'));
    }

    public function cancel($id){
        DB::table('orders')->where('id', $id)->delete();
        DB::table('orders_product')->where('orders_id', $id)->delete();
        $Order = DB::table('orders')->where('user_id', Auth::User()->id)->get();
        $Pending = DB::table('orders')->where('status','pending')->where('user_id', Auth::User()->id)->get();
        $Complete = DB::table('orders')->where('status','complete')->where('user_id', Auth::User()->id)->get();
        return view('dashboard.index', compact('Order','Pending','Complete'));
    }

    public function profile(){
        $user = Auth::user();
        return view('dashboard.profile', compact('user'));
    }

    public function profile_save(Request $request){
        $user = Auth::user()->id;
        $updatedetails = array(
            'name' => $request->name,
            'company' => $request->company,
            'address' => $request->address,
            'apartment' => $request->apartment,
            'street' => $request->street,
            'mobile' => $request->mobile,
            'country' => $request->country,
            'zip' => $request->zip,
        );
        DB::table('users')->where('id', $user)->update($updatedetails);
        return redirect()->back()->with('success', 'Profile updated successfully');
    }

    public function thankYou()
    {
        $latest = orders::orderBy('created_at','DESC')->first();
        if($latest == null){
            $OrderId = 1;
        }else{
            $OrderID = $latest->id;
            $OrderId = $OrderID+1;
        }

        $InvoiceNumber = "wkz-".$OrderId;
        // /** Send To Supplier **/ //
        $Cart = Cart::content();

        foreach($Cart as $cart){
            $ProductID = $cart->id;
            $Product = Product::find($ProductID);
            $SupplierID = $Product->UserID;
            $Supplier = User::find($SupplierID);
            $SupplierEmail = $Supplier->email;
            $SupplierName = $Supplier->name;
            $SupplierMobile = $Supplier->mobile;
            $SendEmail = SendEmail::MailSupplier($SupplierEmail,$SupplierName,$InvoiceNumber);
            if($SendEmail){
                Log::info("Email Has been Sent:".$SupplierEmail);
            }
        }
        // /** Send To User **/ //
        $email = Auth::User()->email;
        $name = Auth::User()->name;
        $phone = Auth::User()->mobile;
        SendEmail::mailUser($email,$name,$InvoiceNumber);
        $SMSMessage = "Dear $name, Your order #$InvoiceNumber has been received for processing, We will contact you about delivery";
        $SMSSupplier= "Dear $SupplierName, You have a new order!! Order number #$InvoiceNumber, Kindly login and fulfill at your earlierst convinience";
        // Send SMS
        $this->sendSMS($phone,$SMSMessage);
        // SMS Supplier
        $this->sendSMS($SupplierMobile,$SMSMessage);
        // Create Order
        orders::createOrder();
        // Destroy Cart
        \Cart::destroy();

        return view('dashboard.thankYou');
    }

    public function sendSMS($phone,$message){
        $key = config('sms.key');
        $clientID = config('sms.clientID');
        $MessageParameters=array([
            'Number' => $phone,
            'Text' => $message
        ]);
        $senderid = "WAKAZIWORKS";
        //
        $url = 'https://api.onfonmedia.com/v1/sms/SendBulkSMS';

            $post_data=array(
            'SenderId'=>$senderid,
            'MessageParameters'=>$MessageParameters,
            'ClientId'=>$clientID,
            'ApiKey'=>$key,
            );

        $data_string = json_encode($post_data);
        // dd($data_string);
        $ch = curl_init( $url );
        curl_setopt( $ch, CURLOPT_POST, 1);
        curl_setopt( $ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt( $ch, CURLOPT_HEADER, 0);
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Accept: application/json',
                'Authorization:Bearer '.$key,
                'Content-Length: ' . strlen($data_string)
                )
            );

        $response = curl_exec($ch);
        curl_close($ch);
        // print_r($response);
    }
}
