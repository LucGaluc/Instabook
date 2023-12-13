<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table = 'livres';
    protected $fillable = ['title', 'id_genre', 'author_id','year','image'];

    public function genre()
    {
        return $this->belongsTo(Genre::class, 'id_genre', 'id');
    }

    public function author() // Relation avec l'auteur
    {
        return $this->belongsTo(Author::class, 'author_id', 'id');
    }
    public static function retrieveGenreForBook($bookId)
    {
        $book = self::find($bookId); // Récupérer le livre par ID
        if ($book) {
            return $book->genre; // Retourner le genre du livre
        } else {
            return null; // Si le livre pas trouvé, retourner null ou gérer l'erreur selon vos besoins
        }
    }
}
