<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Symfony\Component\HttpFoundation\Response;

class PostsuController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('task_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');
        
        $posts = Post::all();
        return view('postsu.index', compact('posts'));
    }

    public function create()
    {

    }

    public function store(StorePostRequest $request)
    {
        
    }

    public function show(Post $post)
    {
        
    }

    public function edit(Post $post)
    {
        
    }

    public function update(UpdatePostRequest $request, Post $post)
    {
        
        
    }

    public function destroy(Post $post)
    {
        
    }
}
