<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Author;

class AuthorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $authors = [
            ['name' => 'J.K. Rowling'],
            ['name' => 'Stephen King'],
            ['name' => 'Dan Brown'],
            ['name' => 'Haruki Murakami'],
            ['name' => 'George Orwell'],
            ['name' => 'Jane Austen'],
            ['name' => 'Victor Hugo'],
            ['name' => 'Ernest Hemingway'],
            ['name' => 'Mark Twain'],
            ['name' => 'Agatha Christie'],
            ['name' => 'Gabriel Garcia Marquez'],
            ['name' => 'J.R.R. Tolkien'],
            ['name' => 'Leo Tolstoy'],
            ['name' => 'F. Scott Fitzgerald'],
            ['name' => 'Virginia Woolf'],
            ['name' => 'Charles Dickens'],
            ['name' => 'Jules Verne'],
            ['name' => 'Hermann Hesse'],
            ['name' => 'Miguel de Cervantes'],
            ['name' => 'Fyodor Dostoevsky'],
            ['name' => 'Arthur Conan Doyle'],
            ['name' => 'Emily Dickinson'],
            ['name' => 'Oscar Wilde'],
            ['name' => 'H.P. Lovecraft'],
            ['name' => 'Albert Camus'],
            ['name' => 'Edgar Allan Poe'],
            ['name' => 'Nathaniel Hawthorne'],
            ['name' => 'H.G. Wells'],
            ['name' => 'Markus Zusak'],
        ];

        Author::insert($authors);
    }
}
