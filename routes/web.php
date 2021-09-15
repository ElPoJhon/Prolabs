<?php

use App\Http\Livewire\UsersTable;
use App\Http\Livewire\ShowPosts;
use Illuminate\Support\Facades\Route;
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

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');



Route::middleware(['auth:sanctum', 'verified'])->get('/perfil', function () {
    return view('perfil');
})->name('perfil');

Route::middleware(['auth:sanctum', 'verified'])->get('/seguridad', function () {
    return view('seguridad');
})->name('seguridad');

Route::group(['middleware' => 'auth'], function () {
    Route::resource('tasks', \App\Http\Controllers\TasksController::class);

    Route::resource('postsu', \App\Http\Controllers\PostsuController::class);

    Route::resource('posts', \App\Http\Controllers\PostsController::class);

    Route::resource('tasksu', \App\Http\Controllers\TasksuController::class);

    Route::resource('users', \App\Http\Controllers\UsersController::class);
});


//Route::middleware(['auth:sanctum', 'verified'])
//->get('/noticias', ShowPosts::class)
//->name('noticias');

//
//Route::middleware(['auth:sanctum', 'verified'])
//->get('/users2', UsersTable::class)
//->name('users2');
