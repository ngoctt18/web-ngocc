<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\Models\Media;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

class Product extends Model implements HasMedia
{
	use HasMediaTrait;
	
	protected $table = 'products';

	protected $fillable = [
		'name', 'slug', 'price', 'discount', 'images', 'thumbnail', 'hot', 'warranty', 'brand', 'description', 'intro', 'catagory_id', 'distribution_id', 'status', 
	];

	public $timestamps = true;
	
	const TMP_DIRECTORY = 'app/public/tmp-share-images';
	
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


    // Defining An Accessor
	public function getThumbProductAttribute(){
		$thumb = optional($this->getFirstMedia('product_avatar'))->getFullUrl('thumb');
		return  $thumb;
	}

	public function getThumbProductDetailsAttribute(){
		$thumb = optional($this->getMedia('product_details'))->map(function (\Spatie\MediaLibrary\Models\Media $media) {
			return $media->getFullUrl('thumb');
		});
		return  $thumb;
	}



    // Relationships
	public function distribute(){
		return $this->belongsTo(Distribute::class, 'distribution_id', 'id')->withDefault();
	}

	public function catagory(){
		return $this->belongsTo(Catagory::class, 'catagory_id', 'id')->withDefault();
	}

	public function orderDetail(){
		return $this->hasOne(OrderDetail::class, 'product_id', 'id');
	}

}
