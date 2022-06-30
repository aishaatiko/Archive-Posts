@extends('index')
 
<!-- memberikan judul di tab sesuai dengan judul artikel yang sedang dibaca -->
@section('title')
{{ $post->title }}
@endsection
 
<!-- menampilkan image, title, dan content -->
@section('main')
<div class="col-md-7 col-sm-12 mb-5 bg-white p-0">
    <img src="{{ $post->image }}" class="card-img-top" alt="gambar" >
    <div class="p-4">
        <h2>{{ $post->title }}</h2>
        <p>{{ $post->date }}</p>
        <p class="mt-5">{{ $post->content }}</p>
        <?php
        if ($post->source_id == 1) { ?>
            <blockquote class="twitter-tweet">
            <a href="{{ $post->source }}"></a>
        </blockquote> 
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        <?php
        } else { ?>
            <iframe width="560" height="315" src="{{ $post->source }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>    
        <?php
        }
        ?>
        

    </div>
</div>

@endsection
 
<!-- menampilkan tombol kembali ke halaman utama -->
@section('sidebar')
<div class="col-md-4 offset-md-1 col-sm-12 bg-white p-4 h-100">
   <center> 
        <a href="/"> 
            <button class="btn btn-info text-white w-100">Back</button> 
        </a>

        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item mt-4" src="https://www.youtube.com/embed/bagFQCTHXy8" allowfullscreen></iframe>
        </div>
      
    </center>
</div>
@endsection