<?php

namespace App\Http\Controllers\Admin\vehicle;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\vehicleKind;
class vehicleKindController extends Controller
{
    //
    public function index(){
        $vehicleKinds=vehicleKind::get();
        return view('Admin.vehiclekinds.index',compact('vehicleKinds'));
    }
    public function store(Request $request){
        $request->validate([
            'name' => 'required',
        ]);
        vehicleKind::create([
            'name'=>$request->name,
        ]);
        return redirect()->route('vehiclekinds.index');
    }
}
