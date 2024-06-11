<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Product;
use Redirect;
use Session;

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

}
