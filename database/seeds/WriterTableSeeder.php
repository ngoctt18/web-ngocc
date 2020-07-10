<?php

use Illuminate\Database\Seeder;
use App\Writer;

class WriterTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	Writer::create([
    		'name' => 'Trần Ngọc Writer',
    		'username' => 'ngocwriter',
    		'phone' => '0987654321',
    		'email' => 'tranngoc@writer.com',
    		'password' => '0987654321',
    		'address' => 'Hưng Yên',
    		'verified' => true,
    		'status' => 1,
    	]);

        // factory(Writer::class, 2)->create();
    }
}
