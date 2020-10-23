<div class="w-1/3 p-4">
    <div class="shadow rounded overflow-hidden">
        <div class="p-8 bg-butterfly-bush">
            <div class="box">
                <img src="/storage/{{ $film->images->where('is_poster', true)->first()->path  }}" class="rounded shadow-xl box-inner" alt="Film poster" />
            </div>
        </div>
        <div class="p-8 text-gray-800">
            <a href="{{ route('film.show', ['slug' => $film->slug]) }}" class="block mb-4">
                <h2 class="text-xl">{{ $film->title }}</h2>
            </a>
            <p class="mb-4">{{ $film->description }}</p>
            <div class="flex flex-row justify-between">
                <p class="text-xs"><span class="font-bold mr-1">Age rating:</span><span class="text-sungolo">{{ $film->agerating }}</span></p>
                <p class="text-xs"><span class="mr-1 font-bold">Duration:</span><span>{{ $film->duration }}</span> minutes</p>
            </div>
            <div class="flex flex-row mt-4 items-baseline">
                <div class="mr-2 text-xs font-bold">Genres:</div>
                <ul class="flex flex-row">
                    @foreach($film->genres as $genre)
                        @if ($loop->last)
                            <li><a href="{{ route('genre.index', ['name' => $genre->name]) }}" class="hover:text-sungolo text-xs">{{ $genre->name }}</a></li>
                        @else
                            <li class="mr-2"><a href="{{ route('genre.index', ['name' => $genre->name]) }}" class="hover:text-sungolo text-xs">{{ $genre->name }}</a>,</li>
                        @endif
                    @endforeach
                </ul>
            </div>
            <div class="flex flex-row mt-4 items-baseline">
                <div class="mr-2 text-xs font-bold">Actors:</div>
                <ul class="flex flex-row">
                    @foreach($film->actors as $actor)
                        @if ($loop->last)
                            <li><a href="{{ route('actors.show', ['slug' => $actor->slug]) }}" class="hover:text-sungolo text-xs">{{ $actor->first_name }} {{ $actor->last_name }}</a></li>
                        @else
                            <li class="mr-2"><a href="{{ route('actors.show', ['slug' => $actor->slug]) }}" class="hover:text-sungolo text-xs">{{ $actor->first_name }} {{ $actor->last_name }}</a>,</li>
                        @endif
                    @endforeach
                </ul>
            </div>
            <div class="flex flex-row justify-end mt-8">
                <a href="{{ route('film.show', ['slug' => $film->slug]) }}" class="px-8 h-12 bg-sungolo text-white rounded hover:bg-sungolo-dark transition-all duration-500 ease-in-out flex items-center">Show more</a>
            </div>
        </div>
    </div>
</div>
