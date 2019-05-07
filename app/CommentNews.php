<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommentNews extends Model
{
	protected $table = 'news_comments'; 

	protected $fillable = [
		'user_id', 'news_id', 'parent_id', 'body', 'created_at', 'updated_at', 
	];

	public $timestamps = true;

    // relationship
	public function news()
	{
		return $this->belongsTo(News::class, 'news_id', 'id');
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'user_id', 'id');
	}

	public function replies()
	{
		return $this->hasMany(CommentNews::class, 'parent_id');
	}
	
}
