<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class UsersTable extends Component
{
    use WithPagination;

    protected $queryString = ['search' => ['except' => '']];

    public $search = '';

    public function render()
    {
        return view('livewire.users-table',[
            'users' => User::where('name', 'LIKE', "%{$this->search}%")
            ->orWhere('email', 'LIKE', "%{$this->search}%")
            ->orWhere('cedula', 'LIKE', "%{$this->search}%")
            ->paginate(5)
        ]);
    }

}
