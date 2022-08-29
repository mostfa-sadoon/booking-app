@extends('admin_temp')
@section('content')
  <!-- Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<div class="row page-titles">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">travels</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">travels</a></li>
            <li class="breadcrumb-item active">show</li>
        </ol>
    </div>
    <div class="">
        <button class="right-side-toggle waves-effect waves-light btn-inverse btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<div class="justify-content-start">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">add travel</button>
</div>


<x-adddata>
    <x-slot:id>
        exampleModal
    </x-slot>
    <x-slot:title>
       Add travel
    </x-slot>
    <x-slot:body>
       <form method="post" action="{{route('travels.store')}}">
         @csrf
         <div class="form-group">
            <label>start</label>
            <input type="datetime-local" name="start" class="form-control">
         </div>
         <div class="form-group">
            <label>end</label>
            <input type="datetime-local" name="end" class="form-control">
         </div>
         <div class="form-group">
            <label>peice</label>
            <input type="text" name="price" class="form-control">
         </div>
            <div class="form-group">
                <label>select vehicle</label>
                <select class="form-control" id="exampleFormControlSelect1" name="vehicle">
                    @foreach ($vehicles as $vehicle)
                       <option value="{{$vehicle->id}}">{{$vehicle->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>from</label>
                <select class="form-control" id="exampleFormControlSelect1" name="from">
                    <option value="zagazige">zagazige</option>
                    <option value="Alex">Alex</option>
                    <option value="Cairo">Cairo</option>
                  </select>
            </div>
            <div class="form-group">
                <label>to</label>
                <select class="form-control" id="exampleFormControlSelect1" name="to">
                    <option value="zagazige">zagazige</option>
                    <option value="Alex">Alex</option>
                    <option value="Cairo">Cairo</option>
                  </select>
            </div>
    </x-slot>
    <x-slot:footer>
        <input type="submit" value="Add" class="btn btn-primary">
        </form>
    </x-slot>
</x-adddata>

  <table class="table">
    <thead class="thead-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col">from</th>
        <th scope="col">to</th>
        <th scope="col">vihcle</th>
        <th scope="col">all slots</th>
        <th scope="col">booking slots</th>
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
                <a href=""><i class="fas fa-trash-alt"></i></a>
                <a href=""><i class="fas fa-edit"></i></a>
            </td>
          </tr>
        @endforeach


    </tbody>
  </table>

@endsection
