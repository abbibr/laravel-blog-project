@extends('admin.navbar')

@section('content')

    @if(session()->has('delete'))
        <div class="alert alert-danger">
            {{ session('delete') }}
        </div>
    @endif

    <table class="table table-dark">
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Content</th>
            <th>Text</th>
            <th colspan="2">Actions</th>
        </tr>

        @forelse ($news as $new)
            <tr>
                <td>{{ ($news->currentpage() -1 ) * ($news->perpage()) + $loop->index + 1  }}</td>
                <td>{{ $new->title }}</td>
                <td>{{ $new->content }}</td>
                <td>{{ $new->text }}</td>
                <td>
                    <a href="{{ route('edit', $new->id) }}" class="btn btn-info">
                        <i class="fas fa-edit"></i>
                    </a>
                </td>
                <td>
                    <a href="{{ route('delete', $new->id) }}" class="btn btn-danger">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @empty
            You don`t have any posts!
        @endforelse

    </table>

    {{ $news->links() }}

@endsection