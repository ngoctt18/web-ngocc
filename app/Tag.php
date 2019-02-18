<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
	protected $table = 'tags';

	protected $fillable = [
		'name', 
	];

	public $timestamps = true;

	
	// Defining A Mutator
	public function setSlugAttribute($value){
		$this->attributes['slug'] = str_slug($value, "-");
	}

	public function news()
	{
		return $this->belongsToMany(News::class, 'new_tags', 'new_id', 'tag_id');
	}
}
