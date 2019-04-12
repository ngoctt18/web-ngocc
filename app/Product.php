<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\Models\Media;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model implements HasMedia
{
	use HasMediaTrait;
	use SoftDeletes;

	
	protected $table = 'products';

	protected $fillable = [
		'name', 'slug', 'price', 'discount', 'images', 'thumbnail', 'hot', 'warranty', 'brand', 'description', 'intro', 'catagory_id', 'distribution_id', 'status', 'count_buys', 'qty_remain', 'count_views', 
	];

	public $timestamps = true;

	protected $dates = ['deleted_at'];
	
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

	public function getImageProductAttribute(){
		$thumb = optional($this->getFirstMedia('product_avatar'))->getFullUrl();
		return  $thumb;
	}


	public function getThumbProductDetailsAttribute(){
		$thumb = optional($this->getMedia('product_details'))->map(function (\Spatie\MediaLibrary\Models\Media $media) {
			return $media->getFullUrl('thumb');
		});
		return  $thumb;
	}

	public function getImageProductDetailsAttribute(){
		$thumb = optional($this->getMedia('product_details'))->map(function (\Spatie\MediaLibrary\Models\Media $media) {
			return $media->getFullUrl();
		});
		return  $thumb;
	}

	// ----- Accessor cho cột tùy ý -----
	public function getNameSlugAttribute(){
		return str_slug($this->attributes['name']);
	}

	

	// Test storage_path and public_path
	public function getStoragePathAttribute($value='')
	{
		return storage_path();
	}
	public function getPublicPathAttribute($value='')
	{
		return public_path();
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

	public function comments()
	{
		return $this->hasMany(Comment::class, 'product_id', 'id')->whereNull('parent_id')->latest();
	}


	// scope
	// Tìm sản phẩm theo catagory_type_id
	public function scopeProductsByCatagoryType($query, $catagory_type_id)
	{
		return $query->whereHas('catagory', function($query) use ($catagory_type_id){
			$query->where('catagory_type_id', $catagory_type_id);
		});
	}

	public function scopeSearchPrice($query, $value)
	{
		if ($value == 200000) {
			return $query->where('price', '<', 200000);
		} else if($value == 200000300000){
			return $query->where('price', '>=', 200000)->where('price', '<=', 300000);
		} else if($value == 300000400000){
			return $query->where('price', '>=', 300000)->where('price', '<=', 400000);
		} else if($value == 400000500000){
			return $query->where('price', '>=', 400000)->where('price', '<=', 500000);
		} else if($value == 500000){
			return $query->where('price', '>=', 500000);
		}
	}

}
