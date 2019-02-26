<?php

namespace App\Http\Controllers\Writer;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
	public function writer()
	{
		return view('writer.dashboard', ['url', 'writer']);
	}
}
