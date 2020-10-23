<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class ProfileLeftPanel extends Component
{
    public $user;

    public function mount()
    {
        $this->user = Auth::user()->load('profile', 'avatar');
    }

    public function render()
    {
        return view('livewire.profile-left-panel');
    }
}
