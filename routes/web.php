<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\HomeController;
use App\Http\Controllers\User\BookingController;
use App\Http\Controllers\User\Auth\AuthController;
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

Route::get('/',[HomeController::class,'index']);
Route::controller(BookingController::class)->group(function () {
    Route::get('/booking/show/travel/{id}','show')->name('travel.show');
});
// login
Route::get('/login',[AuthController::class,'index'])->name('login');
Route::post('/submit/login',[AuthController::class,'login'])->name('user.submit.login');
Route::post('signout/user', [AuthController::class, 'signout'])->name('user.signout');

 Route::middleware('auth')->group(function(){
     Route::controller(BookingController::class)->group(function () {
      Route::get('/booking/slot/travel/{id}','booking')->name('booking.slot');
      Route::get('/cancelbooking/slot/travel/{id}','cancelbooking')->name('cancel.booking');
     });
 });
