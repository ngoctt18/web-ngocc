<?php

use Faker\Generator as Faker;

$factory->define(App\CommentNews::class, function (Faker $faker) {
    return [
		'user_id' => App\User::all()->random()->id,
		'news_id' => App\News::all()->random()->id,
		'body' => $faker->realText($maxNbChars = $faker->numberBetween($min = 50, $max = 250), $indexSize = 2),
    ];
});
