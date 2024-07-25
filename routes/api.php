<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/stk-callback', [App\Http\Controllers\KcbController::class, 'stkCallback'])->name('stk-callback');

// KCB
Route::get('/access-token', [App\Http\Controllers\KcbController::class, 'generateAccessToken'])->name('access-token');
Route::get('/stk-request', [App\Http\Controllers\KcbController::class, 'stkRequest'])->name('stk-request');
Route::get('/stk-request-ken', [App\Http\Controllers\KcbController::class, 'tryKen'])->name('stk-request-ken');
Route::post('/make-stk-request', [App\Http\Controllers\KcbController::class, 'stkRequestMake'])->name('make-stk-request');
