<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Models\Book;
use App\Models\Genre;

class HomeController extends Controller
{
    public function redirectToAccueil()
    {
        return Redirect::route('accueil');
    }

    public function index(Request $request)
    {
        $query = Book::query();

        if ($request->filled('author_filter')) {
            $query->whereHas('author', function ($authorQuery) use ($request) {
                $authorQuery->where('name', $request->author_filter);
            });
        }

        if ($request->filled('genre_filter')) {
            $query->whereHas('genre', function ($genreQuery) use ($request) {
                $genreQuery->where('name', $request->genre_filter);
            });
        }

        if ($request->filled('year_filter')) {
            $query->where('year', $request->year_filter);
        }

        $books = $query->paginate(10);

        return view('accueil.accueil', compact('books'));
    }

    public function clearFilters()
    {
        return redirect()->route('accueil');
    }
    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show(string $id)
    {
        //
    }
    public function edit(string $id)
    {
        //
    }
    public function update(Request $request, string $id)
    {
        //
    }
    public function destroy(string $id)
    {
        //
    }
}
