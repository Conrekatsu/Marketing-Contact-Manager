<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CsvTempDatum;
use App\Models\MarketingContact;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function uploadCSV(Request $r)
    {
        $path = $r->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        if (count($data) > 0) {
            $csv_data = array_slice($data, 0, 1);
            $datum = json_encode($data);
            if (json_last_error()) {
                switch (json_last_error()) {
                    case JSON_ERROR_NONE:
                    continue;
                    break;
                    case JSON_ERROR_DEPTH:
                        $r->session()->flash('message',trans('error.401'));
                        $r->session()->flash('status',false);
                    break;
                    case JSON_ERROR_STATE_MISMATCH:
                        $r->session()->flash('message',trans('error.402'));
                        $r->session()->flash('status',false);
                    break;
                    case JSON_ERROR_CTRL_CHAR:
                        $r->session()->flash('message',trans('error.403'));
                        $r->session()->flash('status',false);
                    break;
                    case JSON_ERROR_SYNTAX:
                        $r->session()->flash('message',trans('error.404'));
                        $r->session()->flash('status',false);
                    break;
                    case JSON_ERROR_UTF8:
                        $r->session()->flash('message',trans('error.405'));
                        $r->session()->flash('status',false);
                    break;
                    default:
                        $r->session()->flash('message',trans('error.406'));
                        $r->session()->flash('status',false);
                    break;
                }
                return redirect()->back();
            }
            $csv_data_file = CsvTempDatum::create([
                'csv_filename' => $r->file('csv_file')->getClientOriginalName(),
                'csv_header' => $r->has('header'),
                'csv_data' => $datum
            ]);
        } else {

            $r->session()->flash('message',"Invalid File");
            $r->session()->flash('status',false);
            return redirect()->back();
        }
        return view('mapping', compact('csv_data', 'csv_data_file'));
    }

      /**
     * Imports users via a csv file
     *
     * @param      \Illuminate\Http\Request  $r      Request variable
     *
     * @return     redirect                    Flash sessions indicate success or failure of user import
     */
    public function processImport(Request $r){
        try {

            $data = CsvTempDatum::find($r->csv_data_file_id);
            $csv_data = json_decode($data->csv_data, true);
            $user_fields = config('app.user_import');
            foreach ($csv_data as $row) {
                $user = new MarketingContact();
                foreach ($r->fields as $index => $field) {
                    $field = $user_fields[$field];
                    $user->$field = $row[$r->fields[$index]];
                }
                $user->save();
            }

            $r->session()->flash('message',"Import Success");
            $r->session()->flash('status',true);

        } catch (\Exception $e) {
            $r->session()->flash('message',trans('error.122'));
            $r->session()->flash('status',false);
        }
       
        return redirect()->route('users');
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
