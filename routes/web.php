<?php

use Illuminate\Support\Facades\Route;

use App\Models\Listing;

use App\Http\Controllers\ListingController;

use App\Http\Controllers\UserController;

use App\Http\Controllers\Orders;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// index - show all listings
// show - show single listing
// create - show form to create new listing
// store - store new listing
// edit - show form to edit listing
// update - update listing
// destroy - delete listing

//All Listings

Route::get('/',[ListingController::class,'index']);
   




Route::get('/listings/create',[ListingController::class,'create'])->middleware('auth');

Route::post('/listings',[ListingController::class,'store']);

Route::get('/listings/{id}/edit',[ListingController::class,'edit'])->middleware('auth');

Route::put('/listings/{id}',[ListingController::class,'update']);

Route::delete('/listings/{id}',[ListingController::class,'destroy'])->middleware('auth');

Route::get('/listings/manage',[ListingController::class,'manage'])->middleware('auth');

Route::get('/listings/orders',[Orders::class,'orders'])->middleware('auth');

Route::get('/ajaxCall',[ListingController::class,'ajaxCall'])->middleware('guest');

Route::post('/CurrencyCall',[ListingController::class,'CurrencyCall'])->middleware('guest');

Route::get('/ajaxCallMinus',[ListingController::class,'ajaxCallMinus'])->middleware('guest');

Route::get('/deleteAttr',[ListingController::class,'deleteAttr'])->middleware('guest');

Route::get('/deleteAttrAll',[ListingController::class,'deleteAttrAll'])->middleware('guest');


Route::get('/ajaxCallCart',[ListingController::class,'ajaxCallCart'])->middleware('guest');

Route::get('/ajaxCallCartMinus',[ListingController::class,'ajaxCallCartMinus'])->middleware('guest');

Route::get('/view-cart',[ListingController::class,'viewCart'])->middleware('guest');









Route::get('/listings/{id}',[ListingController::class,'show']);


Route::get('/register',[UserController::class,'create'])->middleware('guest');

Route::get('/checkout',[ListingController::class,'checkout'])->middleware('guest');

Route::post('/buynow',[Orders::class,'store'])->middleware('guest');


//Create New User

Route::post('/users',[UserController::class,'store']);

//Logout

Route::post('/logout',[UserController::class,'logout'])->middleware('auth');

//Show Login Form 

Route::get('/login',[UserController::class,'login'])->name('login');

//Log in User

Route::post('/users/authenticate',[UserController::class,'authenticate']);
















    



