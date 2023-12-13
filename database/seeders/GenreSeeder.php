<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Genre;

class GenreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $genres = [
            ['name' => 'Roman'],
            ['name' => 'Science-fiction'],
            ['name' => 'Fantaisie'],
            ['name' => 'Mystère'],
            ['name' => 'Thriller'],
            ['name' => 'Horreur'],
            ['name' => 'Policier'],
            ['name' => 'Jeunesse'],
            ['name' => 'Aventure'],
            ['name' => 'Romance'],
            ['name' => 'Biographie'],
            ['name' => 'Autobiographie'],
            ['name' => 'Dystopie'],
            ['name' => 'Historique'],
            ['name' => 'Contes'],
            ['name' => 'Essai'],
            ['name' => 'Poésie'],
            ['name' => 'Nouvelle'],
            ['name' => 'Classique'],
            ['name' => 'Science'],
            ['name' => 'Psychologie'],
            ['name' => 'Philosophie'],
            ['name' => 'Spiritualité'],
            ['name' => 'BD / Comics'],
            ['name' => 'Manga'],
            ['name' => 'Art et Design'],
            ['name' => 'Voyage'],
            ['name' => 'Cuisine'],
            ['name' => 'Développement personnel'],
            ['name' => 'Éducation'],
        ];

        Genre::insert($genres);
    }
}
