
@props(['listings'])


<x-card>
{{-- 
@php





@endphp --}}
    
                    <div class="flex">
                        <div class="pr-4">
                            <img
                            class="hidden w-48 mr-6 md:block relative top-1/2 transform -translate-y-1/2"
                            src="{{$listings->logo ? asset('storage/'.$listings->logo) : asset('/images/pizza-logo.png')}}"
                            alt=""
                        />
                        </div>
                        <div class="w-full">
                            <h3 class="text-2xl">
                                <a href="/listings/{{$listings->id}}">{{$listings->name}}</a>
                            </h3>
                            <div class="text-xl font-bold mb-4 pt-2 text-red-700">{{$listings->company}}</div>

                          


                                

                            <x-listing-tags :tagsCsv="$listings->tags"/>

                                <div class="flex items-center mt-3 text-center">
                                    <div class="w-3/12 text-left">

                                       
                                        
                                        <select class="border border-gray-200 rounded w-6/12 font-mono text-xl" id="cars_{{strval($listings->id)}}" onchange="myFunction(this.id)">

                                              <option  value="">Size</option>

                                              @if($listings->small)

                                              <option  value="small">Small</option>
                                              @endif
                                              @if($listings->medium)
                                              <option  value="medium">Medium</option>
                                              @endif
                                              @if($listings->large)
                                              <option  value="large">Large</option>
                                              @endif
                                              

                                        </select>

                                        <script>

                                            function myFunction(id){

                                                 var y = new Array();

                                                    $('#'+id+' option').each(function(){
                                                        y.push(this.value);

                                                    });

                                                    y.shift();

                                                var x = id.split('_',2);

                                                //var y = ['small','medium','large'];

                                               

                                                    

                                                var sel = document.getElementById(id).value;

                                                for (let i = 0; i < y.length; i++){

                                                    document.getElementById(y[i].concat(x[1])).style.fontSize="1.25rem";
                                                    document.getElementById(y[i].concat(x[1])).style.color="black";
                                                     document.getElementById(y[i]+"Simbol".concat(x[1])).style.fontSize="1.25rem";
                                                    document.getElementById(y[i]+"Simbol".concat(x[1])).style.color="black";

                                                }

                                                document.getElementById(sel.concat(x[1])).style.fontSize = "30px";
                                                document.getElementById(sel.concat(x[1])).style.color = "red";
                                                document.getElementById(sel+"Simbol".concat(x[1])).style.fontSize = "30px";
                                                document.getElementById(sel+"Simbol".concat(x[1])).style.color = "red";

                                               

                                               
                                            }

                                        </script>

                                      

                                        
                                    </div>
                                    <div class="w-5/12 text-left">

                                        @if($listings->small)
                                        <span id="small{{strval($listings->id)}}" class="font-mono text-xl">{{round((Session::get('multiply.num'))*$listings->small)}}</span><span id="smallSimbol{{strval($listings->id)}}" class="pr-1 font-mono text-xl">{{Session::get('multiply.simbol')}}</span>
                                        @endif
                                        @if($listings->medium)
                                        <span id="medium{{strval($listings->id)}}" class="font-mono text-xl">{{round((Session::get('multiply.num'))*$listings->medium)}}</span><span id="mediumSimbol{{strval($listings->id)}}" class="pr-1 font-mono text-xl">{{Session::get('multiply.simbol')}}</span>
                                        @endif
                                        @if($listings->large)
                                        <span class="font-mono text-xl" id="large{{strval($listings->id)}}" >{{round((Session::get('multiply.num'))*$listings->large)}}</span><span id="largeSimbol{{strval($listings->id)}}" class="pr-1 font-mono text-xl">{{Session::get('multiply.simbol')}}</span>
                                        @endif
                                    </div>
                                    <div class="w-3/12 text-left">
                                        <button id="add{{strval($listings->id)}}" value="{{strval($listings->id)}}" class="flex items-center justify-center bg-black text-white rounded-md py-1 px-3 mr-2 text-xs h-8 hover:bg-laravel">Add to Cart</button>


                                    </div>

                                    
                                </div>
                            
                            <div class="text-lg mt-4">
                                <i class="fa-solid fa-location-dot"></i>
                                {{$listings->location}}
                            </div>
                        </div>
                    </div>
                </x-card>