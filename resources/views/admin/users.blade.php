@extends('admin.navbar')

@section('content')

    @if(session()->has('deleteid'))
        <div class="alert alert-danger">
            {{ session('deleteid') }}
        </div>
    @endif

    <table class="table table-dark">
        <tr>
            <th>#</th>
            <th>FirstName</th>
            <th>Email</th>
            <th>Show User</th>
            <th>Remove User</th>
        </tr>

        @forelse ($users as $user)
            <tr>
                <td>{{ $loop->index + 1  }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>
                    <a href="{{ route('userid', $user->id) }}" class="btn btn-primary" style="margin-left: 25px;">
                        <i class="fas fa-eye"></i>
                    </a>
                </td>
                <td>
                    <a href="{{ route('deleteid', $user->id) }}" class="btn btn-danger" style="margin-left: 25px;">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @empty
            There are not any users!
        @endforelse

    </table>
@endsection