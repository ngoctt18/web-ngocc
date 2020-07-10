<?php

use Illuminate\Database\Seeder;
use App\Admin;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Admin::where('username', 'admin')->first();
        if (!$admin) {
            Admin::create([
                'name' => 'Admin',
                'username' => 'admin',
                'phone' => '123456',
                'email' => 'admin@admin.com',
                'password' => '1234560',
                'address' => 'Hưng Yên',
            ]);
        }
        // Admin::create([
        //     'name' => 'Nguyen Dieu Anh',
        //     'username' => 'ndanh00',
        //     'phone' => '1234560',
        //     'email' => 'ndanh00@admin.com',
        //     'password' => '1234560',
        //     'address' => 'Quảng Ninh',
        // ]);
    }
}
