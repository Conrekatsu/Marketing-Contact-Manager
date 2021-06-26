<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            .resizable{
                resize: vertical;
            }
            td{
                border-bottom: 1px solid black;
                padding: 10px 0;
            }
        </style>
    </head>
    <body>
        <h3>Configure CSV Mapping</h3>
        <h4>All duplicates will be removed upon import</h4>

        {!! Form::open(["route"=>"processImport","method"=>"post","id"=>"processForm"]) !!}
        {!! Form::hidden("csv_data_file_id", $csv_data_file->id) !!}
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
                    {!! Form::select("m_fullname", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Contact Number</td>
                <td>
                    {!! Form::select("phone[]", $csv_data, null,["multiple","class"=>"resizable"]) !!}
                </td>

            </tr>
            <tr>
                <td>Email</td>
                <td>
                    {!! Form::select("email[]", $csv_data, null,["multiple","class"=>"resizable"]) !!}
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    {!! Form::select("m_lname", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>
                    {!! Form::select("m_fname", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Middle Name</td>
                <td>
                    {!! Form::select("m_mname", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Company</td>
                <td>
                    {!! Form::select("m_company", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Job/Designation</td>
                <td>
                    {!! Form::select("m_desig", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Salutation</td>
                <td>
                    {!! Form::select("m_salutation", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Country</td>
                <td>
                    {!! Form::select("m_country", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Town/City</td>
                <td>
                    {!! Form::select("m_city", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Address 1</td>
                <td>
                    {!! Form::select("m_add1", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Address 2</td>
                <td>
                    {!! Form::select("m_add2", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Contact Type</td>
                <td>
                    {!! Form::select("m_ctype", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Contact Source</td>
                <td>
                    {!! Form::select("m_csource", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
            <tr>
                <td>Subscription</td>
                <td>
                    {!! Form::select("m_subscription", $csv_data, "__DefaultSelection") !!}
                </td>
            </tr>
        </table>
       <button  type="submit">Import Mapping</button>
        {!! Form::close() !!}
        <hr>
    </body>
</html>
