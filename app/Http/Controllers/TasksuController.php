<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTaskRequest;
use App\Http\Requests\UpdateTaskRequest;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Symfony\Component\HttpFoundation\Response;

class TasksuController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');
        
        $tasksu = Task::all();
        return view('tasksu.index', compact('tasksu'));
    }

    public function create()
    {

        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = User::all();
        return view('tasksu.create', compact('users'));
    }

    public function store(StoreTaskRequest $request)
    {
        Task::create($request->validated());

        return redirect()->route('tasksu.index');
    }

    public function show(Task $tasksu)
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('tasksu.show', compact('tasksu'));
    }

    public function edit(Task $tasksu)
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = User::all();
        return view('tasksu.edit', compact('tasksu', 'users'));
    }

    public function update(UpdateTaskRequest $request, Task $tasksu)
    {
        
        $tasksu->update($request->validated());

        return redirect()->route('tasksu.index');
    }

    public function destroy(Task $tasksu)
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $tasksu->delete();

        return redirect()->route('tasksu.index');
    }
}
