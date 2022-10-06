<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OrderMail extends Mailable
{
    use Queueable, SerializesModels;

    public $items;

    public $totalQty;

    public $totalPrice;

    public $name;

    public $email;

    public $address;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($cart,$name,$email,$address)
    {
        $this->totalQty = $cart->totalQty;

        $this->totalPrice = $cart->totalPrice;

        $this->items = $cart->items;

        $this->name = $name;

        $this->email = $email;

        $this->address = $address;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('email.OrdersMail',[

            'totalPrice'=> $this->totalPrice,

            'totalQty'=> $this->totalQty,

            'items'=> $this->items,

            'name'=> $this->name,

            'email'=> $this->email,

            'address'=> $this->address


        ]);
    }
}
