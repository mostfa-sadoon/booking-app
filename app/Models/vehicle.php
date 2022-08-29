<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class vehicle extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function kind()
    {
        return $this->belongsTo(vehicleKind::class, 'vehicle_kind_id');
    }
    public function slotsrelation()
    {
        return $this->hasMany(slot::class);
    }
}
