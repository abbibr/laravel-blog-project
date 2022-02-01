@extends('admin.navbar')

@section('content')

    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    @if (session()->has('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    <form action="{{ route('addPost') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="text" class="form-label">Title</label>
            <input type="text" class="form-control p-4" id="text" name="title" placeholder="Title" value="{{ old('title') }}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <input type="text" class="form-control p-4" id="content" name="content" placeholder="Content" value="{{ old('content') }}">
        </div>
        <div class="mb-3">
            <label for="view" class="form-label">View News</label>
            <input type="text" class="form-control p-4" placeholder="View News" name="view" id="view">
        </div>
        <div class="form-floating">
            <label for="msg">Texts</label>
            <textarea class="form-control" placeholder="Leave a text here" name="text" id="msg" style="height: 100px">{{ old('text') }}</textarea>
        </div>
        <div class="mt-3 mb-3">
            <label for="formFile" class="form-label">Upload Image</label>
            <input type="file" class="form-control" name="image" id="formFile">
        </div> 
        <button type="submit" class="btn btn-primary mt-3">Add Post</button>
    </form>
@endsection