<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Not Found</title>
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
    <style>
        body{
            background: #ddd;
        }
    </style>
</head>
<body>
    
    <section style="padding-top: 100px;">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2 text-center">
                    <h1 style="font-size: 162px;">404</h1>
                    <h2>Page Not Found</h2>
                    <p>We are sorry, the page you requested could not found!</p>
                    <a href="{{ route('welcome') }}" class="btn btn-primary">Visit Homepage</a>
                </div>
            </div>
        </div>
    </section>

</body>
</html>