@extends('index')
 
<!-- membuat judul bernama 'Edit Artikel' pada tab bar -->
@section('title', 'Edit Post')
 
@section('header')
<center class="mt-4">
    <h2>Edit Post</h2>
</center>
@endsection
 
@section('main')
<div class="col-md-8 col-sm-12 bg-white p-4">
    <form method="post" action="/edit_process">
    @csrf
	<input type="hidden" value="{{ $post->id }}" name="id">
        <div class="form-group">
            <label>Judul Post</label>
            <input type="text" class="form-control" value="{{ $post->title }}" name="title" placeholder="Judul post">
        </div>
        <div class="form-group">
            <label>Media Post</label>
            <input type="text" class="form-control" value="{{ $post->image }}" name="image" placeholder="Media post">
        </div>
        <div class="form-group">
            <label>Sumber Post</label>
            <input type="text" class="form-control" value="{{ $post->source }}" name="source" placeholder="Sumber post">
        </div>
        <div class="form-group">
            <label>Tanggal</label>
            <input type="date" class="form-control" value="{{ $post->date }}" name="date" placeholder="Tanggal Post">
        </div>
        <div class="form-group">
            <label for="source_id">Pilih Sumber:</label>
            <select class="form-control" id="source_id" name="source_id">
                <option value="1">Twitter</option>
                <option value="2">Youtube</option>
                <option value="3">Vlive</option>
            </select>
        </div>
        <div class="form-group">
            <label>Isi Post</label>
            <textarea class="form-control" name="content" rows="15">{{ $post->content }}
            </textarea>
        </div>
</div>
@endsection
 
<!-- membuat komponen sidebar yang berisi tombol untuk upload artikel -->
@section('sidebar')
<div class="col-md-3 ml-md-5 col-sm-12 bg-white p-4" style="height:120px !important">
    <div class="form-group">
        <label></label>
        <input type="submit" class="form-control btn btn-primary" value="Edit">
</form>
    <a href="/admin"> 
        <button class="btn btn-info text-white w-100 mt-2">Back</button> 
    </a>
    </div>
</div>

@endsection