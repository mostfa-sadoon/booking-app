<?php

namespace App\Http\Controllers\Admin\vehicle;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\vehicleKind;
use App\Models\vehicle;
use App\Models\slot;


class vehicleController extends Controller
{
    //
    public function index(){
        $vehicleKinds=vehicleKind::get();
        $vehicles=vehicle::with('kind')->get();
      return view('Admin.vehicle.index',compact('vehicleKinds','vehicles'));
    }
    public function store(Request $request){
       $request->validate([
        'name' => 'required',
        'number' => 'required',
        ]);
        DB::transaction(function()use($request)
        {
          $vehicle=  vehicle::create([
              'name'=>$request->name,
              'vehiclenumber'=>$request->number,
              'vehicle_kind_id'=>$request->kind,
              'slots'=>$request->slots
            ]);
            for($i=0; $i<$request->slots;$i++){
                slot::create([
                   'vehicle_id'=>$vehicle->id,
                   'number'=>$i+1,
                ]);
            }
        });
        return redirect()->route('vehicls.index');
    }
}
