<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SmsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// auth
Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// pages
Route::get('/', [PageController::class, 'homePage'])->name('welcome');
Route::get('/about', [PageController::class, 'aboutPage'])->name('about');
Route::get('/news', [PageController::class, 'newsPage'])->name('news');
Route::get('/news/{id}', [PageController::class, 'news'])->name('newsPage');
Route::get('/contact', [PageController::class, 'contactPage'])->name('contact');
Route::post('/send-email', [PageController::class, 'sendMail'])->name('send-email');

// comments 
Route::post('add-comment', [CommentController::class, 'addComment'])->name('add-comment');

// admin panel
Route::group(['middleware' => ['role:admin']], function() {
    Route::get('/admin/panel', [AdminController::class, 'enter']);

    Route::get('/admin/dashboard', [AdminController::class, 'dashboard'])
        ->name('dashboard');
    
    Route::get('/admin/dashboard/{id}', [AdminController::class, 'delete'])
        ->name('delete');

    Route::get('/admin/posts', [AdminController::class, 'posts'])
        ->name('posts');
    
    Route::post('/admin/add-post', [AdminController::class, 'addPost'])
        ->name('addPost');

    Route::get('/admin/edit/{id}', [AdminController::class, 'edit'])
        ->name('edit');

    Route::post('/admin/update', [AdminController::class, 'update'])
        ->name('update');

    Route::get('/admin/users', [AdminController::class, 'users'])
        ->name('users');

    Route::get('/admin/userid/{id}', [AdminController::class, 'userId'])
        ->name('userid');

    Route::get('/admin/deleteid/{id}', [AdminController::class, 'deleteid'])
        ->name('deleteid');

    Route::get('/admin/comments', [AdminController::class, 'comments'])
        ->name('comments');

    Route::get('/admin/comments/{id}', [AdminController::class, 'commentid'])
        ->name('commentid');
});

// search
Route::get('/search', [PageController::class, 'search'])->name('search');

// sms
Route::get('/sms', [SmsController::class, 'ind'])->name('sendSMS');
Route::post('/send-sms', [SmsController::class, 'index'])->name('sms');
