<?php

namespace App\Http\Controllers\Admin\Contact;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use Session;

class ContactController extends Controller
{
	public function index(Request $request)
	{
		$name = $request->get('name', NULL);
		$contacts = Contact::query();
		if ($name != NULL) {
			$contacts = $contacts->where('name', 'LIKE', '%'.$name.'%');
		}
		$contacts = $contacts->latest()->paginate()->appends([
			'name' => $name,
		]);
		return view('admin.contacts.index', compact('contacts'));
	}

	public function contactDetail(Request $request)
	{
		$idContact = $request->get('idContact', NULL);
		$contacts = Contact::findOrFail($idContact);
		return $contacts;
	}

	public function destroy(Contact $contact)
	{
		$contact->delete();
		Session::flash('success', 'Xoá lời nhắn thành công');
		return redirect()->route('admin.contacts.index');
	}
}
