<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Model;
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
	
	// Defining A Mutator
	public function setSlugAttribute($value){
		$this->attributes['slug'] = str_slug($value, "-");
	}

    // Defining An Accessor


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
