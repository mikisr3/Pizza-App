                            

@props(['tagsCsv'])

@php

$tags = explode(',',$tagsCsv);

//$tags=['mite','lence','damjan'];

//dd($tags);

@endphp

                            <ul class="flex flex-wrap">

                                @foreach($tags as $tag)

                                <li
                                    class="flex items-center justify-center bg-black text-white rounded-md py-1 px-3 mr-2 mt-2 text-xs"
                                >
                                    <a href="/?tag={{$tag}}">{{$tag}}</a>
                                </li>

                                @endforeach
                                
                            </ul>