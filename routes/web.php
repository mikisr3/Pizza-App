<?php

use Illuminate\Support\Facades\Route;

use App\Models\Listing;

use App\Http\Controllers\ListingController;

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
   




Route::get('/listings/create',[ListingController::class,'create']);

Route::post('/listings',[ListingController::class,'store']);

Route::post('/listings/{id}/edit',[ListingController::class,'edit']);







Route::get('/listings/{id}',[ListingController::class,'show']);



    


