<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/stk-callback', [App\Http\Controllers\KcbController::class, 'stkCallback'])->name('stk-callback');
