<h3>Configure CSV Mapping</h3>
<h4>All duplicates will be removed upon import</h4>
<table>
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
<button>Add Mapping +</button><button>Import Mapping</button>
<hr>

