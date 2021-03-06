<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CsvTempDatum;
use App\Models\MarketingContact;
use App\Models\MarketingContactNumber;
use App\Models\MarketingEmail;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['data'] = MarketingContact::with('phoneNumbers', 'emails')->get();
        return view('view',$data);

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
            $csv_datum = array_slice($data, 0, 1);

            $csv_data = array_merge(["__DefaultSelection" => "Select Mapping"], $csv_datum[0]);
            $datum = json_encode($data);
            if (json_last_error()) {
                switch (json_last_error()) {
                    case JSON_ERROR_NONE:
                        continue;
                        break;
                    case JSON_ERROR_DEPTH:
                        $r->session()->flash('message', trans('error.401'));
                        $r->session()->flash('status', false);
                        break;
                    case JSON_ERROR_STATE_MISMATCH:
                        $r->session()->flash('message', trans('error.402'));
                        $r->session()->flash('status', false);
                        break;
                    case JSON_ERROR_CTRL_CHAR:
                        $r->session()->flash('message', trans('error.403'));
                        $r->session()->flash('status', false);
                        break;
                    case JSON_ERROR_SYNTAX:
                        $r->session()->flash('message', trans('error.404'));
                        $r->session()->flash('status', false);
                        break;
                    case JSON_ERROR_UTF8:
                        $r->session()->flash('message', trans('error.405'));
                        $r->session()->flash('status', false);
                        break;
                    default:
                        $r->session()->flash('message', trans('error.406'));
                        $r->session()->flash('status', false);
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

            $r->session()->flash('message', "Invalid File");
            $r->session()->flash('status', false);
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
    public function processImport(Request $r)
    {
        // try {

        $data = CsvTempDatum::find($r->csv_data_file_id);

        $csv_data = json_decode($data->csv_data, true);
        array_shift($csv_data);
        foreach ($csv_data as $row) {
            $user = new MarketingContact();
            if (isset($r->m_fullname)) {
                if ($r->m_fullname != "__DefaultSelection") {

                    $exploded = explode(' ', $row[$r->m_fullname]);

                    $user->m_lname = $exploded[sizeof($exploded) - 1];
                    $user->m_fname = trim(str_replace($exploded[sizeof($exploded) - 1], '', $row[$r->m_fullname]));
                    $user->m_fullname = $row[$r->m_fullname];
                }
            }



            if (isset($r->m_lname)) {
                if ($r->m_lname != "__DefaultSelection") {
                    $user->m_lname = $row[$r->m_lname];
                }
            }

            if (isset($r->m_fname)) {
                if ($r->m_fname != "__DefaultSelection") {
                    $user->m_fname = $row[$r->m_fname];
                }
            }

            if (isset($r->m_mname)) {
                if ($r->m_mname != "__DefaultSelection") {
                    $user->m_mname = $row[$r->m_mname];
                }
            }

            if (isset($r->m_company)) {
                if ($r->m_company != "__DefaultSelection") {
                    $user->m_company = $row[$r->m_company];
                }
            }

            if (isset($r->m_desig)) {
                if ($r->m_desig != "__DefaultSelection") {
                    $user->m_desig = $row[$r->m_desig];
                }
            }

            if (isset($r->m_salutation)) {
                if ($r->m_salutation != "__DefaultSelection") {
                    $user->m_salutation = $row[$r->m_salutation];
                }
            }

            if (isset($r->m_country)) {
                if ($r->m_country != "__DefaultSelection") {
                    $user->m_country = $row[$r->m_country];
                }
            }

            if (isset($r->m_city)) {
                if ($r->m_city != "__DefaultSelection") {
                    $user->m_city = $row[$r->m_city];
                }
            }

            if (isset($r->m_add1)) {
                if ($r->m_add1 != "__DefaultSelection") {
                    $user->m_add1 = $row[$r->m_add1];
                }
            }

            if (isset($r->m_add2)) {
                if ($r->m_add2 != "__DefaultSelection") {
                    $user->m_add2 = $row[$r->m_add2];
                }
            }

            if (isset($r->m_ctype)) {
                if ($r->m_ctype != "__DefaultSelection") {
                    $user->m_ctype = $row[$r->m_ctype];
                }
            }

            if (isset($r->m_csource)) {
                if ($r->m_csource != "__DefaultSelection") {
                    $user->m_csource = $row[$r->m_csource];
                }
            }

            if (isset($r->m_subscription)) {
                if ($r->m_subscription != "__DefaultSelection") {
                    $user->m_subscription = $row[$r->m_subscription];
                }
            }
            $user->save();
            if (isset($r->phone)) {
                foreach ($r->phone as $phoneNumber) {
                    if ($phoneNumber == "__DefaultSelection")
                        continue;
                        

                    if(strpos($row[$phoneNumber],',') > 0){
                        try {
                            foreach(explode(',',$row[$phoneNumber]) as $num){
                                if(trim($num) == '')
                                    continue;

                                $user->phoneNumbers()->save(new MarketingContactNumber([
                                    'mno_number' => trim($num)
                                ]));
                            }
                        } catch (\Exception $e) {
                            continue;
                        }
                    }
                    else{
                        try {
                            $user->phoneNumbers()->save(new MarketingContactNumber([
                                'mno_number' => trim($row[$phoneNumber])
                            ]));
                        } catch (\Exception $e) {
                            continue;
                        }
                    }

                }
            }

            if (isset($r->email)) {
                foreach ($r->email as $email) {
                    if ($email == "__DefaultSelection")
                        continue;

                    if(strpos($row[$email],',')> 0){
                        try {

                            foreach(explode(',',$row[$email]) as $em){
                                if(trim($em) == '')
                                    continue;
                                $user->emails()->save(new MarketingEmail([
                                    'mem_email' => trim($em)
                                ]));
                            }
                        } catch (\Exception $e) {
                            continue;
                        }
                    }
                    else{
                        try {
                            $user->emails()->save(new MarketingEmail([
                                'mem_email' => $row[$email]
                            ]));
                        } catch (\Exception $e) {
                            continue;
                        }
                    }

                }
            }
        }
        //     $r->session()->flash('message',"Import Success");
        //     $r->session()->flash('status',true);

        // } catch (\Exception $e) {
        //     $r->session()->flash('message',trans('error.122'));
        //     $r->session()->flash('status',false);
        // }

        return redirect()->route('home');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function export()
    {
        $data = MarketingContact::with('phoneNumbers', 'emails')->get();
        try {
            $fileName = "MarketingContacts_" . date('Y-m-d') . ".csv";
            $headers = array(
                "Content-type"        => "text/csv",
                "Content-Disposition" => "attachment; filename=$fileName",
                "Pragma"              => "no-cache",
                "Cache-Control"       => "must-revalidate, post-check=0, pre-check=0",
                "Expires"             => "0"
            );

            $fields = array('ID', 'Salutation', 'First Name', 'Last Name', 'Email', 'Phone', 'Job Designation', 'Company', 'Address 1', 'Address 2', 'Town/City', 'Country', 'Contact Type', 'Contact Source', 'Subscription', 'Created');

            $callback = function () use ($data, $fields) {
                $delimiter = ",";
                $file = fopen('php://output', 'w');
                fputcsv($file, $fields,$delimiter);

                foreach ($data as $record) {
                    $phones = '';
                    $emails = '';
                    if (count($record->phoneNumbers) > 0) {
                        foreach ($record->phoneNumbers as $number) {
                            $phones .= $number->mno_number .  ', ';
                        }
                    }
                    if (count($record->emails) > 0) {
                        foreach ($record->emails as $email) {
                            $emails .= $email->mem_email .  ', ';
                        }
                    }
                    $lineData = array(
                        $record['m_id'] ?: '-',
                        $record['m_salutation'] ?: '-',
                        $record['m_fname'] ?: '-',
                        $record['m_lname'] ?: '-',
                        $emails,
                        $phones,
                        $record['m_desig'] ?: '-',
                        $record['m_company'] ?: '-',
                        $record['m_add1'] ?: '-',
                        $record['m_add2'] ?: '-',
                        $record['m_city'] ?: '-',
                        $record['m_country'] ?: '-',
                        $record['m_ctype'] ?: '-',
                        $record['m_csource'] ?: '-',
                        $record['m_subscription'] ?: '-',
                        $record['created_at'] ?: '-',
                    );
                    fputcsv($file, $lineData, $delimiter);

                }

                fclose($file);
            };
        } catch (\Exception $e) {
        }
        return response()->stream($callback, 200, $headers);

    }
}
