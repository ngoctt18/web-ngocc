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
        $user = User::where('username', 'admin')->first();
        if (!$user) {
           User::create([
              'name' => 'Admin',
              'username' => 'admin',
              'phone' => '0987654321',
              'email' => 'admin@admin.com',
              'password' => '0987654321',
              'address' => 'Hà Nội, Việt Nam',
              'verified' => true,
          ]);
       }

    	// User::create([
    	// 	'name' => 'Anh ND',
    	// 	'username' => 'ndanh',
    	// 	'phone' => '12345678',
    	// 	'email' => 'ndanh@ndanh.com',
    	// 	'password' => '12345678',
    	// 	'address' => 'Quảng Ninh',
    	// ]);

       factory(User::class, 15)->create();
   }
}
