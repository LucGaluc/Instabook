<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('login.login');
    }

    public function showRegistrationForm()
    {
        return view('register.register');
    }
    public function login(Request $request)
    {
        // Validation des données du formulaire de connexion
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Tentative d'authentification de l'utilisateur
        if (Auth::attempt($credentials)) {
            // Authentification réussie
            return redirect()->route('accueil');

        }

        // En cas d'échec de l'authentification, redirige vers le formulaire de connexion avec erreur
        return redirect()->route('login')->withErrors(['message' => 'Email ou mot de passe incorrect.']);
    }
    public function logout(Request $request)
    {
        Auth::logout(); // Déconnexion de l'utilisateur

        $request->session()->invalidate(); // Effacement de la session

        $request->session()->regenerateToken(); // Régénération du token de session

        return redirect()->route('login'); // Redirection vers la page d'accueil
    }
}
