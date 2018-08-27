<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Soporte - Listado</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="icon" href="https://cdn.icon-icons.com/icons2/37/PNG/512/bull_animal_4303.png">;
</head>
<body style="background-color: lightblue">
<div class="container">
    <br />
    @if (\Session::has('success'))
        <div class="alert alert-success">
            <p>{{ \Session::get('success') }}</p>
        </div><br />
    @endif
    <div class="col-md-12 text-center">
        <h2>- Listado de personas -</h2>
        <br>
    </div>
    <table class="table table-striped">
        <a href="/">Inicio</a>
        <div class="col-md-12 text-right">
        <p><a href="/create"><button class="btn btn-success pull-left zoom" id="botonMas"> + Nuevo Registro</button></a></p></div>
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Fecha</th>
            <th>Email</th>
            <th>Teléfono</th>
            <th>Residencia</th>
            <th colspan="2" class="text-center">Modificar - Eliminar</th>
        </tr>
        </thead>
        <tbody>

        @foreach($passports as $passport)
            @php
                $date=date('Y-m-d', $passport['date']);
            @endphp
            <tr>
                <td>{{$passport['id']}}</td>
                <td>{{$passport['name']}}</td>
                <td>{{$date}}</td>
                <td>{{$passport['email']}}</td>
                <td>{{$passport['number']}}</td>
                <td>{{$passport['office']}}</td>

                <td><a href="{{action('PassportController@edit', $passport['id'])}}" class="zoom btn btn-info text-white ">Editar</a></td>
                <td>
                    <form action="{{action('PassportController@destroy', $passport['id'])}}" method="post">
                        @csrf
                        <input name="_method" type="hidden" value="DELETE">
                        <button class="btn btn-danger zoom" type="submit" onclick="return confirm('El registro será borrado, seguro?')">Borrar</button>
                    </form>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <div class="col-md-3 offset-4">
        {{ $passports->render() }}
    </div></div>
</body>
</html>