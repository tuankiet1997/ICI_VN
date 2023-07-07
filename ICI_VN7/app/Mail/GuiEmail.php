<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class GuiEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $hoten = "";
    public $subject = "";
    public $email = ""; 
    public $noidung = "";

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($ht, $sub, $em, $nd){
        $this->hoten = $ht;
        $this->subject = $sub;
        $this->email = $em;
        $this->noidung = $nd;
    }

    public function envelope() {
        return new Envelope(subject: 'Mail liên hệ từ khách hàng',);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('pages.email');
    }
}
