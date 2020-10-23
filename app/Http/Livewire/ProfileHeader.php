<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class ProfileHeader extends Component
{
    public $user;

    public function mount()
    {
        $this->user = Auth::user()->load('avatar');
    }

    public function render()
    {
        return view('livewire.profile-header');
    }
}
