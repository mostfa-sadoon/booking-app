<?php

namespace App\Http\Controllers\User\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Redirect;
class AuthController extends Controller
{
    // login view
    public function index(){
        return view('User.Auth.index');
    }
    public function login(Request $request){
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
        $credentials = $request->only('email', 'password');
        if (Auth::guard('web')->attempt($credentials)) {
        	return redirect(Redirect::intended()->getTargetUrl());
        }
        return redirect()->route('user.login');
    }
}
