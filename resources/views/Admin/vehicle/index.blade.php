@extends('admin_temp')
@section('content')
  <!-- Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<div class="row page-titles">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">Vehicle</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Vehicle</a></li>
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
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">add Vehicle</button>
</div>


<x-adddata>
    <x-slot:id>
        exampleModal
    </x-slot>
    <x-slot:title>
       Add kind
    </x-slot>
    <x-slot:body>
       <form method="post" action="{{route('vehicls.store')}}">
         @csrf
         <div class="form-group">
            <label>name</label>
            <input type="text" name="name" class="form-control">
         </div>
         <div class="form-group">
            <label>number</label>
            <input type="text" name="number" class="form-control">
         </div>
            <div class="form-group">
                <label>solts</label>
                <select class="form-control" id="exampleFormControlSelect1" name="slots">
                    <option value="24">24</option>
                    <option value="44">44</option>
                    <option value="12">12</option>
                  </select>
            </div>
            <div class="form-group">
                <label>Kind vehicle</label>
                <select class="form-control" id="exampleFormControlSelect1" name="kind">
                      @foreach ($vehicleKinds as $vehicleKinds)
                         <option value="{{$vehicleKinds->id}}">{{$vehicleKinds->name}}</option>
                      @endforeach
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
        <th scope="col">name</th>
        <th scope="col">number</th>
        <th scope="col">slots</th>
        <th scope="col">vichel kinds</th>
        <th scope="col">actions</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($vehicles as $key=>$vehicle)
        <tr>
            <th scope="row">{{$key+1}}</th>
            <td>{{$vehicle->name}}</td>
            <td>{{$vehicle->vehiclenumber}}</td>
            <td>{{$vehicle->slots}}</td>
            <td>{{$vehicle->kind->name}}</td>
            <td>
                <a href=""><i class="fas fa-trash-alt"></i></a>
                <a href=""><i class="fas fa-edit"></i></a>
            </td>
          </tr>
        @endforeach


    </tbody>
  </table>

@endsection
