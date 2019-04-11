<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

use Illuminate\Support\Facades\Mail;
use App\Mail\ForgetPasswordMail;

class SendEmailForgetPassJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $findUser;
    protected $user;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($findUser, $user)
    {
        $this->findUser = $findUser;
        $this->user = $user;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        // Hàm xử lý gửi Mail.
        Mail::to($this->user->email)->send(new ForgetPasswordMail($this->findUser, $this->user));
    }
}
