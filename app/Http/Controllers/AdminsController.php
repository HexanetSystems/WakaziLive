<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use BinaryCats\Sku\HasSku;
use App\Models\Product;
use App\Models\Podcast;
use App\Models\Blog;
use App\Models\Message;
use App\Models\Order;
use App\Models\SubCategory;
use Datetime;
use Hash;
use Session;
use Storage;
use Redirect;
use App\Models\User;
use App\Models\Category;
use App\Models\Main;
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

    public function mains(){
        activity()->log('Accessed All Mains');
        $Main = Main::all();
        $page_title = 'list';
        $page_name = 'Mains';
        return view('admin.mains',compact('page_title','Main','page_name'));
    }

    public function addMain(){
        activity()->log('Accessed Add Main Page');
        $page_title = 'formfiletext';
        $page_name = 'Add Main';
        return view('admin.addMain',compact('page_title','page_name'));
    }

    public function add_Main(Request $request){
        activity()->log('Evoked add Main Operation');
        $path = 'uploads/mains';

        if(isset($request->image)){
            $dir = 'uploads/mains';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $Main = new Main;
        $Main->title = $request->title;
        $Main->slung = Str::slug($request->title);
        $Main->content = $request->ckeditor;
        $Main->image = $SaveFilePath;
        $Main->save();
        Session::flash('message', "Main Has Been Added");
        return Redirect::back();
    }

    public function editMains($id){
        activity()->log('Access Edit Main ID number '.$id.' ');
        $Main = Main::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.editMain',compact('page_title','Main','page_name'));
    }

    public function edit_Main(Request $request, $id){
        activity()->log('Evoked Edit Main For Main ID number '.$id.' ');

        if(isset($request->image)){
            $dir = 'uploads/mains';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $updateDetails = array(
            'title'=>$request->title,
            'slung' => Str::slug($request->title),
            'content'=>$request->ckeditor,
            'image'=>$SaveFilePath

        );
        DB::table('mains')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function deleteMain($id){
        $Main = Main::find($id);
        activity()->log('Deleted Main '.$Main->title.' ');
        DB::table('mains')->where('id',$id)->delete();
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
        $Main = Main::all();
        activity()->log('Accessed Add Category Page');
        $page_title = 'formfiletext';
        $page_name = 'Add Category';
        return view('admin.addCategory',compact('page_title','page_name','Main'));
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
        $Category->main_id = $request->main_id;

        $Category->slung = Str::slug($request->title);
        $Category->content = $request->ckeditor;
        $Category->image = $SaveFilePath;
        $Category->save();
        Session::flash('message', "Category Has Been Added");
        return Redirect::back();
    }

    public function editCategories($id){
        $Main = Main::all();
        activity()->log('Access Edit Category ID number '.$id.' ');
        $Category = Category::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.editCategory',compact('page_title','Category','page_name','Main'));
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
            'main_id'=>$request->main_id,
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


    public function supplier_products($id){
        activity()->log('Accessed All Products');
        $Product = Product::where('UserID',$id)->get();
        $page_title = 'list';
        $page_name = 'Products';
        return view('admin.supplier_products',compact('page_title','Product','page_name','id'));
    }


    // Products
    public function products(){
        activity()->log('Accessed All Products');
        $Product = Product::all();
        $page_title = 'list';
        $page_name = 'Products';
        return view('admin.products',compact('page_title','Product','page_name'));
    }

    public function approve(){
        activity()->log('Accessed All Products');
        $Product = Product::where('status','0')->get();
        $page_title = 'list';
        $page_name = 'Products';
        return view('admin.products-approve',compact('page_title','Product','page_name'));
    }

    public function approve_now($id){
        activity()->log('Approved Product ID: '.$id.'');
        $Product = Product::find($id);
        if($Product->status == 0){
           $newStatus = "1";
        }else{
            $newStatus = "0";
        }
        $updateDetails = array('status'=>$newStatus);
        DB::table('products')->where('id', $id)->update($updateDetails);
        Session::flash('message', "Product Has Been Approved");
        return Redirect::back();
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
        $Product->name = $request->title;
        $Product->main = $request->main;
        $Product->slung = Str::slug($request->title);
        $Product->category = $request->category;
        $Product->sub_category_id = $request->sub_cat;
        $Product->UserID = Auth::User()->id;
        $Product->stock = $request->stock;
        $Product->price_raw = $request->price;
        $Product->price = $request->price;
        $Product->meta = $request->meta;
        $Product->content = $request->content;
        $Product->image_one = $image_one;
        $Product->save();
        Session::flash('message', "Product Has Been Added");
        return Redirect::back();
    }

    public function assignProduct($id){
        $Category = Category::all();
        activity()->log('Access Edit Product ID number '.$id.' ');
        $Product = Product::find($id);
        $Users = User::where('type','3')->get();
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.assignProduct',compact('page_title','Product','page_name','Category','Users'));
    }

    public function assign_Product(Request $request){
        $updateDetails = array(
            'UserID'=>$request->UserID,
        );
        DB::table('products')->where('id',$request->product_id)->update($updateDetails);
        Session::flash('message', "Product Assign Successfully");
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
            'name'=>$request->title,
            'trending'=>$trending,
            'featured'=>$featured,
            'slung' => Str::slug($request->title),
            'content'=>$request->content,
            'main'=>$request->main,
            // 'UserID'=>$request->user,
            'stock'=>$new_stock,
            'price'=>$request->price,
            'category'=>$request->category,
            'image_one'=>$image_one,
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

    public function subcategories(){
        activity()->log('Accessed All SubCategories');
        $Category = SubCategory::all();
        $page_title = 'list';
        $page_name = 'SubCategories';
        return view('admin.subcategories',compact('page_title','Category','page_name'));
    }

    public function addSubCategory(){
        activity()->log('Accessed Add Category Page');
        $page_title = 'formfiletext';
        $page_name = 'Add Category';
        $Category = Category::all();
        return view('admin.addSubCategory',compact('page_title','page_name','Category'));
    }

    public function add_SubCategory(Request $request){
        activity()->log('Evoked add Category Operation');
        $path = 'uploads/subcategories';

        if(isset($request->image)){
            $dir = 'uploads/subcategories';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $Category = new SubCategory;
        $Category->title = $request->title;
        $Category->category_id = $request->category_id;
        $Category->meta = $request->meta;
        $Category->slug = Str::slug($request->title);
        $Category->content = $request->ckeditor;
        $Category->image = $SaveFilePath;
        $Category->save();
        Session::flash('message', "Category Has Been Added");
        return Redirect::back();
    }

    public function editSubCategories($id){
        activity()->log('Access Edit Category ID number '.$id.' ');
        $SubCategory = SubCategory::find($id);
        $Category = Category::all();
        $page_title = 'formfiletext';
        $page_name = 'Edit Home Page Slider';
        return view('admin.editSubCategories',compact('page_title','Category','page_name','SubCategory'));
    }

    public function edit_SubCategory(Request $request, $id){
        activity()->log('Evoked Edit Category For Category ID number '.$id.' ');

        if(isset($request->image)){
            $dir = 'uploads/subcategories';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_cheat;
        }

        $updateDetails = array(
            'title'=>$request->title,
            'slug' => Str::slug($request->title),
            'meta'=>$request->meta,
            'category_id'=>$request->category_id,
            'content'=>$request->ckeditor,
            'image'=>$SaveFilePath
        );
        DB::table('sub_categories')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function deleteSubCategory($id){
        $Category = Category::find($id);
        activity()->log('Deleted Category '.$Category->title.' ');
        DB::table('subcategories')->where('id',$id)->delete();
        return Redirect::back();
    }

    public function get_subcategories(Request $request,$id){
        if ($request->ajax()) {
            $data = SubCategory::where('category_id', $id)->get();
            return response()->json($data);
        }
    }

     // AJAX REQUESTS
     public function addCategoryAjaxRequest(Request $request){
        activity()->log('Evoked an Add Categorgy Request');
       $Category = new Category;
       $Category->title = $request->title;
       $Category->slung = Str::slug($request->title);

       if($Category->save()){
        return response()->json(['success'=>'Category Added Successfully!']);
       }else{
        return response()->json(['success'=>'Something went Wrong!']);
       }

    }

    public function deleteCategoryAjax(Request $request){
        activity()->log('Evoked a delete Categorgy Request');
        $id = $request->id;
        DB::table('categories')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteSubCategoryAjax(Request $request){
        activity()->log('Evoked a delete Sub Categorgy Request');
        $id = $request->id;
        DB::table('sub_categories')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteBlogAjax(Request $request){
        activity()->log('Evoked a delete Blog Request');
        $id = $request->id;
        DB::table('blogs')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteTestimonialAjax(Request $request){
        activity()->log('Evoked a delete Testimonial Request');
        $id = $request->id;
        DB::table('testimonials')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteSliderAjax(Request $request){
        activity()->log('Evoked a delete Slider Request');
        $id = $request->id;
        DB::table('sliders')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteTransactionAjax(Request $request){
        activity()->log('Evoked a delete Transaction Request');
        $id = $request->id;
        DB::table('transaction_status')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteReverseAjax(Request $request){
        activity()->log('Evoked a delete Reverse Transaction Request');
        $id = $request->id;
        DB::table('reverse_transaction')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteSTKAjax(Request $request){
        activity()->log('Evoked a delete STK Transaction Request');
        $id = $request->id;
        DB::table('lnmo_api_response')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteBalAjax(Request $request){
        activity()->log('Evoked a delete Balance Transaction Request');
        $id = $request->id;
        DB::table('accountbalance')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteB2CAjax(Request $request){
        activity()->log('Evoked a delete B2C Transaction Request');
        $id = $request->id;
        DB::table('b2c_api_response')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteB2BAjax(Request $request){
        activity()->log('Evoked a delete B2B Transaction Request');
        $id = $request->id;
        DB::table('b2b_api_response')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteC2BAjax(Request $request){
        activity()->log('Evoked a delete C2B Transaction Request');
        $id = $request->id;
        DB::table('mobile_payments')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteUserAjax(Request $request){
        activity()->log('Evoked a delete User Request');
        $id = $request->id;
        DB::table('users')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteFaqAjax(Request $request){
        activity()->log('Evoked a delete FAQ Request');
        $id = $request->id;
        DB::table('faq')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deletePrivacyAjax(Request $request){
        activity()->log('Evoked a delete Privacy Request');
        $id = $request->id;
        DB::table('privacies')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteTermsAjax(Request $request){
        activity()->log('Evoked a delete Privacy Request');
        $id = $request->id;
        DB::table('terms')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteHowAjax(Request $request){
        activity()->log('Evoked a delete How it works Request');
        $id = $request->id;
        DB::table('hows')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }


    public function deleteCoursesAjax(Request $request){
        activity()->log('Evoked a delete How it works Request');
        $id = $request->id;
        DB::table('courses')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }


    public function deleteTopicsAjax(Request $request){
        activity()->log('Evoked a delete How it works Request');
        $id = $request->id;
        DB::table('topics')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteSignalsAjax(Request $request){
        activity()->log('Evoked a delete How it works Request');
        $id = $request->id;
        DB::table('signals')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }

    public function deleteProductAjax(Request $request){
        activity()->log('Evoked a delete How it works Request');
        $id = $request->id;
        DB::table('products')->where('id',$id)->delete();
        return response()->json(['success'=>'Deleted Successfully!']);
    }



    public function switchSliderAjaxRequest(Request $request){
        $AdsId = $request->TheId;
        $Advertisement = Product::find($AdsId);
        if($Advertisement->slider == 1){
            $newStatus = "0";
        }else{
            $newStatus = "1";
        }
        $updateDetails = array(
            'slider' => $newStatus,
        );
        DB::table('products')->where('id', $AdsId)->update($updateDetails);
        activity()->log('Evoked a Switch Slider Request');
        return response()->json(['success'=>'Status Successfully!']);
    }

    public function artisan_voices(){
        activity()->log('Accessed Add Blog Page');
        $Category = DB::table('categories')->orderBy('id','DESC')->get();
        $page_title = 'formfiletext';//For Layout Inheritance
        $page_name = 'add County Bounty';
        $County = DB::table('voices')->get();
        return view('admin.artisan_voices',compact('page_title','page_name','Category','County'));
    }

    public function county_bounty(){
        activity()->log('Accessed Add Blog Page');
        $County = DB::table('counties')->get();
        $page_title = 'formfiletext';//For Layout Inheritance
        $page_name = 'add County Bounty';
        return view('admin.county_bounty',compact('page_title','page_name','County'));
    }


    public function update_county_bounty(Request $request){
        activity()->log('Update County Bounty');
        $category = $request->cat;
        $path = 'uploads/county';
        if(isset($request->image)){
            $dir = 'uploads/county';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->pro_img_cheat;
        }

        if(isset($request->video)){
            $dir = 'uploads/county';
            $file = $request->file('video');
            $realPath = $request->file('video')->getRealPath();
            $SaveFilePathVideo = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePathVideo = $request->pro_vid_cheat;
        }
        $updateDetails = array(
            'meta'=>$request->meta,
            'video'=>$SaveFilePathVideo,
            'content'=>$request->ckeditor,
            'image'=>$SaveFilePath,
        );

        DB::table('counties')->update($updateDetails);
        Session::flash('message', "Post Saved Successfully");
        return Redirect::back();
    }

    public function update_artisan_voices(Request $request){
        activity()->log('Update County Bounty');
        $category = $request->cat;
        $path = 'uploads/voices';
        if(isset($request->image)){
            $dir = 'uploads/voices';
            $file = $request->file('image');
            $realPath = $request->file('image')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->pro_img_cheat;
        }

        // if(isset($request->video)){
        //     $dir = 'uploads/voices';
        //     $file = $request->file('video');
        //     $realPath = $request->file('video')->getRealPath();
        //     $SaveFilePathVideo = $this->genericFIleUpload($file,$dir,$realPath);
        // }else{
        //     $SaveFilePathVideo = $request->pro_vid_cheat;
        // }
        $updateDetails = array(
            'meta'=>$request->meta,

            'content'=>$request->ckeditor,
            'image'=>$SaveFilePath,
        );

        DB::table('voices')->update($updateDetails);
        Session::flash('message', "Post Saved Successfully");
        return Redirect::back();
    }

    public function addBlog(){
        activity()->log('Accessed Add Blog Page');
        $Category = DB::table('categories')->orderBy('id','DESC')->get();
        $page_title = 'formfiletext';//For Layout Inheritance
        $page_name = 'add Blog';
        return view('admin.addBlog',compact('page_title','page_name','Category'));
    }

    public function add_blog(Request $request){
        activity()->log('Evoked an add Blog Operation');
        $title = $request->title;
        $description = $request->content;



        $category = $request->cat;
        $path = 'uploads/blogs';
        if(isset($request->image_one)){
            $dir = 'uploads/blogs';
            $file = $request->file('image_one');
            $realPath = $request->file('image_one')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->pro_img_cheat;
        }


        $blog = new Blog;
        $blog->title = $request->title;
        $blog->type = $request->type;
        $blog->meta = $request->meta;
        $blog->video = $request->video_url;
        // $blog->podcast_url = $request->podcast_url;
        $blog->slung = Str::slug($request->title);
        $blog->content = $request->ckeditor;
        $blog->author = Auth::User()->id;
        $blog->category = $request->category;
        $blog->image_one = $SaveFilePath;
        $blog->save();
        Session::flash('message', "Post Saved Successfully");
        return Redirect::back();
    }

    public function blog(){
        activity()->log('Accessed the all blogs page ');
        $Blog = Blog::orderBy('id','DESC')->get();
        $page_title = 'list';
        $page_name = 'Blog';
        return view('admin.blog',compact('page_title','Blog','page_name'));
    }

    public function editBlog($id){
        activity()->log('Accessed Edit Blog For Blog ID number '.$id.' ');
        $Category = DB::table('categories')->orderBy('id','DESC')->get();
        $Blog = Blog::find($id);
        $page_title = 'formfiletext';
        $page_name = 'Edit Blog';
        return view('admin.editBlog',compact('page_title','Blog','page_name','Category'));
    }


    public function edit_Blog(Request $request, $id){
        activity()->log('Evoked an Edit Blog Operation For Blog ID number '.$id.' ');
        $path = 'uploads/blogs';
        if(isset($request->image_one)){
            $dir = 'uploads/blogs';
            $file = $request->file('image_one');
            $realPath = $request->file('image_one')->getRealPath();
            $SaveFilePath = $this->genericFIleUpload($file,$dir,$realPath);
        }else{
            $SaveFilePath = $request->image_one_cheat;
        }

        $updateDetails = array(
            'title' => $request->title,
            'type' => $request->type,
            'meta' => $request->meta,
            'slung' => Str::slug($request->title),
            'content' => $request->ckeditor,
            'author' => Auth::user()->id,
            'category' => $request->category,
            'image_one' =>$SaveFilePath,
        );
        DB::table('blogs')->where('id',$id)->update($updateDetails);
        Session::flash('message', "Changes have been saved");
        return Redirect::back();
    }

    public function delete_Blog($id){
        activity()->log('Deleted Blog With ID number '.$id.' ');
        DB::table('blogs')->where('id',$id)->delete();
        Session::flash('message', "Post Deleted Successfully");
        return Redirect::back();
    }

    // Add Image Proccessing
    public function processImage(){

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
