@extends('main.master')

@section('content')
    <div class="breadcrumb-section breadcrumb-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="breadcrumb-text">
                        <p>To admin</p>
                        <h1>Send SMS</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="contact-from-section mt-150 mb-150">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="form-title">
                        <h2>Please, enter your information!</h2>
                    </div>
                    <div id="form_status"></div>
                    <div class="contact-form">

                        @if($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        @if(session()->has('sms'))
                            <div class="alert alert-success">
                                {{ session('sms') }}
                            </div>
                        @endif

                        <form action="{{ route('sms') }}" method="post">
                            @csrf
                            <p>
                                <input type="text" autocomplete="off" placeholder="Name" name="name" id="name">
                            <p>
                                <textarea name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                            </p>
                            <input type="submit" value="Send SMS">
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="contact-form-wrap">
                        <div class="contact-form-box">
                            <h4><i class="fas fa-map"></i> Shop Address</h4>
                            <p>Uzbekistan/Tashkent <br> YangiHayot <br> abbibr</p>
                        </div>
                        <div class="contact-form-box">
                            <h4><i class="far fa-clock"></i> Shop Hours</h4>
                            <p>MON - FRIDAY: 8 to 9 PM <br> SAT - SUN: 10 to 8 PM </p>
                        </div>
                        <div class="contact-form-box">
                            <h4><i class="fas fa-address-book"></i> Contact</h4>
                            <p>Phone: +998 90) 001-29-19 <br> Email: ibrohim_abbosov@mail.ru</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection