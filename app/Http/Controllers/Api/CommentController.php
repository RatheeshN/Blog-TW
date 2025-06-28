<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Validation\ValidationException;
use App\Http\Resources\CommentResource;
use App\Traits\ApiResponseTrait;

class CommentController extends Controller
{
    use AuthorizesRequests, ApiResponseTrait;

    public function index($postId)
    {
        $post = Post::findOrFail($postId);
        $comments = $post->comments()->with('user')->get();
        return $this->apiResponse(true, 'Comments fetched successfully', CommentResource::collection($comments));
    }

    public function store(Request $request, Post $post)
    {
        try {
            $request->validate([
                'content' => 'required|string'
            ]);
        } catch (ValidationException $e) {
            return $this->apiResponse(false, 'Validation error', $e->errors(), 422);
        }
        $comment = $post->comments()->create([
            'user_id' => Auth::id(),
            'content' => $request->content
        ]);

        return $this->apiResponse(true, 'Comment created successfully', new CommentResource($comment->load('user')), 201);
    }

    public function update(Request $request, Comment $comment)
    {
        $this->authorize('update', $comment);
        try {
            $request->validate([
                'content' => 'required|string'
            ]);
        } catch (ValidationException $e) {
            return $this->apiResponse(false, 'Validation error', $e->errors(), 422);
        }
        $comment->update($request->only('content'));
        return $this->apiResponse(true, 'Comment updated successfully', new CommentResource($comment->load('user')));
    }

    public function destroy(Comment $comment)
    {
        $this->authorize('delete', $comment);
        $comment->delete();
        return $this->apiResponse(true, 'Comment deleted successfully');
    }
}
