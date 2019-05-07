<?php

use Illuminate\Database\Seeder;
use App\CommentNews;

class CommentNewsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(CommentNews::class, 200)->create();
    }
}
