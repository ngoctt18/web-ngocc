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
    		'username' => 'tranngoc',
    		'phone' => '0987465780',
    		'email' => 'tranngoc@writer.com',
    		'password' => '0987465780',
    		'address' => 'Hưng Yên',
    		'verified' => true,
    		'status' => 1,
    	]);
        
        // factory(Writer::class, 2)->create();
    }
}
