<div>

  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __('Dashboard') }}
    </h2>
</x-slot>

  <div class="py-12">
    
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="block mb-8">
          <a href="{{ route('users.create') }}" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">Agregar Usuario</a>
      </div>
          <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">

                <!-- This example requires Tailwind CSS v2.0+ -->
<div class="flex flex-col">
<div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
  <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
    <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
    <div class="bg-white px-4 py-3 border-t border-gray-200 sm:px-6">
    <input 
    wire:model="search"
    class="form-input rounded-md shadow-sm mt-1 block w-full text-gray-600 border-gray-200 focus:border-gray-800" 
    type="text" 
    placeholder="Buscar...">
      </div>
      @if($users->count())
      <table class="min-w-full divide-y divide-gray-200">
        <thead class="bg-gray-50">
          <tr>
            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Nombre
            </th>
            
            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Cedula
            </th>
            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Role
            </th>
            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
              Acciones
            </th>
          </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
        @foreach($users as $user)
          <tr>
            <td class="px-6 py-4 whitespace-nowrap">
              <div class="flex items-center">
                <div class="flex-shrink-0 h-10 w-10">
                  <img class="h-10 w-10 rounded-full" src="{{$user->profile_photo_url}}" alt="{{$user->name}}">
                </div>
                <div class="ml-4">
                  <div class="text-sm font-medium text-gray-900">
                    {{$user->name}}
                  </div>
                  <div class="text-sm text-gray-500">
                    {{ $user->email }}
                  </div>
                </div>
              </div>
            </td>
            
            <td class="px-6 py-4 whitespace-nowrap">
              <div class="text-sm text-gray-500">{{ $user->cedula }}</div>
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              @foreach ($user->roles as $role)
                  <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                   {{ $role->title }}
                   </span>
                   @endforeach
            </td>
            <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
              <a href="{{ route('users.show', $user->id) }}" class="text-blue-600 hover:text-blue-900 mb-2 mr-2">Ver</a>
              <a href="{{ route('users.edit', $user->id) }}" class="text-indigo-600 hover:text-indigo-900 mb-2 mr-2">Editar</a>
              <form class="inline-block" action="{{ route('users.destroy', $user->id) }}" method="POST" onsubmit="return confirm('Estas seguro de eliminar este usuario?');">
                <input type="hidden" name="_method" value="DELETE">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="submit" class="text-red-600 hover:text-red-900 mb-2 mr-2" value="Eliminar">
            </form>
            </td>
          </tr>
          @endforeach

          <!-- More itemms... -->
        </tbody>

      </table>
      <div class="bg-white px-4 py-3 border-t  border-gray-200 sm:px-6">
      {{$users->links()}}
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


      </div>
      </div>
  </div>
</div>
