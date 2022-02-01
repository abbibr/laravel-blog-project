@extends('main.master')

@section('content')
    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Organic Information</p>
						<h1>News Article</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- latest news -->
	<div class="latest-news mt-150 mb-150">
		<div class="container">
			<div class="row">
				@foreach ($datas as $data)
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
				@endforeach

				<div class="d-flex justify-content-center col-lg-12 text-center">
					<div style="font-size: 25px; margin: 10px 0;">{{ $datas->links() }}</div>
				</div>

			</div>

		</div>
	</div>
	<!-- end latest news -->

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