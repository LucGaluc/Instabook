<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\FiltreController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Accueil
Route::get('/', [HomeController::class, 'index'])->name('accueil');
Route::get('/books/create', [BookController::class, 'create'])->name('book.create');

// Filtres
Route::get('/books', [BookController::class, 'index'])->name('books.index');


// Détails Show d'un livre
Route::get('/books/{id}', [BookController::class, 'show'])->name('book.show');

//Suppr détails d'un livre
Route::delete('/books/{id}', [BookController::class, 'show'])->name('book.destroy');

// Création d'un livre
Route::post('/books', [BookController::class,'store'])->name('book.store');

// Authentification
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login.post');

//Deconnexion
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

// Registration
Route::get('/register', [AuthController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'create'])->name('register');

// Recherche dans Header
Route::get('/search', [BookController::class, 'search'])->name('search');
