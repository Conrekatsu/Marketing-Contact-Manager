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
        <h3>Configure CSV Mapping</h3>
        <h4>All duplicates will be removed upon import</h4>
        <table id="_tbl">
            <thead>
                <tr>
                    <th>Unified Fields</th>
                    <th>CSV File Headers/ 1st Row Values</th>
                </tr>
            </thead>
            <tr>
                <td>Full Name</td>
                <td>
                    {!! Form::select("_FullName", [], null) !!}
                </td>
            </tr>
            <tr>
                <td>Contact Number</td>
                <td>
                    {!! Form::select("_FullName", [], null,["multiple"]) !!}
                </td>

            </tr>
            <tr>
                <td>Email</td>
                <td>
                    {!! Form::select("_FullName", [], null,["multiple"]) !!}
                </td>
            </tr>
            <tr>
                <td>
                    {!! Form::select("_FullName", [], null) !!}
                </td>
                <td>
                    {!! Form::select("_FullName", [], null) !!}
                </td>
            </tr>
        </table>
        <button onclick="addMapping()">Add Mapping +</button><button>Import Mapping</button>
        <hr>

        <script>
            var _table = document.getElementById("_tbl");

            var addMapping = function(){

            }
        </script>
    </body>
</html>
