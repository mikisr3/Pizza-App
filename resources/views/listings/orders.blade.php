@php

//dd($orders[0]->cart[19]['medium']['item']->user_id);

// foreach($orders as $key=>$value){

//   foreach($value['cart'] as $key1=>$value1){

//   	foreach($value1 as $key3=>$value3){



// 	dd($value3);



// }


// }

// }



//dd($orders);

//dd($id);






@endphp



<x-layout>

	 @foreach($orders as $key=>$value)

        @foreach($value['cart'] as $key1=>$value1)

        	@foreach($value1 as $key3=>$value3)

        	@if($value3['item']['user_id'] == $id)

	 <div class="mt-10 bg-gray-50 border border-gray-200 p-10 rounded">

       



                    <table class="w-9/12 table-auto m-auto rounded-sm">
                        <tbody>

                        	


                            <tr class="border-gray-300">
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg text-center"
                                >
                                    <a href="">
                                       <span class="text-red-700 text-xl font-semibold">{{$value3['item']['name']}}</span> | <span class="text-xl uppercase font-bold  pl-2 pr-2">{{$key3}}</span> | <span>{{$value['address']}}</span>
                                    </a>
                                </td>
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg text-center w-2/5"
                                >
                                    <div class="text-center">
                                   

                                    	<span class="text-red-700 text-xl font-semibold">Quantity</span><span> : </span><span class="text-2xl font-bold align-bottom pl-2 pr-2">{{$value3['qty']}}</span>
                                    	
                                    </div>
                                </td>
                                <td
                                    class="px-4 py-8 border-t border-b border-gray-300 text-lg"
                                >
                                    <div class="text-center">
                                   

                                    	<span class="align-baseline pl-2 pr-2">{{$value['created_at']->format('d')}}/{{$value['created_at']->format('m')}}/{{$value['created_at']->format('y')}}</span> | <span class="font-bold text-2xl text-red-700 align-baseline pl-2 pr-2">{{$value['created_at']->format('H')}} : {{$value['created_at']->format('i')}}</span>
                                    	
                                    </div>
                                </td>
                               
                            </tr>


                            
                            


                            
                        </tbody>
                    </table>

                    <div style="margin-left: 53%;" class="w-3/12 text-center flex align-bottom m-auto">
                    	 <h3
                            class="border-l border-r border-t border-b border-gray-300 pt-1 pb-1 pl-4 pr-4 text-xl text-center font-medium my-6 uppercase"
                        >
                            Total Price<span class="pl-4 pr-4">:</span><span class="text-4xl text-red-700">{{$value3['price']}}</span><span class="text-red-700">{{$value3['currenc']}}</span>
                        </h3>

                       
                    </div>




                </div>

                @endif

                @endforeach

                @endforeach

                @endforeach
                <div  class="mt-6 p-4 m-auto w-6/12">
    
					{{ $orders->links() }}

					</div>
                
</x-layout>