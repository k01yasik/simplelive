<nav class="mt-8">
    <ul>
        <li x-data="{ open: false }" @click="open = true" class="menu-item cursor-pointer flex flex-col bg-gray-700 hover:bg-gray-900 rounded text-gray-500 hover:text-gray-300 transition-all ease-in-out duration-500">
            <div class="flex flex-row justify-between">
                <div class="flex flex-row">
                    <div class="h-8 w-8 mr-2 flex flex-row justify-center items-center">
                        <svg class="w-4 h-4 fill-current text-gray-500 transition-all ease-in-out duration-500" enable-background="new 0 0 24 24" height="512" viewBox="0 0 24 24" width="512" xmlns="http://www.w3.org/2000/svg"><path d="m22.25 0h-20.5c-.965 0-1.75.785-1.75 1.75v2.5c0 .965.785 1.75 1.75 1.75h20.5c.965 0 1.75-.785 1.75-1.75v-2.5c0-.965-.785-1.75-1.75-1.75z"/><path d="m1.75 24h7.5c.965 0 1.75-.785 1.75-1.75v-12.5c0-.965-.785-1.75-1.75-1.75h-7.5c-.965 0-1.75.785-1.75 1.75v12.5c0 .965.785 1.75 1.75 1.75z"/><path d="m22.25 8h-7.5c-.965 0-1.75.785-1.75 1.75v3.5c0 .965.785 1.75 1.75 1.75h7.5c.965 0 1.75-.785 1.75-1.75v-3.5c0-.965-.785-1.75-1.75-1.75z"/><path d="m22.25 17h-7.5c-.965 0-1.75.785-1.75 1.75v3.5c0 .965.785 1.75 1.75 1.75h7.5c.965 0 1.75-.785 1.75-1.75v-3.5c0-.965-.785-1.75-1.75-1.75z"/></svg>
                    </div>
                    <a href="{{ route('pages.home') }}" class="flex items-center font-bold">Dashboard</a>
                </div>
                <div class="h-8 w-8 flex flex-row justify-center items-center">
                    <svg class="w-4 h-4 fill-current text-gray-500 transition-all ease-in-out duration-500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="444.819px" height="444.819px" viewBox="0 0 444.819 444.819"
                    xml:space="preserve">
                        <g>
                            <path d="M352.025,196.712L165.884,10.848C159.029,3.615,150.469,0,140.187,0c-10.282,0-18.842,3.619-25.697,10.848L92.792,32.264
                            c-7.044,7.043-10.566,15.604-10.566,25.692c0,9.897,3.521,18.56,10.566,25.981l138.753,138.473L92.786,361.168
                            c-7.042,7.043-10.564,15.604-10.564,25.693c0,9.896,3.521,18.562,10.564,25.98l21.7,21.413
                            c7.043,7.043,15.612,10.564,25.697,10.564c10.089,0,18.656-3.521,25.697-10.564l186.145-185.864
                            c7.046-7.423,10.571-16.084,10.571-25.981C362.597,212.321,359.071,203.755,352.025,196.712z"/>
                        </g>
                    </svg>
                </div>
            </div>
            <ul x-show.transition="open" @click.away="open = false" x-cloak class="p-2">
                <li class="h-8 flex flex-row items-center p-2 hover:bg-gray-700 rounded transition-all ease-in-out duration-500">test 1</li>
                <li class="h-8 flex flex-row items-center p-2 hover:bg-gray-700 rounded transition-all ease-in-out duration-500">test 2</li>
            </ul>
        </li>
    </ul>
</nav>
