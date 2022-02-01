<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Nexmo\Laravel\Facade\Nexmo;

class SmsController extends Controller
{
    public function ind(){
        return view('sms');
    }

    public function index(Request $req){
        $this->validate($req, [
            'name' => 'required|string',
            'message' => 'required'
        ]);

        Nexmo::message()->send([
            'to' => '+998900012919',
            'from' => $req->name,
            'text' => $req->message
        ]);

        return redirect()->back()->with('sms','Your SMS successfully sent!');
    }
}
