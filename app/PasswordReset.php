<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PasswordReset extends Model
{
	protected $primaryKey = 'email';

	public $incrementing = false;
	
	protected $table = 'password_resets';

	protected $fillable = [
		'email', 'token', 
	];

	public $timestamps = true;
}
