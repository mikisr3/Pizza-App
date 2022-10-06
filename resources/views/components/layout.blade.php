<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" href="images/pizza-logo.png" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
            integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
        <script src="//unpkg.com/alpinejs" defer></script>
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <script>
            tailwind.config = {
                theme: {
                    extend: {
                        colors: {
                            laravel: "#ef3b2d",
                        },
                    },
                },
            };
        </script>
        <title>Do good. Be nice. Order pizza</title>
    </head>
    <body class="mb-48">
      
        <nav class="flex justify-around items-center mb-4">
            <a href="/" class="h-32" 
                ><img class="w-40 h-48" src="{{asset('images/pizza_oven.png')}}" alt="" class="logo"
            /></a>

        {{--     @php

phpinfo();

@endphp --}}

            <ul class="flex space-x-6 mr-6 text-lg">

                @auth

                <li>

                 <span class="font-bold uppercase">Welcome {{auth()->user()->name}}</span>
                </li>

                <li>
                    
                    <a href="/listings/manage" class="hover:text-laravel"
                        ><i class="fa-solid fa-gear"></i>
                        Manage Pizza</a
                    >
                </li>
                <li>
                    
                    <a href="/listings/orders" class="hover:text-laravel"
                        ><i class="fa-solid fa-list"></i>
                        View Orders</a
                    >
                </li>
                <li>
                    <form class="inline" method="POST" action="/logout">

                        @csrf

                        <button type="submit">
                            <i class="fa-solid fa-door-closed"></i>Logout
                        </button>
                        
                    </form>
                </li>

                @else

                <li>
                    <a href="/register" class="hover:text-laravel"
                        ><i class="fa-solid fa-user-plus"></i> Register</a
                    >
                </li>
                <li>
                    <a href="/login" class="hover:text-laravel"
                        ><i class="fa-solid fa-arrow-right-to-bracket"></i>
                        Login</a
                    >
                </li>
                <li class="font-sans block mt-4 lg:inline-block lg:mt-0 lg:ml-6 align-middle text-black hover:text-gray-700">

                      <a href="/view-cart" role="button" class="relative flex">
                        <svg class="flex-1 w-12 h-8 fill-current" viewbox="0 0 24 24">
                          <path d="M17,18C15.89,18 15,18.89 15,20A2,2 0 0,0 17,22A2,2 0 0,0 19,20C19,18.89 18.1,18 17,18M1,2V4H3L6.6,11.59L5.24,14.04C5.09,14.32 5,14.65 5,15A2,2 0 0,0 7,17H19V15H7.42A0.25,0.25 0 0,1 7.17,14.75C7.17,14.7 7.18,14.66 7.2,14.63L8.1,13H15.55C16.3,13 16.96,12.58 17.3,11.97L20.88,5.5C20.95,5.34 21,5.17 21,5A1,1 0 0,0 20,4H5.21L4.27,2M7,18C5.89,18 5,18.89 5,20A2,2 0 0,0 7,22A2,2 0 0,0 9,20C9,18.89 8.1,18 7,18Z"/>
                          </svg>
                          <span id="totalQty" class="absolute -right-3 -top-5 rounded-full bg-red-600 w-8 h-8 top right p-2 m-0 text-white font-mono text-base  leading-tight text-center">

                            {{Session::has('cart') ? Session::get('cart')->totalQty : '0'}}

                  {{--         @stack('custom') --}}


                        </span>
                      </a>

                </li>
                <li>

                     <form id="cur"  method="POST" action="/CurrencyCall" enctype="multipart/form-data">

                         @csrf



                    <select class="border rounded font-mono" name="currencyOption" id="currency">

                                              <option value="">{{Session::has('multiply') ? Session::get('multiply.name') : 'Currency'}}</option>

                                               <option value="dollar">USD</option>

                                             {{--   <option value="euro">Euro</option> --}}

                                               <option value="denar">MKD</option>

                                              
                                             
                                                                                                                                          
                                                                                            

                                        </select>

                                    </form>
                </li>

                @endauth

            </ul>
        </nav>

	<main>

		{{$slot}}
		

	</main>

	  <footer
            class="fixed bottom-0 left-0 w-full flex items-center justify-start font-bold bg-laravel text-white h-24 mt-24 opacity-90 md:justify-center"
        >
            <p class="ml-2">Copyright &copy; 2022, Mite</p>

            <a
                href="/listings/create"
                class="absolute top-1/3 right-10 bg-black text-white py-2 px-5"
                >Add Pizza</a
            >
        </footer>

        <x-flash-message />

    </body>
</html>

	
	
