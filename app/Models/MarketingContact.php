<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class MarketingContact
 * 
 * @property int $m_id
 * @property string|null $m_salutation
 * @property string $m_fname
 * @property string $m_lname
 * @property string|null $m_mname
 * @property string $m_fullname
 * @property string|null $m_desig
 * @property string|null $m_company
 * @property string|null $m_add1
 * @property string|null $m_add2
 * @property string|null $m_city
 * @property string|null $m_country
 * @property string $m_ctype
 * @property string $m_csource
 * @property int $m_subscription
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * @property string|null $deleted_at
 *
 * @package App\Models
 */
class MarketingContact extends Model
{
	use SoftDeletes;
	protected $table = 'marketing_contacts';
	protected $primaryKey = 'm_id';

	protected $casts = [
		'm_subscription' => 'int'
	];

	protected $fillable = [
		'm_salutation',
		'm_fname',
		'm_lname',
		'm_mname',
		'm_fullname',
		'm_desig',
		'm_company',
		'm_add1',
		'm_add2',
		'm_city',
		'm_country',
		'm_ctype',
		'm_csource',
		'm_subscription'
	];

	public function phoneNumbers(){
		return $this->hasMany(\App\Models\MarketingContactNumber::class,"owner_id","m_id");
	}

	public function emails(){
		return $this->hasMany(\App\Models\MarketingEmail::class,"owner_id","m_id");
	}
}


