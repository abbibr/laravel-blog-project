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

    @if(session()->has('warning'))
        <div class="alert alert-warning">
            {{ session('warning') }}
        </div>
    @endif

    <form action="{{ route('update') }}" method="post" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="id" value="{{ $edits->id }}">
        <div class="mb-3">
            <label for="text" class="form-label">Title</label>
            <input type="text" class="form-control p-4" id="text" name="title" placeholder="Title" value="{{ $edits->title }}">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <input type="text" class="form-control p-4" id="content" name="content" placeholder="Content" value="{{ $edits->content }}">
        </div>
        <div class="form-floating">
            <label for="text">Texts</label>
            <textarea class="form-control" placeholder="Leave a text here" name="text" id="text" style="height: 100px">{{ $edits->text }}</textarea>
        </div>
        <div class="mt-3 mb-3">
            <label for="formFile" class="form-label">Upload Image</label>
            <input type="file" class="form-control" name="image" id="formFile">
        </div>          
        <div class="mt-3 mb-3">
            <img src="{{ asset('img') }}/{{ $edits->image }}" style="width: 250px; height:175px;">
        </div>          
        <button type="submit" class="btn btn-info mt-3">Update Post</button>
    </form>
@endsection