<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Validation\Rule;


use App\Models\Listing;

class ListingController extends Controller
{
    public function index(){

         // dd(request(['tag']));

         return view('listings.index',[

        'heading'=>'Latest Listings',
        'listings'=> Listing::latest()->filter(request(['tag','search']))->paginate(5)


    ]);


    }

    public function show($id){

        $listing = Listing::find($id);


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

          //dd($request->coord);

          // $request->merge([

          //           'description' => str_replace(array("\r\n","\r","\n","\\r","\\n","\\r\\n"),"&nbsp",$request->description)

          //       ]);

           //dd($request->all());

        // dd($request->file('logo'));

        $formFields = $request->validate([

            'title'=>'required',
            'company'=>['required',Rule::unique('listings','company')],
            'location'=>'required',
            'website'=>'required',
            'email'=>['required','email'],
            'tags'=>'required',
            'description'=>'required'

        ]);

        if($request->hasFile('logo')){

            $formFields['logo'] = $request->file('logo')->store('logos','public');
        }

        if($request->coord){

            $pattern = "/^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$/";



            if(preg_match($pattern, $request->coord)){

                $formFields['coordinates'] = $request->coord;



            };



            
        }


        Listing::create($formFields);



        return redirect('/')->with('message','Listing created!');




    }
}
