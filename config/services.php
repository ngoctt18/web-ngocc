<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => env('SES_REGION', 'us-east-1'),
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
        'webhook' => [
            'secret' => env('STRIPE_WEBHOOK_SECRET'),
            'tolerance' => env('STRIPE_WEBHOOK_TOLERANCE', 300),
        ],
    ],

    'facebook' => [
        'client_id' => env('FACEBOOK_APP_ID', '2233734240234108'),
        'client_secret' => env('FACEBOOK_APP_SECRET', '777af889a647028e04274ec16b1f6c86'),
        'redirect' => env('FACEBOOK_APP_CALLBACK_URL', 'http://localhost:8000/homepage/login/callback/facebook'),
    ],

    'github' => [
        'client_id' => env('GITHUB_APP_ID', 'bc055180e4cf75052340'),
        'client_secret' => env('GITHUB_APP_SECRET', '038c39c04d399cd2599c7576a2e790a3604fc8b4'),
        'redirect' => env('GITHUB_APP_CALLBACK_URL', 'http://localhost:8000/homepage/login/callback/github'),
    ],

    'twitter' => [
        'client_id' => env('TWITTER_APP_ID'),
        'client_secret' => env('TWITTER_APP_SECRET'),
        'redirect' => env('TWITTER_APP_CALLBACK_URL'),
    ],

    'google' => [
        'client_id' => env('GOOGLE_APP_ID', '747088189355-ovu2rm0uqno6ekc9vrlir726knubpik2.apps.googleusercontent.com'),
        'client_secret' => env('GOOGLE_APP_SECRET', 'ZBZY450bn8GBALgStU5-x7ab'),
        'redirect' => env('GOOGLE_APP_CALLBACK_URL', 'http://localhost:8000/homepage/login/callback/google'),
    ],


];
