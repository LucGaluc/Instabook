<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Author extends Model // Ajout du modèle Author
{
    public function books()
    {
        return $this->hasMany(Book::class, 'author_id', 'id');
    }
}
