@extends('user_temp')
@section('content')
     <h1 class="text-center">availabe travel</h1>
<table class="table">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col">from</th>
        <th scope="col">to</th>
        <th scope="col">vihcle</th>
        <th scope="col">all slots</th>
        <th scope="col">available slots</th>
        <th scope="col">start</th>
        <th scope="col">end</th>
        <th scope="col">actions</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($travels as $key=>$travel)
        <tr>
            <th scope="row">{{$key+1}}</th>
            <td>{{$travel->from}}</td>
            <td>{{$travel->to}}</td>
            <td>{{$travel->vehicle->name}}</td>
            <td>{{$travel->slots}}</td>
            <td></td>
            <td>{{$travel->start_date}}</td>
            <td>{{$travel->end_date}}</td>
            <td>
                <a href="{{route('travel.show',$travel->id)}}"><i class="fas fa-trash-alt"></i>booking here</a>
                <a href=""><i class="fas fa-edit"></i></a>
            </td>
          </tr>
        @endforeach


    </tbody>
  </table>
@endsection
