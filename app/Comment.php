<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
	protected $table = 'product_comments';

	protected $fillable = [
		'user_id', 'product_id', 'parent_id', 'body', 'created_at', 'updated_at',
	];

	public $timestamps = true;

    // relationship
	public function product()
	{
		return $this->belongsTo(Product::class, 'product_id', 'id')->withDefault();
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'user_id', 'id')->withDefault();
	}

	public function replies()
	{
		return $this->hasMany(Comment::class, 'parent_id');
	}

}
