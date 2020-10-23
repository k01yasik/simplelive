@extends('layouts.auth')

@section('content')
    <div class="w-3/12 p-8 bg-white rounded shadow">
        <div class="flex flex-col items-center mb-8">
            <img src="/mstile-150x150.png" width="160" height="160">
            <h1 class="text-sungolo font-bold text-2xl">Login</h1>
        </div>
        <form action="/login" method="POST" autocomplete="off" class="flex flex-col">
            @csrf
            <label for="name" class="h-12 flex items-center">Username</label>
            <input type="text" id="name" name="name" placeholder="Username" class="h-12 flex items-center border border-gray-300 rounded px-4 focus:outline-none focus:shadow-outline">
            <label for="password" class="h-12 flex items-center">Password</label>
            <input type="password" id="password" name="password" class="h-12 flex items-center border border-gray-300 rounded px-4 focus:outline-none focus:shadow-outline">
            <div class="flex flex-row justify-start mb-8">
                <input type="checkbox" id="remember" name="remember" class="h-12 flex items-center mr-4">
                <label for="remember" class="h-12 flex items-center">Remember me?</label>
            </div>
            <div class="flex flex-row justify-center">
                <button type="submit" class="h-12 w-6/12 flex justify-center items-center bg-sungolo text-white rounded focus:outline-none">Login</button>
            </div>
        </form>
    </div>
@endsection
