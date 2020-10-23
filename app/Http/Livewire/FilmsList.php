<?php

namespace App\Http\Livewire;

use Illuminate\Database\Eloquent\Collection;
use Livewire\Component;
use App\Models\Film;

class FilmsList extends Component
{
    public Collection $films;

    public function mount()
    {
        $this->films = Film::with(['genres', 'countries', 'actors'])->get();
    }

    public function render()
    {
        return view('livewire.films-list');
    }
}
