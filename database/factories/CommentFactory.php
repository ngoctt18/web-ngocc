<?php

use Faker\Generator as Faker;

$factory->define(App\Comment::class, function (Faker $faker) {
	return [
		'user_id' => App\User::all()->random()->id,
		'product_id' => App\Product::all()->random()->id,
		'body' => $faker->realText($maxNbChars = 100, $indexSize = 2),
	];
});
