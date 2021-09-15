<div>
    
        <x-jet-danger-button wire:click="$set('open', true)">
            Agregar Noticia
        </x-jet-danger-button>


        <x-jet-dialog-modal wire:model="open">
            <x-slot name="title">
                Crear Nueva Noticia
            </x-slot>
            <x-slot name="content">
                <div class="mb-4">
                    <x-jet-label value="Titulo de la Noticia"/>
                    <x-jet-input type="text" class="w-full" wire:model="title"/>
                    
                    <x-jet-input-error for="title"/>

                </div>

                <div class="mb-4">
                    <x-jet-label value="Contenido de la Noticia"/>
                    <textarea wire:model.defer="content" class="form-control w-full" rows="6"></textarea>
                    
                    <x-jet-input-error for="content"/>
                </div>
            </x-slot>
            <x-slot name="footer">
                <x-jet-secondary-button wire:click="$set('open', false)">Cancelar</x-jet-secondary-button>
                <x-jet-danger-button wire:click="save">Agregar</x-jet-danger-button>
            </x-slot>
        </x-jet-dialog-modal>
</div>
