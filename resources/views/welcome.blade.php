<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="https://cdn.icon-icons.com/icons2/37/PNG/512/bull_animal_4303.png">
    <link rel="stylesheet" href="{{asset('css/appwelcome.css')}}">
    <title>Crud - Ivheror</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
</head>
<body>
<div class="flex-center position-ref full-height">
    @if (Route::has('login'))
        <div class="top-right links">
            @auth
                <a href="{{ url('/home') }}">Home</a>
            @else
                <a href="{{ route('login') }}">Login</a>
                <a href="{{ route('register') }}">Register</a>
            @endauth
        </div>
    @endif
    <div class="content">
        <div class="title m-b-md">
            IVHEROR
        </div>
        <div class="links">
            <a href="/listas">Listado</a>
            <a href="https://www.opensistemas.com/" target="_blank">Web</a>
            <a href="https://github.com/Ivheror" target="_blank">GitHub</a>
        </div>
    </div>
</div>
</body>
</html>