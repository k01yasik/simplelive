<!DOCTYPE html>
<html lang="ru" class="antialiased">
    <head>
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Livewire simple app</title>
        <link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
        <link rel="icon" href="/favicon.ico">
        <link rel="manifest" href="/manifest.json">
        <link href="{{asset('scss/app.css')}}" rel="stylesheet">
        @livewireStyles
    </head>
    <body class="font-sans text-base text-gray-800 flex flex-col h-screen">
        <header class="h-12 bg-sungolo flex-grow-0 flex flex-row">
            <div class="w-2/12 bg-sungolo flex flex-row">
                <a href="/" class="h-12 w-12 flex flex-row justify-center items-center"><img src="favicon-32x32.png" /></a>
                <div class="logo h-12 text-white flex flex-row items-center text-xl">Simple IMDB</div>
            </div>
            <div class="w-10/12 flex flex-row flex-wrap justify-end items-center h-full pl-8 pr-10">
                <a href="{{ route('login') }}" class="bg-white px-8 h-8 flex items-center rounded-l text-sungolo">Login</a>
                <a href="{{ route('register') }}" class="bg-butterfly-bush text-white px-8 h-8 flex items-center rounded-r">Registration</a>
            </div>
        </header>
        <main class="flex-grow h-full w-full flex flex-row overflow-hidden">
            <section class="bg-white p-4 w-full overflow-y-auto flex flex-wrap justify-center items-center">
                @yield('content')
            </section>
        </main>
        <footer class="h-12 flex-grow-0 bg-gray-800">
        </footer>
        @include('components.webfont')
        @livewireScripts
        <script src="{{ asset('js/app.js') }}"></script>
    </body>
</html>
