<?php

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
Auth::routes();

Route::get('/', function () {
    return view('index');
});

//Route::get('/add', [App\Http\Controllers\ArtikelController::class, 'add']);
// Route::get('/', [App\Http\Controllers\ArtikelController::class, 'show']);
// Route::post('/add_process', [App\Http\Controllers\ArtikelController::class, 'add_process']);
// Route::get('/detail/{id}', [App\Http\Controllers\ArtikelController::class, 'detail']);
// Route::get('/admin', [App\Http\Controllers\ArtikelController::class, 'show_by_admin']);
// Route::get('/edit/{id}', [App\Http\Controllers\ArtikelController::class, 'edit']);
// Route::post('/edit_process', [App\Http\Controllers\ArtikelController::class, 'edit_process']);
// Route::get('/delete/{id}', [App\Http\Controllers\ArtikelController::class, 'delete']);

Route::get('/add', [App\Http\Controllers\PostsController::class, 'add']);
Route::get('/', [App\Http\Controllers\PostsController::class, 'show']);
Route::get('/source/{source_id}', [App\Http\Controllers\PostsController::class, 'source']);
Route::get('/source/{source_id}/page', [App\Http\Controllers\PostsController::class, 'page']);
Route::get('/source/{source_id}/page/{year}', [App\Http\Controllers\PostsController::class, 'sourceByYear']);
Route::get('/source/{source_id}/page/{year}/{month}', [App\Http\Controllers\PostsController::class, 'sourceByMonth']);
Route::post('/add_process', [App\Http\Controllers\PostsController::class, 'add_process']);
Route::get('/detail/{id}', [App\Http\Controllers\PostsController::class, 'detail']);
Route::get('/admin', [App\Http\Controllers\PostsController::class, 'show_by_admin']);
Route::get('/page', [App\Http\Controllers\PostsController::class, 'page']);
Route::get('/page/{year}', [App\Http\Controllers\PostsController::class, 'byYear']);
Route::get('/page/{year}/{month}', [App\Http\Controllers\PostsController::class, 'byMonth']);
Route::get('/edit/{id}', [App\Http\Controllers\PostsController::class, 'edit']);
Route::post('/edit_process', [App\Http\Controllers\PostsController::class, 'edit_process']);
Route::get('/delete/{id}', [App\Http\Controllers\PostsController::class, 'delete']);

Route::apiResource('/posts', App\Http\Controllers\Api\PostController::class);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
