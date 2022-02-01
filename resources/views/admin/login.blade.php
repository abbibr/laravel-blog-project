@extends('admin.links')

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-4 mt-150">
            <h2 class="text-center">Login Page</h2>

            @if(session()->has('error'))
                <div class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

            <form action="{{ route('enter') }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="username">UserName</label>
                    <input type="text" name="username" id="username" class="form-control">
                    @error('username')
                        <p style="color: red;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control">
                    @error('password')
                        <p style="color: red;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <button class="btn btn-dark">Enter</button>
                </div>
            </form>
        </div>
    </div>
</div>