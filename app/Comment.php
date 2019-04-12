<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
	protected $table = 'comments'; 

	protected $fillable = [
		'user_id', 'product_id', 'parent_id', 'body', 
	];

	public $timestamps = true;

    // relationship
	public function product()
	{
		return $this->belongsTo(User::class, 'product_id', 'id');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'user_id', 'id');
	}

	public function replies()
	{
		return $this->hasMany(Comment::class, 'parent_id');
	}

}
