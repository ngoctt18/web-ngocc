<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewTag extends Model
{
	protected $table = 'new_tags';

	protected $fillable = [
		'new_id', 'tag_id', 
	];

	public $timestamps = true;
}
