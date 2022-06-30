<!-- menggunakan kerangka dari index.blade.php -->
@extends('index')
 
@section('header')
<h2><center>List Posts</center></h2>
@if($message = Session::get('success'))
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
        </symbol>
    </svg>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
        <strong>{{ $message }}</strong>
    </div>
    @endif
 
@endsection
 
@section('title', 'Halaman Khusus Admin')
 
@section('main')
    <div class="col-md-12 bg-white p-4">
        <a href="/add"><button class="btn btn-primary mb-3">Tambah Post</button></a>
        <a href="/"><button class="btn btn-secondary mb-3">Tampilkan Galeri</button></a>

        <table class="table table-responsive table-bordered table-hover table-stripped">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Tanggal</th>
                    <th>Judul</th>
                    <th>Deskripsi</th>
                    <!-- <th>Media</th> -->
                    <th>Sumber</th>
                    <th width="15%">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($posts as $i => $post)
                    <tr>
                        <td>{{ ++$i }}</td>
                        <td>{{ $post->date }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->content }}</td>
                        <!-- <td>{{ $post->image }}</td> -->
                        <td>{{ $post->source_id }}</td>
                        <td>
                            <a href="/edit/{{ $post->id }}"><button class="btn btn-success">Edit</button></a>
                            <a href="/delete/{{ $post->id }}"><button class="btn btn-danger">Hapus</button></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection