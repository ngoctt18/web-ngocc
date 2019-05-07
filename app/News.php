<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\Models\Media;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model implements HasMedia
{
	use HasMediaTrait;
	use SoftDeletes;

	
	protected $table = 'news';

	protected $fillable = [
		'title', 'slug', 'content', 'author_id', 'status', 'count_views', 
	];

	public $timestamps = true;

	protected $dates = ['deleted_at'];

    //Media lib.
	public function registerMediaConversions(Media $media = null)
	{
		$this->addMediaConversion('thumb')
		->width(252)
		->height(261)
		->sharpen(10);
	}


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

	public function comments()
	{
		return $this->hasMany(CommentNews::class, 'news_id', 'id')->whereNull('parent_id')->latest();
	}




    // Defining An Accessor
	public function getThumbNewsAttribute(){
		$thumb = optional($this->getFirstMedia('news_image'))->getFullUrl('thumb');
		return  $thumb;
	}

	public function getImageNewsAttribute(){
		$thumb = optional($this->getFirstMedia('news_image'))->getFullUrl();
		return  $thumb;
	}



	// scope
	public function scopeSearchByTag($query, $tag_id)
	{
		return $query->whereHas('tags', function($q) use ($tag_id){
			$q->where('tags.id', $tag_id);
		});
	}
}
