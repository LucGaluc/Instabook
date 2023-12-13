<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Genre;
use App\Models\Author;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index(Request $request)
{
    $books = Book::query();

    if ($request->has('author_filter')) {
        $authorId = $request->author_filter;

        $books->whereHas('author', function ($query) use ($authorId) {
            $query->where('id', $authorId);
        });
    }

    if ($request->has('genre_filter')) {
        $books->whereHas('genre', function ($query) use ($request) {
            $query->where('name', $request->genre_filter);
        });
    }

    if ($request->has('year_filter')) {
        $books->where('year', $request->year_filter);
    }

    $books = $books->paginate(10); // Paginer les résultats

    return view('accueil.accueil', compact('books'));
}
    public function show($id)
    {
        $book = Book::find($id);
        return view('livres.show', compact('book'));
    }
    public function useless(){

    }

    public function create()
    {
        $authors = Author::all()->sortBy('name');
        $genres = Genre::all()->sortBy('name');
        return view('livres.create', compact('genres', 'authors'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'author_id' => 'required',
            'id_genre' => 'required',
            'year' => 'required',
        ]);

        $book = Book::create([
            'title' => $request->title,
            'author_id' => $request->author_id,
            'id_genre' => $request->id_genre,
            'year' => $request->year,
            'image' =>$request->image,
        ]);
        if ($request->hasfile('image')) {
            $destination_path='public/images/books';
            $image = $request->file('image');
            $image_name = $image->getClientOriginalName();
            $path = $request->file('image')->storeAs($destination_path, $image_name);

            $book->image = $image_name;

          // J'avais oublié le save je l'avais create mais pas sauvegardé donc voila
            $book->save();
        }
        return view('livres.show', ['book' => $book, 'success' => 'Le livre a été créé avec succès']);
    }

    public function search(Request $request)
    {
        $searchTerm = $request->input('query');
        $searchField = $request->input('searchField');

        // Utilisation des variables $searchTerm, $searchField pour interroger la base de données
        if ($searchField === 'title') {
            // Recherche par titre
            $books = Book::where('title', 'LIKE', "%$searchTerm%")->get();
        } elseif ($searchField === 'genres') {
            // Recherche par genre
            $books = Book::whereHas('genre', function ($query) use ($searchTerm) {
                $query->where('name', 'LIKE', "%$searchTerm%");
            })->get();
        } elseif ($searchField === 'authors') {
            // Recherche par auteur
            $books = Book::whereHas('author', function ($query) use ($searchTerm) {
                $query->where('name', 'LIKE', "%$searchTerm%");
            })->get();
        } else {
            // Recherche dans tous les champs, limitée par le champ 'titre'
            $books = Book::where(function ($query) use ($searchTerm) {
                $query->where('title', 'LIKE', "%$searchTerm%")
                    ->orWhereHas('genre', function ($query) use ($searchTerm) {
                        $query->where('name', 'LIKE', "%$searchTerm%");
                    })
                    ->orWhereHas('author', function ($query) use ($searchTerm) {
                        $query->where('name', 'LIKE', "%$searchTerm%");
                    });
            })->get();
        }
        return view('search.search-results', ['books' => $books]);
    }

    public function destroy(Book $book){
        $book->delete();
        return redirect(route('accueil.accueil'))->with('success', "Livre supprimé avec succès");
    }
}
