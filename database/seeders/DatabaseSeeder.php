<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use App\Models\Tag;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        User::factory()
            ->count(10)
            ->has(
                Post::factory()
                    ->count(5)
                    ->has(Comment::factory()->count(3))
                    ->has(Tag::factory()->count(2))
            )
            ->create();
    }
}
