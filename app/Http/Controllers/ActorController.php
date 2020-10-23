<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ActorController extends Controller
{
    public function show(Request $request, string $slug)
    {
        return view('actors.show');
    }
}
