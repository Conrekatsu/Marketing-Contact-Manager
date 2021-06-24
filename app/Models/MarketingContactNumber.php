<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class MarketingContactNumber
 * 
 * @property int $mno_id
 * @property string $mno_number
 * @property int $owner_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class MarketingContactNumber extends Model
{
	protected $table = 'marketing_contact_numbers';
	protected $primaryKey = 'mno_id';

	protected $casts = [
		'owner_id' => 'int'
	];

	protected $fillable = [
		'mno_number',
		'owner_id'
	];

	public function contact(){
		return $this->belongsTo(\App\Models\MarketingContact::class,"owner_id","m_id");
	}
}
