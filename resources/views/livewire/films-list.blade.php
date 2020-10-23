<div>
    <h2 class="h-12 px-8 m-4 rounded shadow flex items-center">Films list</h2>
    <div class="flex flex-row justify-between">
        @foreach($films as $film)
            <livewire:film :film="$film" :key="$film->id">
        @endforeach
    </div>
</div>
