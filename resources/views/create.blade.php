<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SCU - Nueva alta  </title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="{{asset('js/jquery-ui-1.12.1.custom/jquery-ui.css')}}">
    <link rel="icon" href="https://cdn.icon-icons.com/icons2/37/PNG/512/bull_animal_4303.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body id="body2">
<div class="container">
    <h2>Sistema de Creación de Usuarios</h2><br/><a href="/">Inicio</a><hr>
    <form method="post" action="{{url('listas')}}" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="Name">Nombre:</label>
                <input type="text" class="form-control" name="name">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="Email">Email:</label>
                <input type="text" class="form-control" name="email">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <label for="Number">Teléfono:</label>
                <input type="text" class="form-control" name="number">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <input type="file" name="filename">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <strong>Fecha Nacimiento : </strong>
                <input class="date form-control"  type="text" id="datepicker" name="date">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="form-group col-md-4">
                <lable>Residencia</lable>
                <select name="office">
                    <option value="Mumbai">Mumbai</option>
                    <option value="Chennai">Chennai</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Bangalore">Bangalore</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 text-center"></div>
            <div class="form-group col-md-3" style="margin-top:60px">
                <button type="submit" class="btn btn-success zoom">Grabar</button>
                <button type="reset" class="btn btn-danger zoom pull-right">Resetear</button>
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
<script type="text/javascript">
    $('#datepicker').datepicker({
        autoclose: true,
        format: 'dd-mm-yyyy'
    });
</script>

</body>
</html>
