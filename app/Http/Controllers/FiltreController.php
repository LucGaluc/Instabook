<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;

class FiltreController extends Controller
{
    public function filtrerLivres(Request $request)
    {
        $authorFilter = $request->input('author_filter');
        $genreFilter = $request->input('genre_filter');
        $yearFilter = $request->input('year_filter');

        $booksQuery = Book::query();

        if ($authorFilter) {
            $booksQuery->where('author', $authorFilter);
        }

        if ($genreFilter) {
            $booksQuery->where('genre', $genreFilter);
        }

        if ($yearFilter) {
            $booksQuery->where('year', $yearFilter);
        }

        $filteredBooks = $booksQuery->paginate(10); // Paginer les résultats

        // Passer les livres filtrés à la vue 'livres.index'
        return view('livres.index', ['books' => $filteredBooks]);
    }
}
