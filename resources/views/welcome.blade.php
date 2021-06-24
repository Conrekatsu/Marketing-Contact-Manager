<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        
    </head>
    <body>
    {!! Form::open(["route"=>"uploadCSV","method"=>"post","files"=>true,"id"=>"initial_upload"]) !!}
    <h3>Upload CSV file</h3>
    {!! Form::file("csv_file") !!}
    {!! Form::submit("Upload") !!}
    <hr>
    {!! Form::close() !!}

    </body>
</html>
