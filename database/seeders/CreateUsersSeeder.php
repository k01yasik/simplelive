<?php

namespace Database\Seeders;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class CreateUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User;
        $user->name = 'bzdykin';
        $user->email = 'foo@gmail.com';
        $user->email_verified_at = Carbon::now();
        $user->password = Hash::make('password');
        $user->save();

        $user = new User;
        $user->name = 'donald';
        $user->email = 'donald@gmail.com';
        $user->email_verified_at = Carbon::now();
        $user->password = Hash::make('donald');
        $user->save();

        $user = new User;
        $user->name = 'george';
        $user->email = 'george@gmail.com';
        $user->email_verified_at = Carbon::now();
        $user->password = Hash::make('george');
        $user->save();
    }
}
