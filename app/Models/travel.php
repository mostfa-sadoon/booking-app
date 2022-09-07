<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Scopes\slotcountScope;

class travel extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table="travels";
    public function vehicle()
    {
        return $this->belongsTo(vehicle::class,'vehicle_id');
    }
    public function travelslots(){
        return $this->hasMany(travelslot::class);
    }
    // this function is glopal scope to make constrain in all queries in model
    // protected static function booted()
    // {
    //     static::addGlobalScope(new slotcountScope);
    // }
}
