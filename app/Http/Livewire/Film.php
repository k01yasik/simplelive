<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Film as FilmModel;

class Film extends Component
{
    public FilmModel $film;

    public function render()
    {
        return view('livewire.film');
    }
}
