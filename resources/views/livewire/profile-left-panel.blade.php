<div class="flex flex-col items-center bg-white rounded shadow p-8 relative">
    <img src="/storage/{{ $user->avatar->path }}" class="h-40 w-40 rounded-full shadow mb-4"/>
    <a href="{{ route('profile.show', ['username' => $user->name]) }}" class="text-butterfly-bush-dark text-2xl">{{ $user->name }}</a>
    <p class="text-butterfly-bush font-bold text-sm">{{ $user->email }}</p>
</div>
