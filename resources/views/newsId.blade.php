@extends('main.master')

@section('content')
    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Read the Details</p>
						<h1>Single Article</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	
	<!-- single article section -->
	<div class="mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="single-article-section">
						<div class="single-article-text">
							<img src="{{ asset('img') }}/{{ $find->image }}"><br>
							<p class="blog-meta">
                                <br>
								<span class="author"><i class="fas fa-user"></i>Admin</span>
								<span class="date"><i class="fas fa-calendar"></i>{{ $find->created_at->diffForHumans() }}</span>
								<span class="icon"><i class="fas fa-eye"></i>{{ $find->view_count }}</span>
							</p>
                            <h3>{{ $find->title }}</h3>
                            <p>{{ $find->text }}</p>
						</div>

						<div class="comments-list-wrap">
							<h3 class="comment-count-title">
								{{ $find->comments()->count() }} Comments
							</h3>
							<div class="comment-list">
								<div class="single-comment-body">
									@foreach($find->comments as $comment)
										<div class="mb-4">
											<div style="display: flex; align-items: center;">
												<div class="image">
													<img src="{{ asset('img/profile') }}/{{ $comment->user->image }}" style="width: 57px; height: 57px; border-radius: 50%;">
												</div>
												<div class="name" style="margin-left: 7px;">
													<h4>{{ $comment->user->name }}</h4>
													{{ $comment->message }}
												</div>
											</div>
										</div>
									@endforeach
								</div>
							</div>
						</div>

                        @if($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        @if(session()->has('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

						<div class="comment-template">
							<h4>Leave a comment</h4>
							<p>If you have a comment dont feel hesitate to send us your opinion.</p>
							<form action="{{ route('add-comment') }}" method="post">
                                @csrf
								<input type="hidden" name="id" value="{{ $find->id }}">
								<p><textarea name="message" id="comment" cols="30" rows="10" placeholder="Your Message">{{ old('message') }}</textarea></p>
								<p><input type="submit" value="Submit"></p>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="sidebar-section">
						<div class="recent-posts">
							<h4>Recent News</h4>
							<ul>
								@foreach ($news as $new)
									<li><a href="{{ route('newsPage', $new->id) }}">{{ $new->title }}</a></li>
								@endforeach
							</ul>
						</div>
						<div class="archive-posts">
							<h4>Archive Posts</h4>
							<ul>
								<li><a href="#">SEP 2021 (5)</a></li>
								<li><a href="#">JAN 2022 (3)</a></li>
								<li><a href="#">MAY 2021 (4)</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end single article section -->

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/4.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/5.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->
@endsection