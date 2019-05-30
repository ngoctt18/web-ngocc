<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(AdminTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(WriterTableSeeder::class);

        $this->call(CatagoryTypeTableSeed::class);
        $this->call(DistributeTableSeed::class);
        $this->call(ProductTableSeed::class);
        
        $this->call(News2TableSeeder::class);
        $this->call(TagTableSeeder::class);
        
        // $this->call(NewTagTableSeeder::class);
        

        $this->call(CommentTableSeeder::class);
        $this->call(CommentNewsTableSeeder::class);
    }
}
