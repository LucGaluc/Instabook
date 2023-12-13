<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    protected function create(Request $request)
    {
        // Validation des données du formulaire
        $request->validate([
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ]);

        // Création d'un nouvel utilisateur
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        if ($user) {
            // Utilisateur créé avec succès, redirige accueil
            return redirect()->route('accueil');
        } else {
            // Utilisateur non créé, redirige vers page d'inscription avec une erreur
            return redirect()->route('register')->withErrors(['message' => 'Erreur lors de la création du compte. Veuillez réessayer.'])->withInput();
        }
    }
}
