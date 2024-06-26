<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class CreateUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $users = [
            [
               'name'=>'Admin User',
               'email'=>'admin@wakazi.co.ke',
               'type'=>1,
               'password'=> bcrypt('123456'),
            ],
            [
               'name'=>'Manager User',
               'email'=>'manager@wakazi.co.ke',
               'type'=> 2,
               'password'=> bcrypt('123456'),
            ],
            [
                'name'=>'Suppliers',
                'email'=>'supplier@wakazi.co.ke',
                'type'=>3,
                'password'=> bcrypt('123456'),
            ],
            [
               'name'=>'User',
               'email'=>'user@wakazi.co.ke',
               'type'=>0,
               'password'=> bcrypt('123456'),
            ],

        ];

        foreach ($users as $key => $user) {
            User::create($user);
        }
    }
}
