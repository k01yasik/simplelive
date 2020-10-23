<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FilmController extends Controller
{
    public function show(Request $request, string $slug)
    {
        return view('film.show');
    }
}
