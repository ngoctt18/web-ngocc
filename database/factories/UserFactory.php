<?php

use Faker\Generator as Faker;

$factory->define(App\User::class, function (Faker $faker) {
	return [
		'name' => $faker->name,
		'email' => $faker->unique()->safeEmail,
		'username' => $faker->unique()->userName,
		'phone' => $faker->unique()->e164PhoneNumber,
		'address' => $faker->address,
		'password' => '123456',
		'verified' => $verified = $faker->randomElement([true, false]),
	];
});
