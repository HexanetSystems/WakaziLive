<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Product;
use App\Models\orders;
use App\Models\User;
use Redirect;
use Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{

    public function index()
    {
        $Product = Product::where('status', 1)->get();
        return view('welcome', compact('Product'));
    }

    public function home()
    {
        $Product = Product::where('status', 1)->get();
        return view('front.index', compact('Product'));
    }

    public function select(){
        return view('front.select');
    }

    public function addToCart($id){
        $Product = Product::find($id);
        Cart::add($id, $Product->name, 1, $Product->price);
        Session::flash('message', "Product Has Been Approved");
        return Redirect::back();
    }

    public function cart(){
        $CartItems = Cart::content();
        return view('front.cart', compact('CartItems'));
    }

    public function checkout(){
        $CartItems = Cart::content();
        return view('front.checkout', compact('CartItems'));
    }

    public function removeCart($id){
        Cart::remove($id);
        Session::flash('message', "Product Has Been Approved");
        return Redirect::back();
    }

    public function register(Request $request){
        // dd($request->all());
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'country' => 'required',
            'company' => 'required',
            'street' => 'required',
            'apartment' => 'required',
            'zip' => 'required',
            'comment' => 'required',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'country' => $request->country,
            'company' => $request->company,
            'password' => Hash::make($request['mobile']),
            'street' => $request->street,
            'apartment' => $request->apartment,
            'zip' => $request->zip,
            'comment' => $request->comment,
        ]);

        // Login
        $user = User::where('email','=',$request->email)->first();
        Auth::loginUsingId($user->id, TRUE);
        return Redirect::back();
    }

    public function post_order(){
        orders::createOrder();
        Cart::destroy();
        // return Redirect::back();
        return view('front.thank');
    }

}
