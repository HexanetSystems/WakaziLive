<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Product;
use App\Models\orders;
use App\Models\User;
use DB;
use Redirect;
use Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;



class HomeController extends Controller
{

    public function index()
    {
        $profile = \Dymantic\InstagramFeed\Profile::where('username', 'stagepassav')->first();
        $data = [
            'instagram_feed' => Profile::where('username', 'stagepassav')->first()->feed(100),
        ];
        $Product = Product::where('status', 1)->limit(15)->inRandomOrder()->get();
        return view('welcome', compact('Product'));
    }

    public function home()
    {
        $Product = Product::where('status', 1)->limit(12)->inRandomOrder()->get();
        return view('front.index', compact('Product'));
    }
    public function product($slung)
    {
        $Product = Product::where('status', 1)->where('slung',$slung)->get();
        return view('front.product', compact('Product'));
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

    public function addToCartPost(Request $request){
        $id = $request->product_id;
        $Product = Product::find($id);
        Cart::add($id, $Product->name, 1, $Product->price);
        Session::flash('message', "Product Has Been Approved");
        return response()->json(['message' => 'Cart Added Successfull'], 200);
    }


    public function cart(){
        $CartItems = Cart::content();
        return view('front.cart', compact('CartItems'));
    }

    public function checkout(){
        $CartItems = Cart::content();
        return view('front.checkout', compact('CartItems'));
    }

    public function updates(){
        $Blog = \App\Models\Blog::all();
        return view('front.updates', compact('Blog'));
    }

    public function update($slung){
        $Blog = \App\Models\Blog::where('slung',$slung)->get();
        return view('front.update', compact('Blog'));
    }

    public function county (){
        $Blog = \App\Models\Blog::where('type','County Bounty')->get();
        $County = \App\Models\County::all();
        return view('front.county', compact('Blog','County'));
    }

    public function voices (){
        $Voices = \App\Models\Voice::all();
        $Blog = \App\Models\Blog::where('type','Artisan Voices')->get();
        return view('front.voices', compact('Blog','Voices'));
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
            'mobile'=>$request->mobile,
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
        // Send notification here
        return view('front.thank');
    }

    public function category($slung){
        $Category = DB::table('categories')->where('slung', $slung)->first();
        $Product = DB::table('products')->where('category', $Category->id)->where('status', '1')->paginate(12);
        $ProductCount = DB::table('products')->where('category', $Category->id)->where('status', '1')->get();
        return view('front.category', compact('Product','Category','ProductCount'));
    }

    public function category_class($slung){
        $Category = DB::table('mains')->where('slung', $slung)->first();
        $Product = DB::table('products')->where('main', $Category->id)->where('status', '1')->paginate(12);
        $ProductCount = DB::table('products')->where('main', $Category->id)->where('status', '1')->get();
        return view('front.category', compact('Product','Category','ProductCount'));
    }

    public function become_supplier(){
        $Product = DB::table('products')->paginate(12);
        return view('front.become-supplier');
    }

    public function become_supplier_post(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'type' => 3,
            'password' => Hash::make($request['password']),
        ]);

        // Login
        $user = User::where('email','=',$request->email)->first();
        Auth::loginUsingId($user->id, TRUE);
        return redirect()->route('supplier.home');

    }


    public function search(Request $request){

        $Category = $request->category_id;
        $keyword = $request->keyword;
        // dd($request->all());
        // //Make the search
        if($Category == "All Categories"){
            $Product = DB::table('products')->where('name', 'LIKE', "%$keyword%")->where('status','1')->paginate(100);
        }else{
            $Product = DB::table('products')->where('category',$Category)->where('status','1')->where('name', 'LIKE', "%$keyword%")->paginate(100);
        }
        return view('front.search', compact('Product','Category','keyword'));
    }
}
