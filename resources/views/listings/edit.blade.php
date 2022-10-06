
           <x-layout>
                <div
                    class="bg-gray-50 border border-gray-200 p-10 rounded max-w-lg mx-auto mt-24"
                >
                    <header class="text-center">
                        <h2 class="text-2xl font-bold uppercase mb-1">
                            Edit Pizza
                        </h2>
                        <p class="mb-4">Do good. Be nice. Eat pizza</p>
                    </header>

                    <form method="POST" action="/listings/{{$listing->id}}" enctype="multipart/form-data">

                        @csrf

                        @method('PUT')

                        <div class="mb-6">
                            <label
                                for="name"
                                class="inline-block text-lg mb-2"
                                >Pizza Name</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="name" value="{{$listing->name}}"
                            />

                            @error('name')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>
                         <div class="mb-6">
                            <label for="small" class="inline-block text-lg mb-2">
                                Small
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="small" value="{{$listing->small}}"
                                placeholder="Enter Price"
                            />
                             @error('small')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                          
                        </div>
                         <div class="mb-6">
                            <label for="medium" class="inline-block text-lg mb-2">
                                Medium
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="medium" value="{{$listing->medium}}"
                                placeholder="Enter Price"
                            />
                             @error('medium')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                          
                        </div>
                         <div class="mb-6">
                            <label for="large" class="inline-block text-lg mb-2">
                                Large
                            </label>
                            <input
                                type="number"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="large" value="{{$listing->large}}"
                                placeholder="Enter Price"
                            />
                             @error('large')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                          
                        </div>
                        <div class="mb-6">
                            <label
                                for="company"
                                class="inline-block text-lg mb-2"
                                >Shop Name</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="company" value="{{$listing->company}}"
                            />

                            @error('company')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                       {{--  <div class="mb-6">
                            <label for="title" class="inline-block text-lg mb-2"
                                >Pizza Title</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="title" value="{{$listing->title}}"
                                placeholder="Example: Margherita"
                            />
                            @error('title')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div> --}}

                        <div class="mb-6">
                            <label
                                for="location"
                                class="inline-block text-lg mb-2"
                                >Shop Location</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="location" value="{{$listing->location}}"
                                placeholder="Example: Strumica"
                            />
                            @error('location')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                        <div class="mb-6">
                            <label
                                for="location"
                                class="inline-block text-lg mb-2"
                                >Shop Coordinates</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="coord" value="{{$listing->coordinates}}"
                                placeholder="41.437088,22.6317838...(Optional)"
                            />
                           
                        </div>

                        <div class="mb-6">
                            <label for="email" class="inline-block text-lg mb-2"
                                >Contact Email</label
                            >
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="email" value="{{$listing->email}}"
                            />
                            @error('email')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                        <div class="mb-6">
                            <label
                                for="website"
                                class="inline-block text-lg mb-2"
                            >
                                Website URL
                            </label>
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="website" value="{{$listing->website}}"
                            />
                            @error('website')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                        <div class="mb-6">
                            <label for="tags" class="inline-block text-lg mb-2">
                                Tags (Comma Separated)
                            </label>
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="tags" value="{{$listing->tags}}"
                                placeholder="Example: Cheese,Olive,Mozzarella,Parmesan,Pepperoni"
                            />
                            @error('tags')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                        {{--  <div class="mb-6">
                            <label for="tags" class="inline-block text-lg mb-2">
                                Tags (Comma Separated)
                            </label>
                            <input
                                type="text"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="tags"
                                placeholder="Example: Laravel, Backend, Postgres, etc"
                            /> --}}


                          {{--   <select class="border border-gray-200 rounded p-2 w-full" name="cars" id="cars">
                              <option value="volvo">Volvo</option>
                              <option value="saab">Saab</option>
                              <option value="mercedes">Mercedes</option>
                              <option value="audi">Audi</option>
                            </select> --}}
                       {{--  </div> --}}

                        <div class="mb-6">
                            <label for="logo" class="inline-block text-lg mb-2">
                                Shop Logo
                            </label>
                            <input
                                type="file"
                                class="border border-gray-200 rounded p-2 w-full"
                                name="logo"
                            />
                            <img
                            class="w-48 mr-6 mb-6"
                             src="{{$listing->logo ? asset('storage/'.$listing->logo) : asset('/images/pizza-logo.png')}}"
                            alt=""
                        />

                             @error('logo')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror

                        </div>

                        <div class="mb-6">
                            <label
                                for="description"
                                class="inline-block text-lg mb-2"
                            >
                                Pizza Description
                            </label>
                            <textarea
                                class="border border-gray-200 rounded p-2 w-full"
                                name="description" 
                                rows="10"
                                
                            >
                                {{$listing->description}}
                            </textarea>

                            @error('description')

                            <p class="text-red-500 text-xs mt-1">{{$message}}</p>

                            @enderror
                        </div>

                        <div class="mb-6">
                            <button
                                class="bg-laravel text-white rounded py-2 px-4 hover:bg-black"
                            >
                                Update Pizza
                            </button>

                            <a href="/" class="text-black ml-4"> Back </a>
                        </div>
                    </form>
                </div>
                </x-layout>
          
