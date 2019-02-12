<?php

namespace App\Http\Controllers\Admin\CatagoryType;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CatagoryTypeController extends Controller
{
    public function index()
    {
    	return view('admin.catagories_types.index');
    }
}
