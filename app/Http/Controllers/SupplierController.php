<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use DB;
use Session;
use App\Models\Product;
use App\Models\SendEmail;
use Redirect;

use Illuminate\Support\Facades\Crypt;

use Stevebauman\Hypertext\Transformer;

use Illuminate\Support\Str;

use Illuminate\Support\Facades\Storage;

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
        $Orders = \App\Models\Order::all();
        return view('suppliers.index', compact('Orders'));
    }

    // my orders method
    public function myOrders(){
        $UserID = Auth::User()->id;
        $Orders = \App\Models\Order::all();
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
        return view('suppliers.myProducts', compact('products'));
    }

    public function uploadUi ($id){
        $UserID = Auth::User()->id;
        $products = \App\Models\Product::where('UserID',$UserID)->where('id',$id)->get();
        return view('suppliers.drop', compact('products'));
    }

    public function confirm_orders($orderID){
        $Order = \App\Models\orders::find($orderID);
        // Send Email
        $User = \App\Models\User::find($Order->user_id);
        $UserEmail = $User->email;
        $UserName = $User->name;
        SendEmail::confirmOrder($UserEmail,$UserName,$orderID);
        return Redirect::back();
    }

    public  function FileUpload(Request $request)
    {
        $image = $request->file('file');
        $imageName = $image->getClientOriginalName();
        $image->move(public_path('images'),$imageName);
        // Add To Database
        $product_id = $request->product_id;
        $Gallery = new \App\Models\Gallery;
        $Gallery->product_id = $product_id;
        $Gallery->image = $imageName;
        $Gallery->save();

        return response()->json(['success'=>$imageName]);
    }

    public function deleteProducts($id){
        $product = \App\Models\Product::find($id);
        $product->delete();
        Session::flash('message', "Product Has Been Deleted");
        return redirect('/supplier/my-products');
    }

    // Add Product Method
    public function addProduct(){
        $Categories = \App\Models\Category::all();
        return view('suppliers.addProduct', compact('Categories'));
    }

    // post method for addProduct
    public function addProductPost(Request $request){
        activity()->log('Evoked add Product Operation');
        $path = 'uploads/products';
        if(isset($request->image_one)){
            $dir = 'uploads/products';
            $file = $request->file('image_one');
            $realPath = $request->file('image_one')->getRealPath();
            $image_one = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $image_one = "0";
        }

        // dd($request->all());

        $Product = new Product;
        $Product->name = $request->name;
        $Product->slung = Str::slug($request->name);
        $Product->category = $request->category;
        $Product->main = $request->main;
        $Product->UserID = Auth::User()->id;
        $Product->stock = "In Stock";
        $Product->price_raw = $request->price;
        $Product->price = $request->price;
        $Product->content = $request->content;
        $Product->meta = $request->meta;
        $Product->image_one = $image_one;
        $Product->save();
        Session::flash('message', "Product Has Been Added");
        // return Redirect::back();
        return redirect('/supplier/my-products');
    }

    // Edit Product Method
    public function editProduct($id){
        $product = \App\Models\Product::find($id);
        $Categories = \App\Models\Category::all();
        return view('suppliers.editProduct', compact('product', 'Categories'));
    }

    public function my_profile_update(Request $request){

        $updateDetails = array(
            'comment' => $request->comment,
            'company' => $request->company,
            'email' =>$request->email,
            'name' =>$request->name,
            'mobile' =>$request->phone,
            'address' =>$request->address,
            'apartment'=>$request->apartment,
            'country' =>$request->country,
            'street' =>$request->street
        );
        DB::table('users')->where('id', Auth::User()->id)->update($updateDetails);

        Session::flash('message', "Product Has Been Added");
        return Redirect::back();
    }

    public function my_profile(){
        $User = \App\Models\User::find(Auth::User()->id);
        $Categories = \App\Models\Category::all();
        return view('suppliers.my_profile', compact('User'));
    }

    public function my_logo(){
        $User = \App\Models\User::find(Auth::User()->id);
        $Categories = \App\Models\Category::all();
        return view('suppliers.my_logo', compact('User'));
    }

    public function my_logo_update(Request $request){
        if(isset($request->image)){
            $dir = 'uploads/users';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $image = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $image = "0";
        }

        $update = array(

            'image' => $image,
        );
        // dd($update);
        DB::table('users')->where('id', Auth::User()->id)->update($update);
        $User = Auth::User()->name;
        Session::flash('message', "$User has been Updated their logo");
        return Redirect::Back();
    }




    //Edit product post
    public function editProductPost(Request $request,$id){
        $product = \App\Models\Product::find($id);
        activity()->log('Evoked edit Product Operation');

        if(isset($request->image_one)){
            $dir = 'uploads/products';
            $file = $request->file('image_one');
            $realPath = $request->file('image_one')->getRealPath();
            $image_one = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $image_one = $request->image_one_cheat;
        }

        $update = array(
            'name' => $request->name,
            'slung' => Str::slug($request->name),

            'main' => $request->main,
            'category' => $request->category,
            'price' => $request->price,
            'content' => $request->content,
            'meta' => $request->meta,
            'image_one' => $image_one,
        );
        DB::table('products')->where('id', $id)->update($update);
        Session::flash('message', "$product->name has been Updated");
        return redirect('/supplier/my-products');
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


     // S3
     public function genericFIleUpload($file,$dir,$realPath){
        $image_name = $file->getClientOriginalName();
        $file->move(public_path($dir),$image_name);
        $url = url('/');
        $image_path = "$url/$dir/" . $image_name;
        return $image_path;
    }

}
