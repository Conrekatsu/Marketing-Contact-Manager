<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class MarketingEmail
 * 
 * @property int $mem_id
 * @property string $mem_email
 * @property int $owner_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class MarketingEmail extends Model
{
	protected $table = 'marketing_emails';
	protected $primaryKey = 'mem_id';

	protected $casts = [
		'owner_id' => 'int'
	];

	protected $fillable = [
		'mem_email',
		'owner_id'
	];

	public function contact(){
		return $this->belongsTo(\App\Models\MarketingContact::class,"owner_id","m_id");
	}

	
}
