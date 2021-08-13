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
                'phone' => '0987654321',
                'email' => 'admin@admin.com',
                'password' => '123456',
                'address' => 'Ha Noi',
            ]);
        }

        // Admin::create([
        //     'name' => 'Anh ND',
        //     'username' => 'ndanhabc',
        //     'phone' => '123456789',
        //     'email' => 'ndanhabc@admin.com',
        //     'password' => '123456789',
        //     'address' => 'Quảng Ninh',
        // ]);
    }
}
