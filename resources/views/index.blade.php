<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script src="{{ asset('js/app.js') }}" defer></script>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{ config('app.name', '423813_Project') }}
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>

                    <!-- batas dropdown -->
                    <li class="nav-item">
                        <a class="nav-link" href="/source/1">Twitter</a>
                    </li>
                    
                    <!-- batas dropdown -->
                    

                    
                    <li class="nav-item">
                        <a class="nav-link" href="/source/2">Youtube</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/source/3">Vlive</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Timeline
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="/page">All</a></li>
                            <li><a class="dropdown-item" href="/source/1/page">Twitter</a></li>
                            <li><a class="dropdown-item" href="/source/2/page">Youtube</a></li>
                            <li><a class="dropdown-item" href="/source/3/page">Vlive</a></li>
                        </ul>
                    </li>
                    @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Admin') }}</a>
                    </li>
                    @if (Route::has('register'))
                    
                    @endif
                    @else
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            {{ Auth::user()->name }} 
                        </a>
 
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="/admin">Admin</a></li>
                            <li><a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                               {{ __('Logout') }}
                            </a>
 
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form></li>
                        </ul>
                    </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>
    <div class="container ">
        @yield('header')
        <div class="row mb-5">
            @yield('main')
            @yield('sidebar')
        </div>
    </div>
    <footer class="bg-light text-center text-lg-start mt-4 fixed-bottom">
  <!-- Copyright -->
  <div class="text-center p-2 text-light" style="background-color: rgba(0, 0, 0, 1);">
    © 2022 Project by:
    <a class="text-light" href="https://twitter.com/kyuunana97" target="_blank">@kyuunana97</a>
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>