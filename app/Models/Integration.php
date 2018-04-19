<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Integration extends Model
{
    use SoftDeletes;
	
	protected $table = 'integrations';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];

	public function suppliers(){
		return $this->hasOne('App\Models\Supplier', 'id');
	}
	
	public function crontabs(){
		return $this->hasOne('App\Models\Crontab', 'id');
	}
}
