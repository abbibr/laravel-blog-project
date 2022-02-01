<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\User;
use App\Models\News;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function addComment(Request $req){
        $this->validate($req, [
            'message' => 'required',
        ]);
        
        /* $req->user()->comments()->create([
            'message' => $req->message,
            'news_id' => $req->news()->comments()
        ]); */

        Comment::create([
            'user_id' => Auth::id(),
            'news_id' => $req->id,
            'message' => $req->message
        ]);

        return redirect()->back()->with('success','Comment successfully created');
    }
}
