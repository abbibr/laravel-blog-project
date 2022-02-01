@extends('main.master')

@section('content')
    <div class="breadcrumb-section breadcrumb-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="breadcrumb-text">
                        <p>These are your requests</p>
                        <h1>Search News</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="latest-news mt-150 mb-150">
        <div class="container">
            <div class="row">
                @forelse($search as $data)
                    <div class="col-lg-4 col-md-6">
                        <div class="single-latest-news">
                            <img src="{{ asset('img') }}/{{ $data->image }}">
                            <div class="news-text-box">
                                <h3><a href="{{ route('newsPage', $data->id) }}">{{ $data->title }}</a></h3>
                                <p class="blog-meta">
                                    <span class="author"><i class="fas fa-user"></i> Admin</span>
                                    <span class="date"><i class="fas fa-calendar"></i>{{ $data->created_at->toTimeString() }}</span>
                                </p>
                                <p class="excerpt">{{ $data->content }}</p>
                                <a href="{{ route('newsPage', $data->id) }}" class="read-more-btn">Read More <i class="fas fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                @empty
                    <h2>We do not have this post!</h2>
                @endforelse
            </div>
        </div>
    </div>
@endsection