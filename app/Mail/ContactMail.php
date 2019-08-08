<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Http\Request;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;
    public $mailData;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($mailData)
    {
        $this->mailData = $mailData;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $mail = $this->subject($this->mailData['subject'])
                    ->from($this->mailData['email'], $this->mailData['name'])
                    ->to($this->mailData['to'])
                    ->view('email.contactmail');

        if (isset($this->mailData['uploadFile'])) {
            $mail = $mail->attach($this->mailData['uploadFile'], ['as' => $this->mailData['uploadFile']->getClientOriginalName(), 'mime' => $this->mailData['uploadFile']->getMimeType()]);
        }

        return $mail;
    }
}
