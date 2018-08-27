<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Modificar usuario </title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="icon" href="https://cdn.icon-icons.com/icons2/37/PNG/512/bull_animal_4303.png">;
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #fafad2">
<div class="container">
    <h2>Modificar usuario</h2><br /><a href="/">Inicio</a><hr>
    <form method="post" action="{{action('PassportController@update', $id)}}">
        @csrf
        <input name="_method" type="hidden" value="PATCH">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="name">Nombre:</label>
                <input type="text" class="form-control" name="name" value="{{$passport->name}}">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="email">Email</label>
                <input type="text" class="form-control" name="email" value="{{$passport->email}}">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="number">Teléfono:</label>
                <input type="text" class="form-control" name="number" value="{{$passport->number}}">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4" style="margin-left:38px">
                <lable>Passport Office</lable>
                <select name="office">
                    <option value="Mumbai"  @if($passport->office=="Mumbai") selected @endif>Mumbai</option>
                    <option value="Chennai"  @if($passport->office=="Chennai") selected @endif>Chennai</option>
                    <option value="Delhi" @if($passport->office=="Delhi") selected @endif>Delhi</option>
                    <option value="Bangalore" @if($passport->office=="Bangalore") selected @endif>Bangalore</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4" style="margin-top:60px">
                <button type="submit" class="btn btn-success zoom" style="margin-left:38px">Actualizar</button>
            </div>
        </div>
        <hr>
    </form>
    <div class="col-md-12 text-center text-dark">
        <p>Copyright 2018 - Iván Hernando Ortega</p>
        <i class="fa fa-facebook" style="font-size: 28px"></i>
        <i class="fa fa-github" style="font-size: 28px"></i>
        <i class="fa fa-twitter" style="font-size: 28px"></i>
    </div>
</div>
</body>
</html>

