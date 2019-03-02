<?php

namespace App\Http\Controllers\Writer\News;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Writer\StoreNewsRequest;
use App\Http\Requests\Writer\UpdateNewsRequest;
use App\News;
use App\NewTag;
use App\Tag;
use Session;
use Auth;

class NewsController extends Controller
{
	public function index(Request $request)
	{
		$title = $request->query('title', NULL);
		$tag_id = $request->query('tag_id', NULL);
		$status = $request->query('status', NULL);

		$news = News::query();
		if ($title != NULL) {
			$news = $news->where('title', 'LIKE', '%'.$title.'%');
		}
		if ($tag_id != NULL) {
			$news = $news->SearchByTag($tag_id);
		}
		if ($status != NULL) {
			$news = $news->where('status', $status);
		}
		$news = $news->where('author_id', Auth::id())->latest()->paginate()->appends([
			'title' => $title,
			'tag_id' => $tag_id,
			'status' => $status,
		]);
		$tags = Tag::all();
		return view('writer.news.index', compact('news', 'tags'));
	}

	public function create()
	{
		$tags = Tag::all();
		return view('writer.news.create', compact('tags'));
	}

	public function store(StoreNewsRequest $request)
	{
        // dd($request->all());
		$data = $request->all();
		$data['slug'] = $request->title;
		$data['author_id'] = Auth::id();
		$news = News::create($data);
		// check null
		if (!is_null($request->new_tags)) {
			foreach ($request->new_tags as $value) {
				NewTag::create([
					'new_id' => $news->id,
					'tag_id' => $value,
				]);
			}
		}
		if($request->hasFile('news_image')){
			$news->addMediaFromRequest('news_image')->toMediaCollection('news_image');
		}
		Session::flash('success', 'Thêm bài viết thành công.');
		return redirect()->route('writer.news.index');
	}

	public function show(News $news)
	{
		return view('writer.news.show', compact('news'));
	}

	public function edit(News $news)
	{
		$tags = Tag::all();
		return view('writer.news.edit', compact('news', 'tags'));
	}

	public function update(UpdateNewsRequest $request, News $news)
	{
		$data = $request->all();
		$data['slug'] = $request->title;
		$news->update($data);

		NewTag::where('new_id', $news->id)->delete();
		if (!is_null($request->new_tags)) {
			foreach ($request->new_tags as $value) {
				NewTag::create([
					'new_id' => $news->id,
					'tag_id' => $value,
				]);
			}
		}
		if($request->hasFile('news_image')){
			$news->clearMediaCollection('news_image');
			$news->addMediaFromRequest('news_image')->toMediaCollection('news_image');
		}
		Session::flash('success', 'Sửa bài viết thành công.');
		return redirect()->route('writer.news.index');
	}

	public function destroy($id)
	{
		News::destroy($id);
		Session::flash('success', 'Xoá bài viết thành công.');
		return redirect()->route('writer.news.index');
	}

	public function trash(Request $request)
	{
		$title = $request->query('title', NULL);
		$tag_id = $request->query('tag_id', NULL);
		$status = $request->query('status', NULL);

		$news = News::query();
		if ($title != NULL) {
			$news = $news->where('title', 'LIKE', '%'.$title.'%');
		}
		if ($tag_id != NULL) {
			$news = $news->SearchByTag($tag_id);
		}
		if ($status != NULL) {
			$news = $news->where('status', $status);
		}
		$news = $news->where('author_id', Auth::id())->onlyTrashed()->latest()->paginate()->appends([
			'title' => $title,
			'tag_id' => $tag_id,
			'status' => $status,
		]);
		$tags = Tag::all();
		return view('writer.news.trash', compact('news', 'tags'));
	}

	public function restore($id)
	{
		$news = News::onlyTrashed()->findOrFail($id);
		$news->restore();
		Session::flash('success', 'Khôi phục bài viết thành công.');
		return redirect()->route('writer.news.trash');
	}

	public function forcedelete($id)
	{
		$news = News::onlyTrashed()->findOrFail($id);
		$news->forcedelete();
		Session::flash('success', 'Bài viết đã được xóa vĩnh viễn.');
		return redirect()->route('writer.news.trash');
	}
}
