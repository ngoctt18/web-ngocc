<?php

namespace App\Http\Controllers\Admin\Contact;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use Session;

class ContactController extends Controller
{
    public function index()
    {
    	$contacts = Contact::latest()->paginate();
    	return view('admin.contacts.index', compact('contacts'));
    }

    public function show(Contact $contact)
    {
    	# code...
    }

    public function destroy(Contact $contact)
    {
    	$contact->delete();
		Session::flash('success', 'Xoá lời nhắn thành công');
		return redirect()->route('admin.contacts.index');
    }
}
