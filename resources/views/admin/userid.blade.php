@extends('admin.navbar')

@section('content')
    <table class="table table-dark">
        <tr>
            <th>Profile Image</th>
            <th>FirstName</th>
            <th>Email</th>
            <th>Date</th>
        </tr>
        <tr>
                <td><img src="{{ asset('img/profile') }}/{{ $user->image }}" style="width: 75px; height: 75px;"></td>
                <td class="pt-4">{{ $user->name }}</td>
                <td class="pt-4">{{ $user->email }}</td>
                <td class="pt-4">{{ $user->created_at }}</td>
        </tr>
    </table>
@endsection