<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\travel;

class HomeController extends Controller
{
    //
    public function index(){
        $travels=travel::get();
        return view('User.Home.index',compact('travels'));
    }
}
