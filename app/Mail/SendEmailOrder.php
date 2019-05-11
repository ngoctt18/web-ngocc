<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendEmailOrder extends Mailable
{
    use Queueable, SerializesModels;

    // $subject default là tiêu đề của Email
    public $subject = "Hoá đơn bán hàng - Milk Store";
    protected $order;

    public function __construct($order)
    {
        $this->order = $order;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // View hiển thị email trên gmail.com
        return $this->view('website.emails.order_email', ['order' => $this->order]);
    }
}
