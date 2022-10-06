
           <x-layout>
                <div
                    class="bg-gray-50 border border-gray-200 p-10 rounded max-w-lg mx-auto mt-24"
                >
                    <header class="text-center">
                        <h2 class="text-2xl font-bold uppercase mb-1">
                            Checkout
                        </h2>
                        <p class="mb-4">Do good. Be nice. Eat pizza</p>
                    </header>

                    <form method="POST" action="/buynow" enctype="multipart/form-data">

                         @csrf

                        <input
                                type="hidden"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="user_id" value="{{old('name')}}"
                            />

                        <input
                                type="hidden"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="cart" value="{{old('name')}}"
                            />

                        @csrf

                        <div class="mb-6">
                            <label
                                for=""
                                class="inline-block text-lg mb-2"
                                >Your Total <span class="pl-1 pr-1">:</span><span class="text-3xl text-red-700">{{$total}}</span><span class="text-red-700">{{Session::get('multiply.simbol')}}</span></label
                            >
                           
                        </div>

                        <div class="mb-6">
                            <label
                                for="name"
                                class="inline-block text-lg mb-2"
                                >Name</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="name" value="{{old('name')}}"
                            />

                            @error('company')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>
                          <div class="mb-6">
                            <label
                                for="address"
                                class="inline-block text-lg mb-2"
                                >Address</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="address" value="{{old('address')}}"
                            />

                            @error('address')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>
                         <div class="mb-6">
                            <label
                                for="email"
                                class="inline-block text-lg mb-2"
                                >Email</label
                            >
                            <input
                                type="email"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="email" value="{{old('email')}}"
                            />

                            @error('email')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>



                         <div class="mb-6">
                            <button
                                type="submit"
                                class="bg-laravel text-white rounded py-2 px-4 hover:bg-black"
                            >
                                Buy Now
                            </button>
                        </div>
                       





                       
                      
                       
                       
                    </form>
                </div>
                </x-layout>
          
