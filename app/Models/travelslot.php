<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class travelslot extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function slotsrelation()
    {
        return $this->belongsTo(slot::class,'slots_id');
    }
}
