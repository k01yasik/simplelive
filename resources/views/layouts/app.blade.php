<!DOCTYPE html>
<html lang="ru">
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
        <link rel="manifest" href="/manifest.json">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="preconnect" href="https://www.googletagmanager.com">
        <link rel="preconnect" href="https://www.google-analytics.com">
        <link rel="preconnect" href="https://ajax.googleapis.com">
        <link rel="preconnect" href="https://mc.yandex.ru/">
        <link href="{{asset('scss/app.css')}}" rel="stylesheet">
    </head>
    <body class="bg-gray-300 font-sans text-base text-gray-800">
        <header class="h-12 bg-indigo-800 text-white">
            <div class="container mx-auto flex flex-row flex-wrap justify-between items-center h-full">
                <div class="py-1 px-8 bg-pink-500 text-white rounded-md">Hello, world!</div>
                <div>How are you?</div>
            </div>
        </header>
        <div class="main">
            <main>
                @yield('content')
            </main>
            <aside>
            </aside>
        </div>
        <footer>
        </footer>
        @include('components.webfont')
        <script src="{{ asset('js/app.js') }}"></script>
    </body>
</html>
