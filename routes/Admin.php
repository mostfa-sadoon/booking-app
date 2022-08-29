<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Auth\AuthController;
use App\Http\Controllers\Admin\vehicle\vehicleKindController;
use App\Http\Controllers\Admin\vehicle\vehicleController;
use App\Http\Controllers\Admin\travel\travelController;
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
Route::controller(AuthController::class)->group(function () {
    Route::get('/Admin/login','login');
    Route::Post('/Admin/login','Submitlogin')->name('Admin.login');
});
Route::middleware('AdminAuth')->group(function(){
    Route::resource('vehiclekinds', vehicleKindController::class);
    Route::resource('vehicls', vehicleController::class);
    Route::resource('travels', travelController::class);
});

