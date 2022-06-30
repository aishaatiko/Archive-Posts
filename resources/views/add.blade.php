<!-- membuat kerangka dari index.blade.php -->
@extends('index')
 
<!-- membuat komponen title sebagai judul halaman -->
@section('title', 'Menambah Post')
 
<!-- membuat komponen main yang berisi form untuk mengisi judul dan isi artikel -->
@section('main')
<div class="col-md-8 col-sm-12 bg-white p-4">
    <form method="post" action="/add_process">
    @csrf
        <div class="form-group">
            <label>Judul Post</label>
            <input type="text" class="form-control" name="title" placeholder="Judul post">
        </div>
        <div class="form-group">
            <label>Media Post</label>
            <input type="text" class="form-control" name="image" placeholder="Media post">
        </div>
        <div class="form-group">
            <label>Sumber Post</label>
            <input type="text" class="form-control" name="source" placeholder="Sumber post">
        </div>
        <div class="form-group">
            <label>Tanggal</label>
            <input type="date" class="form-control" name="date" value="{{ old('date') }}">
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
            <textarea class="form-control" name="content" rows="15"></textarea>
        </div>
</div>
@endsection
 
<!-- membuat komponen sidebar yang berisi tombol untuk upload artikel -->
@section('sidebar')
<div class="col-md-3 ml-md-5 col-sm-12 bg-white p-4" style="height:120px !important">
    <div class="form-group">
        <label>Upload</label>
        <input type="submit" class="form-control btn btn-primary" value="Upload">
        </form>

        <a href="/admin"> 
        <button class="btn btn-info text-white w-100 mt-2">Back</button> 
        </a>
    </div>
</div>

@endsection