@extends('admin.navbar')

@section('content')
    <table class="table table-dark">
        <tr>
            <th>#</th>
            <th>FirstName</th>
            <th>Email</th>
        </tr>

        @forelse ($users as $user)
            <tr>
                <td>{{ $loop->index + 1  }}</td>
                <td><a href="{{ route('commentid', $user->id) }}">{{ $user->name }}</a></td>
                <td>{{ $user->email }}</td>
            </tr>
        @empty
            There are not any users!
        @endforelse

    </table>
@endsection