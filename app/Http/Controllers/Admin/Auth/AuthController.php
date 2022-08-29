<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class AuthController extends Controller
{
    //
    public function login(){
        return view('Admin.Auth.login');
    }
    public function Submitlogin(Request $request){
        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
        $credentials = $request->only('email', 'password');
        if (Auth::guard('Admin')->attempt($credentials)) {

            return view('Admin.dashboard.index');
        }
        return redirect("/Admin/login")->with('error','Login details are not valid');
    }
}
