<!-- menggunakan kerangka dari halaman index.blade.php --> 
@extends('index')
 
<!-- membuat komponen title sebagai judul halaman -->
@section('title', '423813 Project')
 
<!-- membuat header dan tombol tambah artikel di atas -->
@section('header')
    <center>
        <h1>423-813</h1>
        <!-- <a href="/add"><button class="btn btn-success">Tambah Artikel</button></a> -->
    </center>
@endsection
 
<!--  -->
@section('main')
    <?php
        $currentURL = URL::current();

        for($year=2022; $year>=2015; $year--) { ?>
            <div class="col-md-4 col-sm-12 ">
        <div class="card">
            <!-- <a href="#">
                <img src="#" class="card-img-top" alt="gambar" >
            </a> -->
            <div class="card-body">
                <a href="{{$currentURL}}/<?php echo $year ?>">
                <h5 class="card-title"><?php echo $year ?></h5>
                <?php 
                $months = array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
                foreach(array_values($months) as $m => $month) {?> 
                <a href="{{$currentURL}}/<?php echo $year ?>/<?php echo $m+1 ?>">
                <?php echo $month ?> | 
                </a>
                <?php } ?>
                </a>
            </div>
        </div>
    </div>
    <?php }
    ?>
@endsection