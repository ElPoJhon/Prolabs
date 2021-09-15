<div>
    
        <x-slot name="header">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Dashboard') }}
            </h2>
        </x-slot>
    
        <div class="py-12">
          
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                  
                    <div class="bg-white px-4 py-3 border-t border-gray-200 sm:px-6">
                        <input 
                            wire:model="search"
                            class="form-input rounded-md shadow-sm mt-1 block w-full text-gray-600 border-gray-200 focus:border-gray-800" 
                            type="text" 
                            placeholder="Buscar...">

                    </div>
                    @if($posts->count())
                  <table class="min-w-full divide-y divide-gray-200">
                    <thead class="bg-gray-50">
                      <tr>
                        <th scope="col" class="cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('id')">
                          ID
                        </th>
                        <th scope="col" class="cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('title')">
                          Titulo
                        </th>
                        <th scope="col" class="cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('content')">
                          Contenido
                        </th>
                        
                        <th scope="col" class="relative px-6 py-3">
                          <span class="sr-only">Edit</span>
                        </th>
                      </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        @foreach($posts as $post)
                      <tr>
                        
                        <td class="px-6 py-4 ">
                          <div class="text-sm text-gray-900">{{$post->id}}</div>
                        </td>
                        <td class="px-6 py-4 ">
                            <div class="text-sm text-gray-900">{{$post->title}}</div>
                          </td>
                        <td class="px-6 py-4 ">
                            <div class="text-sm text-gray-900">{{$post->content}}</div>
                          </td>
                        
                          <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                          
                            <a href="{{ route('posts.show', $post->id) }}" class="text-blue-600 hover:text-blue-900 mb-2 mr-2">Ver</a>
                                   
                          </td>
                      </tr>
                        @endforeach
                      <!-- More items... -->
                    </tbody>
                  </table>
                  <div class="bg-white px-4 py-3 border-t  border-gray-200 sm:px-6">
                    {{$posts->links()}}
                    </div>
                  @else
                  <div class="bg-white px-4 py-3 border-t border-gray-200 text-gray-500 sm:px-6">
                    No hay resultados para la busqueda "{{$search}}"
                    </div>
                  @endif
                </div>
            </div>
        </div>
    
    
</div>
