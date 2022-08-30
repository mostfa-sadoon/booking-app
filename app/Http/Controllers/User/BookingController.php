<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\travelslot;
use App\Models\travel;
use Auth;

class BookingController extends Controller
{
    //
    public function show($id){
          $travel=travel::with('travelslots.slotsrelation')->find($id);
          $userslot=travelslot::where('user_id','=',Auth::user()->id)->first();
          return view('User.booking.index',compact('travel','userslot'));
    }
    public function booking($id){
        $userslot=travelslot::where('user_id','=',Auth::user()->id)->first();
        if($userslot==null){
            $slot=travelslot::find($id);
            $slot->update([
                'status'=>'unavailable',
                'user_id'=>Auth::user()->id,
             ]);
        }
       return redirect()->route('travel.show',$slot->travel_id);
    }
    public function cancelbooking($id){
        $slot=travelslot::find($id);
        $slot->update([
            'status'=>'available',
            'user_id'=>null,
         ]);
       return redirect()->route('travel.show',$slot->travel_id);
    }
}
