@extends('admin.navbar')

@section('content')
    <h3 class="text-center text-warning">Messages from {{ $find->name }}</h3> 
    <table class="table table-dark">
        <tr>
            <th>News ID</th>
            <th>Messages</th>
        </tr>
        @forelse($find->comments as $comment)
            <tr>
                <td>{{ $comment->news->id }}</td>
                <td>{{ $comment->message }}</td>
            </tr>
        @empty
            <h3>There are no comments!</h3>
        @endforelse
    </table>
@endsection