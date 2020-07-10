<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::where('username', 'trantuanngoctn97')->first();
        if (!$user) {
           User::create([
              'name' => 'Trần Tuấn Ngọc',
              'username' => 'trantuanngoctn97',
              'phone' => '0987654321',
              'email' => 'trantuanngoc@gmail.com',
              'password' => '0987654321',
              'address' => 'Van Giang, Hưng Yên',
              'verified' => true,
          ]);
       }

    	// User::create([
    	// 	'name' => 'Nguyễn Diệu Anh',
    	// 	'username' => 'ndanh00',
    	// 	'phone' => '12345678',
    	// 	'email' => 'ndanh00@ndanh00.com',
    	// 	'password' => '12345678',
    	// 	'address' => 'Quảng Ninh',
    	// ]);

       factory(User::class, 15)->create();
   }
}
