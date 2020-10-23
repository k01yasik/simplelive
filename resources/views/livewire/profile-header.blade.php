<div class="h-full flex flex-row items-center">
    <img src="/storage/{{ $user->avatar->path }}" class="h-8 w-8 rounded-full mr-4" width="32" height="32" />
    <a href="{{ route('profile.show', ['username' => $user->name]) }}" class="text-white mr-8">{{ $user->name }}</a>
</div>
