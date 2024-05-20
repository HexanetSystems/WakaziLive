<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ManagerController;



Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



Auth::routes();
Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');


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

    Route::get('/home', [UserController::class, 'index'])->name('home');
});

/*------------------------------------------
--------------------------------------------
All Users Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:supplier'])->group(function () {

    Route::get('/supplier/home', [SupplierController::class, 'index'])->name('supplier.home');
});


/*------------------------------------------
--------------------------------------------
All Admin Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:admin'])->group(function () {

    Route::get('/admin/home', [AdminController::class, 'adminHome'])->name('admin.home');
});

/*------------------------------------------
--------------------------------------------
All Admin Routes List
--------------------------------------------
--------------------------------------------*/
Route::middleware(['auth', 'user-access:manager'])->group(function () {

    Route::get('/manager/home', [ManagerController::class, 'managerHome'])->name('manager.home');
});
