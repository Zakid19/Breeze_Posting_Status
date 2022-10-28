<?php

namespace App\Http\Controllers;

use App\Http\Requests\StatusRequest;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StatusController extends Controller
{
    public function store(StatusRequest $request)
    {
    //    Auth::user()->statuses()->create([
    //         'body' => $request->body,
    //         'identifier' => Str::random(32),
    //    ]);

       $request->make();
       return redirect()->back();
    }
}
