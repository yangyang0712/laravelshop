<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegistrationController extends Controller
{
    public function index(Request $request)
    {
        return view('auth/register');
    }

    public function store(Request $request)
    {
        $data = $request->post();
        return User::create([
            'name'     => $data['name'],
            'email'    => $data['email'],
            'password' => Hash::make($data['password']),
            'uid'      => $data['uid'],
        ]);
    }
}
