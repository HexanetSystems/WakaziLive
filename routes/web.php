<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\AdminsController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\KcbController;



Route::get('/', [App\Http\Controllers\HomeController::class, 'home'])->name('home');
Route::get('/instagram-feeds', [App\Http\Controllers\HomeController::class, 'instagram'])->name('instagram-feeds');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home-page');

Route::get('/product/{slung}', [App\Http\Controllers\HomeController::class, 'product'])->name('home-product');
Route::get('/products/{slung}', [App\Http\Controllers\HomeController::class, 'category'])->name('home-category');
Route::get('/products-class/{slung}', [App\Http\Controllers\HomeController::class, 'category_class'])->name('products-class');

Route::get('/login-select', [HomeController::class, 'select'])->name('login-select');
Route::get('/cart/shopping-cart', [HomeController::class, 'cart'])->name('shopping-cart');
Route::get('/add-to-cart/{id}', [HomeController::class, 'addToCart'])->name('add-to-cart');
Route::get('/cart/remove-item/{id}', [HomeController::class, 'removeCart'])->name('remove-item');
Route::post('/cart/custom-register', [HomeController::class, 'register'])->name('custom-register');
Route::get('/cart/checkout/post-order', [HomeController::class, 'post_order'])->name('post-order');

Route::post('/search-product', [HomeController::class, 'search'])->name('search-product');

Route::get('/news-updates', [HomeController::class, 'updates'])->name('news-updates');
Route::get('/news-updates/{slung}', [HomeController::class, 'update'])->name('news-update');
Route::get('/county-bounty', [HomeController::class, 'county'])->name('county-bounty');
Route::get('/artisan-voices', [HomeController::class, 'voices'])->name('artisan-voices');

Route::post('/stk-callback', [App\Http\Controllers\KcbController::class, 'stkCallback'])->name('stk-callback');


Route::post('/add-to-cart', [HomeController::class, 'addToCartPost'])->name('add-to-cart-ajax');

Route::get('/privacy-policy', [App\Http\Controllers\HomeController::class, 'privacy'])->name('privacy-policy');
Route::get('/instagram-auth-success', [App\Http\Controllers\HomeController::class, 'index'])->name('instagram-auth-success');
// Route::get('/instagram/auth/callback', [App\Http\Controllers\HomeController::class, 'index'])->name('instagram/auth/callback');
Route::get('/terms-and-conditions', [App\Http\Controllers\HomeController::class, 'terms'])->name('terms-and-conditions');

Auth::routes();
Route::get('/cart/checkout', [HomeController::class, 'checkout'])->name('shopping-cart-checkout');


Route::get('/verify', [App\Http\Controllers\KcbController::class, 'verify'])->name('verify');


Route::get('/access-token', [App\Http\Controllers\KcbController::class, 'generateAccessToken'])->name('access-token');
Route::get('/stk-request', [App\Http\Controllers\KcbController::class, 'stkRequest'])->name('stk-request');
Route::get('/stk-request-ken', [App\Http\Controllers\KcbController::class, 'tryKen'])->name('stk-request-ken');
Route::post('/make-stk-request', [App\Http\Controllers\KcbController::class, 'stkRequestMake'])->name('make-stk-request');


// Auth
Route::controller(GoogleController::class)->group(function(){
    Route::get('auth/google', 'redirectToGoogle')->name('auth.google');
    Route::get('auth/google/callback', 'handleGoogleCallback');
});

/*------------------------------------------
--------------------------------------------
All Users Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:user'])->group(function () {
    Route::group(['prefix' => '/dashboard'], function () {
        Route::get('/', [UserController::class, 'index'])->name('dashboard');
        Route::get('/account-orders', [UserController::class, 'orders'])->name('account-orders');
        Route::get('/account-order/{id}', [UserController::class, 'order'])->name('account-order');

        Route::get('/account-address', [UserController::class, 'address'])->name('account-address');
        Route::get('/account-profile', [UserController::class, 'profile'])->name('account-profile');
        Route::post('/account-profile', [UserController::class, 'profile_save'])->name('account-profile-save');
        Route::get('/cancel-order/{id}', [UserController::class, 'cancel'])->name('cancel-order');

        Route::get('/thankYou', [UserController::class, 'thankYou'])->name('thankYou');

    });
});
Route::get('/become-supplier', [App\Http\Controllers\HomeController::class, 'become_supplier'])->name('become-supplier');
Route::post('/become-supplier-proceed', [App\Http\Controllers\HomeController::class, 'become_supplier_post'])->name('become-supplier-post');

/*------------------------------------------
--------------------------------------------
All Suppliers Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:supplier'])->group(function () {
    Route::group(['prefix' => '/supplier'], function () {
      Route::get('/home', [SupplierController::class, 'index'])->name('supplier.home');
      // Route for my orders
      Route::get('/my-orders', [SupplierController::class, 'myOrders'])->name('supplier.my-orders');
      // Route for my orders
      Route::get('/my-orders/{id}', [SupplierController::class, 'orderDetails'])->name('supplier.order-details');
      Route::get('/my-orders/status/pending', [SupplierController::class, 'orderDetails'])->name('supplier.order-status-pending');
      Route::get('/my-orders/status/completed', [SupplierController::class, 'orderDetails'])->name('supplier.order-status-completed');

      //My products Routes
      Route::get('/my-products', [SupplierController::class, 'myProducts'])->name('supplier.my-products');
      Route::get('upload-ui/{id}', [SupplierController::class, 'uploadUi' ]);
      Route::post('file-upload', [SupplierController::class, 'FileUpload' ])->name('FileUpload');
      Route::get('/add-product', [SupplierController::class, 'addProduct'])->name('supplier.add-product');
      Route::post('/add-product', [SupplierController::class, 'addProductPost'])->name('supplier.add-product');
      Route::get('/edit-product/{id}', [SupplierController::class, 'editProduct'])->name('supplier.edit-product');
      Route::post('/edit-Product/{id}', [SupplierController::class, 'editProductPost'])->name('supplier.edit-product-post');

      Route::get('/profile/products', [SupplierController::class, 'supplierProducts'])->name('supplier.profile.products');
    //   delete product
      Route::get('/delete-product/{id}',[SupplierController::class, 'deleteProducts'])->name('supplier.delete.product');

    //   my-profile
    Route::get('/edit-product/{id}', [SupplierController::class, 'editProduct'])->name('supplier.edit-product');
      Route::post('/edit-Product/{id}', [SupplierController::class, 'editProductPost'])->name('supplier.edit-product-post');

      //Three routes invoices, my payments and Make payments
      Route::get('/my-invoices', [SupplierController::class, 'myInvoices'])->name('supplier.my-invoices');
      Route::get('/my-payments', [SupplierController::class, 'myPayments'])->name('supplier.my-payments');
      Route::get('/make-payment', [SupplierController::class, 'makePayment'])->name('supplier.make-payment');
      Route::post('/make-payment', [SupplierController::class, 'makePayment'])->name('supplier.make-payment');
      Route::get('/make-payment', [SupplierController::class, 'makePayment'])->name('supplier.commisions');

      Route::get('/my-profile', [SupplierController::class, 'my_profile'])->name('my-profile');
      Route::post('/update-my-profile', [SupplierController::class, 'my_profile_update'])->name('update-my-profile');

      Route::get('/update-logo', [SupplierController::class, 'my_logo'])->name('update-logo');
      Route::post('/update-my-logo', [SupplierController::class, 'my_logo_update'])->name('update-my-logo');


      //terms and conditions
      Route::get('/terms', [SupplierController::class, 'terms'])->name('supplier.terms');
      Route::get('/privacy', [SupplierController::class, 'privacy'])->name('supplier.privacy');








    });
});


/*------------------------------------------
--------------------------------------------
All Admin Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:manager'])->group(function () {

    Route::get('/manager/home', [ManagerController::class, 'managerHome'])->name('manager.home');
});

/*------------------------------------------
--------------------------------------------
All Admin Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:admin'])->group(function () {
    Route::group(['prefix' => '/admin'], function () {
         Route::get('/', [AdminsController::class, 'adminHome'])->name('admin.home');

         // SiteSettings
        Route::get('credentials', [AdminsController::class, 'systemsCredentials']);
        Route::get('SiteSettings', [AdminsController::class, 'SiteSettings']);
        Route::get('SocialMediaSettings', [AdminsController::class, 'SocialMediaSettings']);
        Route::get('logo-and-favicon', [AdminsController::class, 'logo_and_favicon']);
        Route::post('logo-and-favicon-update', [AdminsController::class, 'logo_and_favicon_update']);

        // Terms and Conditions
        Route::get('terms', [AdminsController::class, 'terms']);
        Route::get('addTerms', [AdminsController::class, 'addTerms']);
        Route::get('editTerm/{id}', [AdminsController::class, 'editTerm']);
        Route::post('add_term', [AdminsController::class, 'add_term']);
        Route::post('edit_term/{id}', [AdminsController::class, 'edit_term']);
        Route::get('delete_term/{id}', [AdminsController::class, 'delete_term']);

        // Privacy Policy
        Route::get('privacy', [AdminsController::class, 'privacy']);
        Route::get('addPrivacy', [AdminsController::class, 'addPrivacy']);
        Route::get('editPrivacy/{id}', [AdminsController::class, 'editPrivacy']);
        Route::post('add_privacy', [AdminsController::class, 'add_privacy']);
        Route::post('edit_privacy/{id}', [AdminsController::class, 'edit_privacy']);
        Route::get('delete_privacy/{id}', [AdminsController::class, 'delete_privacy']);

        Route::get('/get-subcategories/{id}',  [AdminsController::class, 'get_subcategories']);

        // Copyright Statement
        Route::get('editCopyright', [AdminsController::class, 'copyright']);
        Route::post('edit_Copyright', [AdminsController::class, 'edit_copyright']);

        // About Us
        Route::get('editAbout', [AdminsController::class, 'about']);
        Route::post('edit_About', [AdminsController::class, 'edit_about']);

         // Categories
         Route::get('categories', [AdminsController::class, 'categories']);
         Route::get('addCategory', [AdminsController::class, 'addCategory']);
         Route::post('add_Category', [AdminsController::class, 'add_Category']);
         Route::get('editCategories/{id}', [AdminsController::class, 'editCategories']);
         Route::get('extras/{id}', [AdminsController::class, 'extras']);
         Route::post('edit_Category/{id}', [AdminsController::class, 'edit_Category']);
         Route::get('deleteCategory/{id}', [AdminsController::class, 'deleteCategory']);

        // Mains
        Route::get('mains', [AdminsController::class, 'mains']);
        Route::get('addMain', [AdminsController::class, 'addMain']);
        Route::post('add_Main', [AdminsController::class, 'add_Main']);
        Route::get('editMains/{id}', [AdminsController::class, 'editMains']);
        Route::post('edit_Main/{id}', [AdminsController::class, 'edit_Main']);
        Route::get('deleteMain/{id}', [AdminsController::class, 'deleteMain']);

        // SubCategories
        Route::get('subcategories', [AdminsController::class, 'subcategories']);
        Route::get('addSubCategory', [AdminsController::class, 'addSubCategory']);
        Route::post('add_SubCategory', [AdminsController::class, 'add_SubCategory']);
        Route::get('editSubCategories/{id}', [AdminsController::class, 'editSubCategories']);
        Route::get('extras/{id}', [AdminsController::class, 'extras']);
        Route::post('edit_SubCategory/{id}', [AdminsController::class, 'edit_SubCategory']);
        Route::get('deleteSubCategory/{id}', [AdminsController::class, 'deleteSubCategory']);

        // Products
        Route::get('product-approve', [AdminsController::class, 'approve']);
        Route::get('approve-product/{id}', [AdminsController::class, 'approve_now']);
        Route::get('products', [AdminsController::class, 'products']);
        Route::get('addProduct', [AdminsController::class, 'addProduct']);
        Route::post('add_Product', [AdminsController::class, 'add_Product']);
        Route::get('editProducts/{id}', [AdminsController::class, 'editProducts']);
        Route::post('edit_Product/{id}', [AdminsController::class, 'edit_Product']);
        Route::get('deleteProduct/{id}', [AdminsController::class, 'deleteProduct']);

        Route::get('assignProduct/{id}', [AdminsController::class, 'assignProduct']);
        Route::post('assign-Product', [AdminsController::class, 'assign_Product']);

        //supplier products
        Route::get('supplier-products/{id}', [AdminsController::class, 'supplier_products'])->name('supplier-products');



        Route::get('product-approve', [AdminsController::class, 'approve'])->name('product-approve');


        // Blog
        Route::get('blog', [AdminsController::class, 'blog']);
        Route::get('addBlog', [AdminsController::class, 'addBlog']);
        Route::post('add_Blog', [AdminsController::class, 'add_Blog']);
        Route::get('editBlog/{id}', [AdminsController::class, 'editBlog']);
        Route::post('edit_Blog/{id}', [AdminsController::class, 'edit_Blog']);
        Route::get('delete_Blog/{id}', [AdminsController::class, 'delete_Blog']);

        // Payments
        Route::get('b2b', [AdminsController::class, 'b2b']);
        Route::get('b2c', [AdminsController::class, 'b2c']);
        Route::get('lnmo_api_response', [AdminsController::class, 'lnmo_api_response']);
        Route::get('mobile_payments', [AdminsController::class, 'mobile_payments']);
        Route::get('reverse_transaction', [AdminsController::class, 'reverse_transaction']);
        Route::get('transaction_status', [AdminsController::class, 'transaction_status']);
        Route::get('accountbalance', [AdminsController::class, 'accountbalance']);
        Route::get('approve-transaction/{id}', [AdminsController::class, 'approve_transaction']);
        Route::get('approve-transaction-stk/{id}', [AdminsController::class, 'approve_transaction_stk']);

        //Manage Users
        Route::get('users', [AdminsController::class, 'users']);
        Route::get('admins', [AdminsController::class, 'admins']);
        Route::get('managers', [AdminsController::class, 'managers']);
        Route::get('addUser', [AdminsController::class, 'addUser']);
        Route::get('editUser/{id}', [AdminsController::class, 'editUser']);
        Route::post('add_User', [AdminsController::class, 'add_User']);
        Route::post('edit_User/{id}', [AdminsController::class, 'edit_User']);
        Route::get('delete_user/{id}', [AdminsController::class, 'delete_user']);
        Route::get('switchRole/{id}', [AdminsController::class, 'switchRole']);
        Route::get('switchStatus/{id}', [AdminsController::class, 'switchStatus']);
        Route::get('slungify', [AdminsController::class, 'slungify']);



        // Orders
        Route::get('orders', [AdminsController::class, 'orders']);
        Route::get('process-order', [AdminsController::class, 'process_order']);

        Route::get('county-bounty', [AdminsController::class, 'county_bounty']);
        Route::get('artisan-voices', [AdminsController::class, 'artisan_voices']);
        Route::post('update-county-bounty', [AdminsController::class, 'update_county_bounty'])->name('update-county-bounty');
        Route::post('update-artisan-voices', [AdminsController::class, 'update_artisan_voices'])->name('update-artisan-voices');


        // AJAX REQUESTS
        Route::post('addCategoryAjaxRequest', [AdminsController::class, 'addCategoryAjaxRequest']);
        Route::post('deleteExtraAjax', [AdminsController::class, 'deleteExtraAjaxRequest']);
        Route::post('deleteBlogAjax', [AdminsController::class, 'deleteBlogAjax']);
        Route::put('updateSiteSettingsAjax', [AdminsController::class, 'updateSiteSettingsAjax']);
        Route::put('updateSiteSocialMediaAjax', [AdminsController::class, 'updateSiteSocialMediaAjax']);
        Route::post('deleteSubCategoryAjax', [AdminsController::class, 'deleteSubCategoryAjax']);


        Route::post('switchSliderAjaxRequest', [AdminsController::class, 'switchSliderAjaxRequest']);
        Route::post('deleteCategoryAjax', [AdminsController::class, 'deleteCategoryAjax']);
        Route::post('deleteC2BAjax', [AdminsController::class, 'deleteC2BAjax']);
        Route::post('deleteB2BAjax', [AdminsController::class, 'deleteB2BAjax']);
        Route::post('deleteB2CAjax', [AdminsController::class, 'deleteB2CAjax']);
        Route::post('deleteBalAjax', [AdminsController::class, 'deleteBalAjax']);
        Route::post('deleteSTKAjax', [AdminsController::class, 'deleteSTKAjax']);
        Route::post('deleteReverseAjax', [AdminsController::class, 'deleteReverseAjax']);
        Route::post('deleteTransactionAjax', [AdminsController::class, 'deleteTransactionAjax']);
        Route::post('deleteUserAjax', [AdminsController::class, 'deleteUserAjax']);
        Route::post('deletePrivacyAjax', [AdminsController::class, 'deletePrivacyAjax']);
        Route::post('deleteTermsAjax', [AdminsController::class, 'deleteTermsAjax']);
        Route::post('deleteProductAjax', [AdminsController::class, 'deleteProductAjax']);
        //clean facebook pixels
        Route::get('addProductToFacebookPixel', [AdminsController::class, 'addProductToFacebookPixel']);
        Route::get('emptyProductToFacebookPixel', [AdminsController::class, 'emptyProductToFacebookPixel']);
        Route::get('image-upload', [ ImageUploadController::class, 'imageUpload' ])->name('image.upload');
        Route::post('image-upload', [ ImageUploadController::class, 'imageUploadPost' ])->name('image.upload.post');

    });
});
