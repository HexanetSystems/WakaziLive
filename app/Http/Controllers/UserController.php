<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use DB;
use Session;
use App\Models\Product;
use Redirect;

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

}
