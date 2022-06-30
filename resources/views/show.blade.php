<!-- menggunakan kerangka dari halaman index.blade.php --> 
@extends('index')
 
<!-- membuat komponen title sebagai judul halaman -->
@section('title', '423813 Project')
 
<!-- membuat header dan tombol tambah artikel di atas -->
@section('header')
    <center>
        <h1>423-813</h1>
        
        </center>
    @endsection


<!-- membuat komponen main yang berisi form untuk mengisi judul dan isi artikel -->
@section('main')

    
    @if(count($posts) > 0)
    
    @foreach ($posts as $post)
    
    <div class="col-md-4 col-sm-12 ">
        <div class="card">
            <a href="/detail/{{ $post->id }}">
                <img src="{{ $post->image }}" class="card-img-top" alt="gambar" >
            </a>
            <div class="card-body">
                <h5 class="card-title">{{ $post->title }}</h5>
                <h6 class="card-title">{{ $post->date }}</h6>
                <!-- <a href="/detail/{{ $post->id }}" class="btn btn-primary">Baca Artikel</a> -->
            </div>
        </div>
    </div>
   @endforeach
   @else
    <center>
    <h1> Not Found </h1>
    </center>

   @endif
@endsection