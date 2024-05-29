<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use BinaryCats\Sku\HasSku;
use App\Models\Product;
use App\Models\Podcast;
use App\Models\Message;
use App\Models\Order;
use Datetime;
use Hash;
use Session;
use Storage;
use Redirect;
use App\Models\User;
use App\Models\Category;
use DB;

class AdminsController extends Controller
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



    public function adminHome()
    {
        activity()->log('User Accessed the Admins Dashboard');
        $Notifications = DB::table('notifications')->limit('5')->get();
        $ActivityLog = DB::table('activity_log')->orderBy('id','DESC')->limit('5')->get();
        $SiteSettings = DB::table('_site_settings')->get();
        $Message = DB::table('messages')->limit('5')->get();
        return view('admin.index',compact('Notifications','ActivityLog','SiteSettings','Message'));
    }

    public function SiteSettings(){
        activity()->log('User Accessed Site Settings Page');
        $SiteSettings = DB::table('_site_settings')->get();
        return view('admin.site_settings',compact('SiteSettings'));
    }

    public function SocialMediaSettings(){
        activity()->log('User Accessed Social Media Settings Page');
        $SiteSettings = DB::table('_site_settings')->get();
        return view('admin.SocialMediaSettings',compact('SiteSettings'));
    }

    public function logo_and_favicon(){
        activity()->log('User Accessed Logo & Favicon Settings Page');
        $SiteSettings = DB::table('_site_settings')->get();
        return view('admin.logo_and_favicon',compact('SiteSettings'));
    }

    public function logo_and_favicon_update(Request $request){
        activity()->log('User Made an update on the logo and the favicons page');
        $path = 'uploads/logo';
        if(isset($request->logo)){
            $dir = 'uploads/logo';
            $file = $request->file('logo');
            $realPath = $request->file('logo')->getRealPath();
            $SaveFilePath_Logo = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $logo = $request->logo_cheat;
        }

        if(isset($request->favicon)){
            $dir = 'uploads/favicon';
            $file = $request->file('favicon');
            $realPath = $request->file('favicon')->getRealPath();
            $SaveFilePath_Favicon = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath_Favicon = $request->favicon_cheat;
        }

        if(isset($request->logo_two)){
            $dir = 'uploads/logo';
            $file = $request->file('logo_two');
            $realPath = $request->file('logo_two')->getRealPath();
            $SaveFilePath_logo_2 = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath_logo_2 = $request->logo_two_cheat;
        }

        if(isset($request->logo_footer)){
            $dir = 'uploads/logo';
            $file = $request->file('logo_footer');
            $realPath = $request->file('logo_footer')->getRealPath();
            $SaveFilePath_logo_footer = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath_logo_footer = $request->logo_footer_cheat;
        }


        $updateDetails = array (
            'logo'=>$SaveFilePath_Logo,
            'logo_footer' =>$SaveFilePath_logo_footer,
            'logo_two'=>$SaveFilePath_logo_2,
            'favicon'=>$SaveFilePath_Favicon,
        );

        DB::table('_site_settings')->update($updateDetails);
        Session::flash('message', "Changes have Been Saved");
        return Redirect::back();
    }

    // T&Cs Privacy Policies and Copyright Orders
    public function copyright(){
        activity()->log('User Accessed The Copyrights');
        $Copyright = Copyright::all();
        $page_title = 'formfiletext';
        $page_name = 'Copyright';
        return view('admin.editCopyright',compact('page_title','page_name','Copyright'));
    }

    public function edit_copyright(Request $request){
        activity()->log('Update the copyright page');
        $updateDetails = array(
            'content'=>$request->content
        );
        DB::table('copyright')->update($updateDetails);
        Session::flash('message', "Changes have Been Saved");
        return Redirect::back();
    }

    public function addTerms(){
        activity()->log('Access The Add  Terms and Conditions Page');
        $page_name = 'Add Terms & Conditions';
        $page_title = 'formfiletext';
        return view('admin.addTerms',compact('page_title','page_name'));
    }

    public function add_term(Request $request){
        activity()->log('Terms & Condition Added');
        $terms = new Term;
        $terms->title = $request->title;
        $terms->content = $request->content;
        $terms->save();
        Session::flash('message', "Content Has been Added");
        return Redirect::back();
    }

    public function terms(){
        activity()->log('Access The Terms and Conditions Page');
        $page_name = 'Terms & Conditions';
        $Terms = Term::All();
        $page_title = 'list';
        return view('admin.terms',compact('page_title','Terms','page_name'));
    }
    public function editTerm($id){
        activity()->log('Accessed the Edit Terms & Conditions Page');
        $Terms = Term::find($id);
        $page_title = 'formfiletext';//For Style Inheritance
        $page_name = $Terms->title;
        return view('admin.editTerm')->with('Terms',$Terms)->with('page_title',$page_title)->with('page_name',$page_name);
    }

    public function edit_term(Request $request, $id){
        activity()->log('Updated Terms ID number '.$id.' ');
       $updateDetails = array(
           'title'=>$request->title,
           'content' =>$request->content
       );
       DB::table('terms')->where('id',$id)->update($updateDetails);
       Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function delete_term($id){
        activity()->log('Deleted Terms ID number '.$id.' ');
        DB::table('terms')->where('id',$id)->delete();
        return Redirect::back();
    }

    public function addPrivacy(){
        activity()->log('Access The Privacy Policy Page');
        $page_name = 'Add Privacy Policy';
        $page_title = 'formfiletext';//For Style Inheritance
        return view('admin.addPrivacy',compact('page_title','page_name'));
    }

    public function add_privacy(Request $request){
        activity()->log('Access The Add Privacy Page');
        $privacy = new Privacy;
        $privacy->title = $request->title;
        $privacy->content = $request->content;
        $privacy->save();
        Session::flash('message', "Content Has been Added");
        return Redirect::back();
    }

    public function privacy(){
        activity()->log('Accessed The All Privacy Privacy Page');
        $Privacy = Privacy::All();
        $page_name = 'Privacy Policies';
        $page_title = 'list';
        return view('admin.privacy',compact('page_title','Privacy','page_name'));
    }
    public function editPrivacy($id){
        activity()->log('Accessed Edit Privacy Policy ID number '.$id.' ');
        $Privacy = Privacy::find($id);
        $page_name = $Privacy->title;
        $page_title = 'formfiletext';//For Style Inheritance

        return view('admin.editPrivacy')->with('Privacy',$Privacy)->with('page_name',$page_name)->with('page_title',$page_title);
    }

    public function edit_privacy(Request $request, $id){
        activity()->log('Edited Privacy Policy ID number '.$id.' ');
       $updateDetails = array(
           'title'=>$request->title,
           'content' =>$request->content
       );
       DB::table('privacies')->where('id',$id)->update($updateDetails);
       Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function delete_privacy($id){
        activity()->log('Deleted Privacy Policy ID number '.$id.' ');
        DB::table('privacies')->where('id',$id)->delete();
        return Redirect::back();
    }

    public function categories(){
        activity()->log('Accessed All Categories');
        $Category = Category::all();
        $page_title = 'list';
        $page_name = 'Categories';
        return view('admin.categories',compact('page_title','Category','page_name'));
    }

    public function addCategory(){
        activity()->log('Accessed Add Category Page');
        $page_title = 'formfiletext';
        $page_name = 'Add Category';
        return view('admin.addCategory',compact('page_title','page_name'));
    }

    public function add_Category(Request $request){
        activity()->log('Evoked add Category Operation');
        $path = 'uploads/categories';

        if(isset($request->image)){
            $dir = 'uploads/categories';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $Category = new Category;
        $Category->title = $request->title;
        $Category->meta = $request->meta;
        $Category->slung = Str::slug($request->title);
        $Category->content = $request->ckeditor;
        $Category->image = $SaveFilePath;
        $Category->save();
        Session::flash('message', "Category Has Been Added");
        return Redirect::back();
    }

    public function editCategories($id){
        activity()->log('Access Edit Category ID number '.$id.' ');
        $Category = Category::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.editCategory',compact('page_title','Category','page_name'));
    }

    public function edit_Category(Request $request, $id){
        activity()->log('Evoked Edit Category For Category ID number '.$id.' ');

        if(isset($request->image)){
            $dir = 'uploads/categories';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $updateDetails = array(
            'title'=>$request->title,
            'slung' => Str::slug($request->title),
            'meta'=>$request->meta,
            'content'=>$request->ckeditor,
            'image'=>$SaveFilePath

        );
        DB::table('categories')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function deleteCategory($id){
        $Category = Category::find($id);
        activity()->log('Deleted Category '.$Category->title.' ');
        DB::table('categories')->where('id',$id)->delete();
        return Redirect::back();
    }

    // Products
    public function products(){
        activity()->log('Accessed All Products');
        $Product = Product::all();
        $page_title = 'list';
        $page_name = 'Products';
        return view('admin.products',compact('page_title','Product','page_name'));
    }

    public function orders(){
        activity()->log('Accessed All Products');
        $Orders = Order::all();
        $page_title = 'list';
        $page_name = 'Products';
        return view('admin.orders',compact('page_title','Orders','page_name'));
    }

    public function addProduct(){
        $Category = Category::all();
        activity()->log('Accessed Add Product Page');
        $page_title = 'formfiletext';
        $page_name = 'Add Product';
        return view('admin.addProduct',compact('page_title','page_name','Category'));
    }

    public function add_Product(Request $request){
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

        $Product = new Product;
        $Product->title = $request->title;
        $Product->slung = Str::slug($request->title);
        $Product->category_id = $request->category;
        $Product->user_id = $request->user;
        $Product->stock = $request->stock;
        $Product->price_raw = $request->price;
        $Product->price = $request->price;
        $Product->content = $request->content;
        $Product->image = $image_one;
        $Product->save();
        Session::flash('message', "Product Has Been Added");
        return Redirect::back();
    }

    public function editProducts($id){
        $Category = Category::all();
        activity()->log('Access Edit Product ID number '.$id.' ');
        $Product = Product::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.editProduct',compact('page_title','Product','page_name','Category'));
    }

    public function edit_Product(Request $request, $id){
        activity()->log('Evoked Edit Product For Product ID number '.$id.' ');
        $path = 'uploads/products';
            if(isset($request->image_one)){
                $dir = 'uploads/products';
                $file = $request->file('image_one');
                $realPath = $request->file('image_one')->getRealPath();
                $image_one = $this->genericFIleUpload($file,$dir,$realPath);
            }else{
                $image_one = $request->image_one_cheat;
            }

        if($request->stock == 'on'){
            $new_stock = "In Stock";
        }else{
            $new_stock = 'Out Of Stock';
        }

        if($request->featured == 'on'){
            $featured = "1";
        }else{
            $featured = '0';
        }

        if($request->trending == 'on'){
            $trending = "1";
        }else{
            $trending = '0';
        }

        $updateDetails = array(
            'title'=>$request->title,
            'trending'=>$trending,
            'featured'=>$featured,
            'slung' => Str::slug($request->title),
            'content'=>$request->content,
            'user_id'=>$request->user,
            'stock'=>$new_stock,
            'price'=>$request->price,
            'category_id'=>$request->category,
            'image'=>$image_one,
        );
        DB::table('products')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function deleteProduct($id){
        $Product = Product::find($id);
        activity()->log('Deleted Product: '.$Product->title.' ');
        DB::table('products')->where('id',$id)->delete();
        return Redirect::back();
    }

    public function users(){
        activity()->log('Access All users Page');
        $Users = DB::table('users')->get();
        $page_title = 'list';
        $page_name = 'Users';
        return view('admin.users',compact('page_title','Users','page_name'));
    }

    public function managers(){
        activity()->log('Access All users Page');
        $Users = DB::table('users')->where('type','2')->get();
        $page_title = 'list';
        $page_name = 'Users';
        return view('admin.users',compact('page_title','Users','page_name'));
    }

    public function admins(){
        activity()->log('Access All users Page');
        $Users = DB::table('users')->where('type','1')->get();
        $page_title = 'list';
        $page_name = 'Users';
        return view('admin.users',compact('page_title','Users','page_name'));
    }

    public function addUser(){
        activity()->log('Access Addd user Page');
        $page_title = 'formfiletext';
        $page_name = 'Add User';
        return view('admin.addUser',compact('page_title','page_name'));
    }

    public function add_User(Request $request){
        activity()->log('Evoked and add User Operation');
        $path = 'uploads/users';
        if(isset($request->image)){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            $file->move($path, $filename);
            $image = $filename;
        }else{
            $image = "0";
        }

        $Password = $request->mobile;
        $password = Hash::make($Password);
        $User = new User;
        $User->name = $request->name;
        $User->email = $request->email;
        $User->mobile = $request->mobile;
        $User->address = $request->address;
        $User->country = $request->country;
        $User->is_admin = $request->is_admin;
        $User->password = $password;
        $User->image = $image;
        $User->save();
        Session::flash('message', "User Has Been Added");
        return Redirect::back();
    }

    public function editUser($id){
        activity()->log('Edited User ID number '.$id.' ');
        $User = User::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit User';
        return view('admin.editUser',compact('page_title','User','page_name'));
    }

    public function edit_User(Request $request, $id){
        activity()->log('Evoked an edit user for user with ID number '.$id.' ');
        $path = 'uploads/users';
            if(isset($request->image)){
                $file = $request->file('image');
                $filename = $file->getClientOriginalName();
                $file->move($path, $filename);
                $image = $filename;
            }else{
                $image = $request->image_cheat;
            }
        $updateDetails = array(
            'name'=>$request->name,
            'email'=>$request->email,
            'mobile'=>$request->mobile,
            'address'=>$request->address,
            'image'=>$image

        );
        DB::table('users')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function delete_user($id){
        activity()->log('Evoked a Delete user operations for ID number '.$id.' ');
        DB::table('users')->where('id',$id)->delete();
        return Redirect::back();
    }

    // Add Image Proccessing
    public function processImage(){

    }

    // S3
    public function genericFIleUpload($file,$dir,$realPath){
        $filename = $file->getClientOriginalName();
        $store = $file->storeAs(path: ''.$dir.'/'.$filename, options: 's3');
        Storage::disk('s3')->put(''.$dir.'/'.$filename, file_get_contents($realPath));
        // $url = Storage::disk('s3')->temporaryUrl('podcasts/'.$filename,now()->addMinutes(10));
        $SaveFilePath = "https://wakazibucket.s3.eu-central-1.amazonaws.com/$dir/$filename";
        return $SaveFilePath;
    }
}
