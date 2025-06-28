<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\PostResource;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Traits\ApiResponseTrait;

class PostController extends Controller
{
    use AuthorizesRequests, ApiResponseTrait;

    public function index()
    {
        $posts = Post::with(['user', 'tags', 'comments.user'])->get();
        return $this->apiResponse(PostResource::collection($posts), 'Posts fetched successfully');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'tags' => 'array|exists:tags,id'
        ]);

        $post = Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => Auth::id(),
        ]);
        $post->tags()->sync($request->tags);

        $post->load(['user', 'tags']);
        return $this->apiResponse(new PostResource($post), 'Post created successfully', 201);
    }

    public function show(Post $post)
    {
        $post->load(['user', 'comments.user', 'tags']);
        return $this->apiResponse(new PostResource($post), 'Post fetched successfully');
    }

    public function update(Request $request, Post $post)
    {
        $this->authorize('update', $post);

        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'tags' => 'array|exists:tags,id'
        ]);

        $post->update($request->only(['title', 'content']));
        $post->tags()->sync($request->tags);

        $post->load(['user', 'tags']);
        return $this->apiResponse(new PostResource($post), 'Post updated successfully');
    }

    public function destroy(Post $post)
    {
        $this->authorize('delete', $post);
        $post->delete();
        return $this->apiResponse(null, 'Post deleted successfully');
    }
}
