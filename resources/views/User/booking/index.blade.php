@extends('user_temp')
@section('styles')
<style>
.slot{
    border: 5px;
    background-color:#e4e9ee;
    margin: 10px;
}
.booking-slot{
    border: 5px;
    background-color:#55a055;
    margin: 10px;
}
</style>
@endsection
@section('content')
<h1 class="text-center">slots</h1>

  <div class="container">
    <div class="row">
        @foreach ($travel->travelslots as $slot)
            @if ($slot->status=="unavailable" && $slot->user_id==Auth::user()->id)
              <div class="col-3 booking-slot">
            @else
            <div class="col-3 slot">
            @endif


             <p>{{$slot->slotsrelation->number}}</p>
             @if ($slot->status=="available" && $userslot==null)
                <a href="{{route('booking.slot',$slot->id)}}" class="btn btn-primary">book</a>
             @endif
             @if ($slot->status=="unavailable" && $slot->user_id==Auth::user()->id)
             <a href="{{route('cancel.booking',$slot->id)}}" class="btn btn-danger">cancel</a>
             @endif
        </div>
  @endforeach
    </div>
  </div>

@endsection
