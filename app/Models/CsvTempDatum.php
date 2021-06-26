<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 22 Jan 2019 10:50:57 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class CsvTempDatum
 *
 * @property int $id
 * @property string $csv_filename
 * @property bool $csv_header
 * @property string $csv_data
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 *
 * @package App\Models
 */
class CsvTempDatum extends Eloquent
{
    protected $table = 'csv_temp_data';
	protected $primaryKey = 'id';
	protected $fillable = [
		'csv_filename',
		'csv_header',
		'csv_data'
	];
}
