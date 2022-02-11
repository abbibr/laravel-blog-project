<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\News;
use App\Models\User;
use App\Models\Comment;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function enter(Request $req){
        return view('admin.navbar');
    }

    public function dashboard(){
        $news = News::paginate(5);
        return view('admin.dashboard', compact('news'));
    }

    public function delete($id){
        $data = News::findOrFail($id);
        $data->delete();

        return redirect()->back()->with('delete', 'Post successfully deleted!');
    }

    public function posts(){
        return view('admin.posts');
    }

    public function addPost(Request $req){
        $this->validate($req, [
            'title' => 'required',
            'content' => 'required',
            'text' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif',
            'view' => 'required',
        ]);

        $image = $req->image;
        $imagename = time().".".$image->extension();
        $image->move(public_path('img'),$imagename);
        $title = $req->title;
        $content = $req->content;
        $text = $req->text;
        $view = $req->view;

        $news = new News();
        $news->image = $imagename;
        $news->title = $title;
        $news->content = $content;
        $news->text = $text;
        $news->view_count = $view;

        $news->save();
        return redirect()->back()->with('status','Post successfully created!');
    }

    public function edit($id){
        $edit = News::findOrFail($id);
        return view('admin.edit', ['edits' => $edit]);
    }

    public function update(Request $req){
        $this->validate($req, [
            'title' => 'required',
            'content' => 'required',
            'text' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif',
        ]);

        $image = $req->image;
        $imagename = time().".".$image->extension();
        $image->move(public_path('img'),$imagename);
        $title = $req->title;
        $content = $req->content;
        $text = $req->text;

        $update = News::findOrFail($req->id);
        $update->image = $imagename;
        $update->title = $title;
        $update->content = $content;
        $update->text = $text;

        $update->update();
        return redirect()->back()->with('warning','Post successfully updated!');
    }

    public function users(){
        $users = User::where('is_admin',NULL)->get();
        return view('admin.users', compact('users'));
    }

    public function userId($id){
        $user = User::findOrFail($id);
        return view('admin.userid', ['user' => $user]);
    }

    public function deleteid($id){
        $delete = User::findOrFail($id);

        $delete->delete();
        return redirect()->back()->with('deleteid','User successfully deleted!');
    }

    public function comments(){
        $users = DB::table('users')
            ->where('is_admin',NULL)
            ->get();

        return view('admin.comments', compact('users'));
    }

    public function commentid($id){
        $find = User::findOrFail($id);
        return view('admin.commentid', ['find' => $find]);
    }
}
