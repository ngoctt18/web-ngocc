<?php

use Illuminate\Database\Seeder;
use App\Tag;

class TagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	Tag::create([
            'name' => 'Tips',
    		'slug' => 'Tips',
    	]);
        Tag::create([
            'name' => 'Healthy',
            'slug' => 'Healthy',
        ]);
        Tag::create([
            'name' => 'Milk store',
            'slug' => 'Milk store',
        ]);
        Tag::create([
            'name' => 'Product',
            'slug' => 'Product',
        ]);
        Tag::create([
            'name' => 'Hot',
            'slug' => 'Hot',
        ]);
        Tag::create([
            'name' => 'News',
            'slug' => 'News',
        ]);
        Tag::create([
            'name' => 'Entertainment',
            'slug' => 'Entertainment',
        ]);
    }
}
