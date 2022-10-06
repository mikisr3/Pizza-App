<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Validation\Rule;

use Illuminate\Support\Facades\DB;

use App\Mail\OrderMail;

use Illuminate\Support\Facades\Mail;


use App\Models\Listing;

use App\Models\User;

use App\Models\Order;





use App\Cart;

use Session;

class Orders extends Controller
{
    //

    public function store(Request $request){

         

        $formFields = $request->validate([

            
            'name'=>'required',
            'address'=>'required',
            'email'=>'required'


           
          

        ]);


         $oldCart = Session::has('cart') ? Session::get('cart') : null;

             $cart = new Cart($oldCart);

            Mail::to($request->input('email'))->send(new OrderMail($cart,$request->input('name'),$request->input('email'),$request->input('address')));

      

         $formFields['cart'] = serialize($cart->items);



      



        Order::create($formFields);



        return redirect('/')->with('message','Order has been created.Check Mail!');




    }

    public function orders(){

        $orders = Order::latest()->paginate(7);

        $orders->transform(function($order, $key){

            $order->cart = unserialize($order->cart);

            return $order;


        });


          return view('listings.orders',[

        
        'orders'=> $orders,

        'id' => auth()->id()


    ]);



    }
}
