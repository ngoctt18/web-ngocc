<?php 

namespace App\Services;

use Laravel\Socialite\Contracts\User as ProviderUser;
use App\User;

class SocialAccountService
{
    // Xử lý tạo mới user hoặc get user từ database
    public static function createOrGetUser(ProviderUser $providerUser, $social)
    {
        // Tìm user
        $account = User::where('provider', $social)
        ->where('provider_id', $providerUser->getId())
        ->first();

        dump('providerUser');
        dump($providerUser);

        // Nếu user của social này đã đăng ký rồi
        if ($account) {
            dump('Đã đăng ký qua social');
            return $account;
        }

        $accEmail = User::where('email', $providerUser->getEmail())
        ->first();
        // Nếu user có email ntn đã đky rồi
        if ($accEmail) {
            dump('Đã trùng email');
            return $accEmail;
        }

        $accUsername = User::where('username', str_slug($providerUser->getName(), '-'))
        ->first();
        // Nếu user có username ntn đã đky rồi
        if ($accUsername) {
            dump('Đã trùng username');
            return $accUsername;
        }

        // User chưa đăng ký
        $user = User::create([
            'name' => $providerUser->getName(),
            'username' => str_slug($providerUser->getName(), '-'),
            'password' => '1234560',
            'email' => $providerUser->getEmail(),
            'provider_id' => $providerUser->getId(),
            'provider' => $social,
        ]);

        dump('User tạo mới');
        auth()->login($user);
        return $user;
        
    }
}
