<?php

use Illuminate\Database\Seeder;
use App\News;

class News2TableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	factory(News::class, 30)->create();
    }
}
