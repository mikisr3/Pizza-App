<x-layout>

	@include('components.sizeData')


@php



//dd($all);

@endphp

<div id="CartData">  

                <div class="bg-gray-50 border border-gray-200 p-10 rounded">
                    <header>
                        <h3
                            class="text-3xl text-center font-medium my-6 uppercase"
                        >
                            Total Items<span class="pl-4 pr-4">:</span><span class="text-4xl text-red-700">{{$totalQty}}</span>
                        </h3>

                    </header>

                    <table class="w-9/12 table-auto m-auto rounded-sm">
                        <tbody>

                        	@if($items)

                           {{--  @php

                            dd($items);

                            @endphp --}}
                        	@foreach($items as $key=>$value)

                        	@foreach($value as $key1=>$value1)


                            <tr class="border-gray-300">
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg text-center"
                                >
                                    <a href="/listings/{{$key}}">
                                       <span class="text-red-700 text-xl font-semibold">{{$value1['item']['name']}}</span> | <span class="text-xl uppercase font-bold  pl-2 pr-2">{{$key1}}</span> | <span>{{$value1['item']['company']}}</span>
                                    </a>
                                </td>
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg text-center w-2/5"
                                >
                                    <span class="text-3xl font-medium" href="">
                                       

                   {{$value1['price']}}






                                   
                                    </span><span>{{Session::get('multiply.simbol')}}</span>
                                </td>
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg"
                                >
                                    <div class="text-center">
                                    	
                                    	<button id="addCart{{$key}}{{$key1}}" value="{{$key1}}|{{$value1['price']/$value1['qty']}}|{{$key}}" class="bg-transparent rounded-full w-8 h-8 border-2 border-rose-600 "><i style="color: #ff0000a1;" class="fas fa-plus" aria-hidden="true"></i></button>
                                    	<span class="align-baseline pl-2 pr-2">{{$value1['qty']}}</span>
                                    	<button id="minusCart{{$key}}{{$key1}}" value="{{$key1}}|{{$value1['price']/$value1['qty']}}|{{$key}}" class="bg-transparent rounded-full w-8 h-8 border-2 border-rose-600 "><i style="color: #ff0000a1;" class="fas fa-minus" aria-hidden="true"></i></button>
                                    </div>
                                </td>
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg"
                                >
                                  {{--   <form method="POST" action="">
 --}}
					                      

					                        <button id="delete{{$key}}{{$key1}}" value="{{$key}}|{{$key1}}|{{$value1['price']/$value1['qty']}}" class="text-red-500"><i class="fa-solid fa-trash"></i></button>
					                        




					              {{--   </form> --}}
                                </td>
                            </tr>

                            @endforeach

                            @endforeach

                            @else

                            <tr>

                            	<td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg text-center"
                                >
                                    
                                       <span class="text-red-700 text-xl font-semibold">Cart is Empty</span>
                                    
                                </td>
                            	

                            </tr>


                            @endif

                            
                            


                            
                        </tbody>
                    </table>

                    <div style="margin-left: 53%;" class="w-4/12 text-center flex align-bottom m-auto">
                    	 <h3
                            class="text-xl text-center font-medium my-6 uppercase"
                        >
                            Total Price<span class="pl-4 pr-4">:</span><span class="text-4xl text-red-700">{{$totalPrice}}</span><span class="text-red-700">{{Session::get('multiply.simbol')}}</span>
                        </h3>

                        <a href="/checkout" class="bg-black text-white p-3 ml-20 h-12 m-auto">Checkout</a>
                    </div>


                </div>

            </div>


            
	






</x-layout>