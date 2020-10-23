<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
    use HasFactory;

    public function actors()
    {
        return $this->belongsToMany('App\Models\Actor');
    }

    public function images()
    {
        return $this->hasMany('App\Models\Image');
    }

    public function comments()
    {
        return $this->belongsToMany('App\Models\Comment');
    }

    public function countries()
    {
        return $this->belongsToMany('App\Models\Country');
    }

    public function genres()
    {
        return $this->belongsToMany('App\Models\Genre');
    }
}
