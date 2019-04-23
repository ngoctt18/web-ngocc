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

        if ($account) {
            return $account->user;
        } else {
            $userEmail = User::whereEmail($providerUser->getEmail())->first();

            if ($userEmail) {
                dump('Đã trùng Email');
                return $userEmail;
            }

            
            $accUsername = User::where('username', str_slug($providerUser->getName(), '-'))
            ->first();
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
            return $user;
        }
    }
}