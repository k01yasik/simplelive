<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GenreController extends Controller
{
    public function index(Request $request, string $name)
    {
        return view('genre.index');
    }
}
