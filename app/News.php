<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
	protected $table = 'news';

	protected $fillable = [
		'title', 'slug', 'content', 'author_id', 'status', 'count_views', 
	];

	public $timestamps = true;


	// Defining A Mutator
	public function setSlugAttribute($value){
		$this->attributes['slug'] = str_slug($value, "-");
	}
	

	public function tags()
	{
		return $this->belongsToMany(Tag::class, 'new_tags', 'new_id', 'tag_id');
	}

	public function author()
	{
		return $this->belongsTo(Writer::class, 'author_id', 'id')->withDefault();
	}
}
