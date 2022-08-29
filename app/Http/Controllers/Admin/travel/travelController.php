<?php

namespace App\Http\Controllers\Admin\travel;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\vehicle;
use App\Models\travel;
use App\Models\slot;
use App\Models\travelslot;
use Illuminate\Support\Facades\DB;


class travelController extends Controller
{
    //
    public function index(){
        $vehicles=vehicle::get();
        $travels=travel::with('vehicle')->get();
        return view('Admin.travel.index',compact('vehicles','travels'));
    }
    public function store(Request $request){
        DB::transaction(function()use($request)
        {
        $vehicle=vehicle::with('slotsrelation')->find($request->vehicle);
        $travel= travel::create([
           'vehicle_id'=>$request->vehicle,
           'price'=>$request->price,
           'from'=>$request->from,
           'slots'=>$vehicle->slots,
           'to'=>$request->to,
           'start_date'=>$request->start,
           'end_date'=>$request->end,
        ]);
        foreach($vehicle->slotsrelation as $key=>$slot){
            travelslot::create([
              'vehicle_id'=>$request->vehicle,
              'slots_id'=>$slot->id,
               'travel_id'=>$travel->id,
            ]);
        }
       });
       return redirect()->route('travels.index');
    }
}
