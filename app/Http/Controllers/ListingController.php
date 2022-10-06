<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Validation\Rule;

use Illuminate\Support\Facades\DB;




use App\Models\Listing;

use App\Models\User;

use App\Models\Order;


use App\Cart;

use Session;

class ListingController extends Controller
{
    public function index(Request $request){

       

         if($request->session()->get('multiply') == NULL){

          

               $request->session()->put('multiply',[

                'num'=>1,

                'name'=>'USD',

                'simbol'=>'$'

               ]);




         }


       

         return view('listings.index',[

        'heading'=>'Latest Listings',

        // 'result'=>$result,


        'listings'=> Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->latest()

         ->filter(request(['tag','search']))

        ->paginate(5)


    ]);


    }

    public function show($id){

        //$listing = Listing::find($id);

        $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($id);

        

         

       


    if($listing){

        return view('listings.show',[

        
        'listing'=> $listing


    ]);


    }else{

        abort('404');
    }



    }

    //Show Create Form

    public function create(){

         return view('listings.create');


    }

    public function store(Request $request){

         

        $formFields = $request->validate([

            
            'name'=>['required',Rule::unique('listings','name')],
           
            'tags'=>'required',
            'description'=>'required'

        ]);

        if($request->hasFile('logo')){

            $formFields['logo'] = $request->file('logo')->store('logos','public');
        }

        $formFields['user_id'] = auth()->id();

        $formFields['small'] = $request->input('small');

        $formFields['medium'] = $request->input('medium');

        $formFields['large'] = $request->input('large');



        Listing::create($formFields);



        return redirect('/')->with('message','Listing created!');




    }

    public function edit($id){

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($id);

        // dd($listing);

        return view('listings.edit',[

        
        'listing'=> $listing


    ]);





    }

    public function update(Request $request,$id){



          
        $listing = Listing::find($id);

        $user = User::find(auth()->id());


        if($listing->user_id != auth()->id()){


            abort(403,'Unauthorized Action');
        }

        $formFields = $request->validate([

            'name'=>'required',
            // 'company'=>['required'],
            // 'location'=>'required',
            // 'website'=>'required',
            // 'email'=>['required','email'],
            'tags'=>'required',
            'description'=>'required',
            'small'=>'required',
            'medium'=>'required',
            'large'=>'required'

        ]);

         $formFields1 = $request->validate([

           // 'name'=>'required',
            'company'=>['required'],
            'location'=>'required',
            'website'=>'required',
            'email'=>['required','email'],
            // 'tags'=>'required',
            // 'description'=>'required'

        ]);

        if($request->hasFile('logo')){

            $formFields['logo'] = $request->file('logo')->store('logos','public');
        }

        if($request->coord){

            $pattern = "/^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$/";



            if(preg_match($pattern, $request->coord)){

                $formFields1['coordinates'] = $request->coord;



            };



            
        }


        $listing->update($formFields);

          $user->update($formFields1);



        return back()->with('message','Listing updated!');




    }

    public function destroy($id){

         $listing = Listing::find($id);

         if($listing->user_id != auth()->id()){


            abort(403,'Unauthorized Action');
        }

         $listing->delete();

         return redirect('/')->with('message','Listing deleted!');






    }

    public function manage(){

        return view('listings.manage',[

            'listings'=>auth()->user()->listings()->get()







        ]);





    }

    public function CurrencyCall(Request $request){

         $req_url = 'https://api.exchangerate.host/latest';

        $response_json = file_get_contents($req_url);

        $result = json_decode($response_json);

        $request->session()->forget('cart');

        $curr = $request->input('currencyOption');

        //dd($curr);

        switch ($curr){

            case "dollar" :

          

             $multiplier = [

                'num'=>1,

                'name'=>'USD',

                'simbol'=>'$'


               ];

             $request->session()->put('multiply', $multiplier);

             break;


            case "denar" :

            $denar = $result->rates->MKD;

            $usd = $result->rates->USD;

             $m = (1/$usd)*$denar;

             //dd(round($m, 4));

               $multiplier = [

                'num'=>$m,

                'name'=>'MKD',

                'simbol'=>'ден'


               ];

             $request->session()->put('multiply', $multiplier);

             break;

            default :

           

              $multiplier = [

                'num'=>1,

                'name'=>'USD',

                'simbol'=>'$'


               ];

             $request->session()->put('multiply', $multiplier);




        }

        return redirect('/')->with('message','Currency Changed!');

        




    }

    public function ajaxCall(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

        $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->add($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

           return $request->session()->get('cart')->totalQty;

       

   
       
    }

    public function deleteAttr(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

         $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->delete($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

           return $request->session()->get('cart')->totalQty;

       

   
       
    }

     public function deleteAttrAll(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

         $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->delete($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

           return view('listings.ViewCartData',[


          'totalPrice'=>$request->session()->get('cart')->totalPrice,

            'totalQty'=>$request->session()->get('cart')->totalQty,

            'items'=>$request->session()->get('cart')->items





           ]);

       

   
       
    }

    public function ajaxCallMinus(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

        $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->minus($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

           return $request->session()->get('cart')->totalQty;

       

   
       
    }


    public function ajaxCallCart(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

        $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->add($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

          

          return view('listings.ViewCartData',[


          'totalPrice'=>$request->session()->get('cart')->totalPrice,

            'totalQty'=>$request->session()->get('cart')->totalQty,

            'items'=>$request->session()->get('cart')->items





           ]);

       

   
       
    }

    public function ajaxCallCartMinus(Request $request){

        $cat_id = $request->cat_id;

        $attr = $request->attr;

        $price = $request->price;

      

       $listing = Listing::select(

             'listings.*',

             'users.email',
             'users.coordinates',
             'users.company',
             'users.location',
             'users.website'


        )



         ->join('users','users.id','=','listings.user_id')

         ->find($cat_id);



         $oldCart = Session::has('cart') ? Session::get('cart') : null;

         $cart = new Cart($oldCart);

         if(!empty($attr)){

         $cart->minus($listing, $cat_id, $attr, $price);
       

         $request->session()->put('cart', $cart);

     }

          

          return view('listings.ViewCartData',[


          'totalPrice'=>$request->session()->get('cart')->totalPrice,

            'totalQty'=>$request->session()->get('cart')->totalQty,

            'items'=>$request->session()->get('cart')->items





           ]);

       

   
       
    }

    public function viewCart(){

        $oldCart = Session::has('cart') ? Session::get('cart') : null;

             $cart = new Cart($oldCart);

          return view('listings.viewCart',[

            // 'listings'=>auth()->user()->listings()->get()

            'totalPrice'=>$cart->totalPrice,

            'totalQty'=>$cart->totalQty,

            'items'=>$cart->items

         


        ]);


    }

    public function checkout(){

        $oldCart = Session::has('cart') ? Session::get('cart') : null;

             $cart = new Cart($oldCart);

        return view('listings.checkout',[

            // 'listings'=>auth()->user()->listings()->get()

            // 'totalPrice'=>$cart->totalPrice,

            // 'totalQty'=>$cart->totalQty,

            // 'items'=>$cart->items

            'total'=> $cart->totalPrice,
            // 'user_id'=>
            // 'cart'=>


        ]);




    }

    public function buynow(){

        $oldCart = Session::has('cart') ? Session::get('cart') : null;

             $cart = new Cart($oldCart);





    }



}
