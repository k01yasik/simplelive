<div class="flex flex-col bg-white p-8 shadow-md rounded w-3/12">
    <h1 class="text-gray-800 flex justify-center mb-8 text-xl">Simple counter</h1>
    <div class="flex flex-row justify-center">
        <div class="mr-8 px-8 bg-vivid-violet text-white rounded-full flex items-center shadow-md">Counts: <span class="ml-4">{{ $count }}</span></div>
        <button wire:click="increment" class="w-12 h-12 bg-sungolo hover:bg-sungolo-dark focus:outline-none text-white rounded-full shadow-md">+</button>
    </div>
</div>
