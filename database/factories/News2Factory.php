<?php

use Faker\Generator as Faker;

$factory->define(App\News::class, function (Faker $faker) {
	return [
		'title' => $faker->sentence(4),
		'slug' => $faker->sentence(4),
		'content' => $faker->paragraph(30), 
		'author_id' => App\Writer::all()->random()->id,
		'status' => 1,
		'count_views' => $faker->randomDigit,
	];
});
