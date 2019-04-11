<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ForgetPasswordMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    // $subject default là tiêu đề của Email
    public $subject = "Forget your password.";
    protected $findUser;
    protected $user;

    public function __construct($findUser, $user)
    {
        $this->findUser = $findUser;
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // View hiển thị email trên gmail.com
        return $this->view('website.forget_passwords.mail', ['user' => $this->user, 'findUser' => $this->findUser]);
    }
}
