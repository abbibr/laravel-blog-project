<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;
use App\Models\Comment;
use App\Rules\PhoneValidation;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;

class PageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', 
            ['only' => ['homePage', 'aboutPage', 'newsPage', 'news', 'contactPage']]);
    }
   
    public function sendEmail(){
        $details = [
            'title' => 'aaa',
            'body' => 'bbb'
        ];

        Mail::to('ibrohimabbosov757@gmail.com')->send(new ContactMail($details));
        return 'success';
    }

    public function homePage(){
        $data = News::latest()->paginate(3);
        return view('welcome', ['datas' => $data]);
    }

    public function aboutPage(){
        return view('about');
    }

    public function newsPage(){
        $data = News::latest()->paginate(9);
        return view('news', ['datas' => $data]);
    }
    public function news($id){
        $find = News::findOrFail($id);
        $news = News::whereBetween('id', [5,9])->get();

        $view = $find->id;
        if(!session()->has($view)){
            $find->increment('view_count');
            session()->put($view,1);
        }

        return view('newsId', ['find' => $find, 'news' => $news]);
    }

    public function contactPage(){
        return view('contact');
    }

    public function sendMail(Request $req){
        $this->validate($req, [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => ['required', 'numeric', new PhoneValidation],
            'subject' => 'required',
            'message' => 'required',
        ]);
        
        $details = [
            'name' => $req->name,
            'email' => $req->email,
            'phone' => $req->phone,
            'subject' => $req->subject,
            'message' => $req->message
        ];

        Mail::to('abbosovibrohim183@gmail.com')->send(new ContactMail($details));
        return redirect()->back()->with('email','Your message has been sent successfully!');
    }

    public function search(){
        $search_text = $_GET['query'];
        $search = News::where('title','LIKE','%'.$search_text.'%')->get();

        return view('search', compact('search'));
    }
}
