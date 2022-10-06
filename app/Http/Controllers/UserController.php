<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Validation\Rule;

use App\Models\User;

class UserController extends Controller
{
    //

    public function create(){

        return view('users.register');






    }

    public function store(Request $request){

        $formFields = $request->validate([

            'name'=>['required','min:3'],
            'email'=>['required','email',Rule::unique('users','email')],
            'password'=>'required|confirmed|min:6',
            'location'=>'required',
            'website'=>'required',
            'company'=>['required',Rule::unique('users','company')]
            
           
           
            
            

        ]);

        //hash password

        $formFields['password'] = bcrypt($formFields['password']);

        if($request->coord){

            $pattern = "/^[-+]?([1-8]?\d(\.\d+)?|90(\.0+)?),\s*[-+]?(180(\.0+)?|((1[0-7]\d)|([1-9]?\d))(\.\d+)?)$/";



            if(preg_match($pattern, $request->coord)){

                $formFields['coordinates'] = $request->coord;



            };



            
        }

        //create user

        $user = User::create($formFields);

        //Login 

        auth()->login($user);

        return redirect('/')->with('message', 'User created and logged in');




    }

    //Logout User

    public function logout(Request $request){

        // dd(auth());

        auth()->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/')->with('message','You have been logged out');




    }

    //Show login form

    public function login(){

        return view('users.login');




    }

    //Authenticate

    public function authenticate(Request $request){

         $formFields = $request->validate([

          
            'email'=>['required','email'],
            'password'=>'required'
           
            
            

        ]);

         if(auth()->attempt($formFields)){

            $request->session()->regenerate();

            return redirect('/')->with('message','You are now logged in');


         }else{

            return redirect('/login')->with('message','Wrong Email or Password!');
         }



    }


}
