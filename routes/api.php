<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Auth::routes();
Route::post('/stk-callback', [App\Http\Controllers\KcbController::class, 'stkCallback'])->name('stk-callback');

