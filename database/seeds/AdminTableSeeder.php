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
                'phone' => '0975853528',
                'email' => 'admin@admin.com',
                'password' => '123456',
                'address' => 'Hưng Yên',
            ]);
        }
        // Admin::create([
        //     'name' => 'Nguyen Dieu Anh',
        //     'username' => 'ndanh00',
        //     'phone' => '123456789',
        //     'email' => 'ndanh00@admin.com',
        //     'password' => '123456789',
        //     'address' => 'Quảng Ninh',
        // ]);
    }
}
