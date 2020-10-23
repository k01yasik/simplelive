<?php

use App\Http\Controllers\ActorController;
use App\Http\Controllers\FilmController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PageController::class, 'index'])->name('pages.home');

Route::get('/films/{slug}', [FilmController::class, 'show'])->name('film.show');

Route::get('/genre/{name}', [GenreController::class, 'index'])->name('genre.index');

Route::get('/actors/{slug}', [ActorController::class, 'show'])->name('actors.show');

Route::get('/users/{username}', [ProfileController::class, 'show'])->name('profile.show');
