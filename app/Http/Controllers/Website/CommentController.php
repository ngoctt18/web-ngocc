<?php

namespace App\Http\Controllers\Website;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Comment;

class CommentController extends Controller
{
	public function store(Request $request)
	{
		$request->validate([
			'body'=>'required|min:30|max:250',
		]);

		$input = $request->all();
		$input['user_id'] = auth()->user()->id;

		$_this = Comment::create($input);
		$comment = Comment::with('user', 'product', 'replies')->find($_this->id);

		return view('website.product.comments', ['comment' => $comment, 'product_id' => $request->product_id, 'parent_id' => $request->parent_id]);
	}
}
