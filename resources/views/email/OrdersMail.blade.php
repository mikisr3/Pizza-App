@component('mail::message')

Thank you for your Order, {{$name}}!


# Total Items : {{$totalQty}}

@php 

//dd($items);

@endphp


@component('mail::table')

@foreach($items as $key=>$value)

@foreach($value as $key1=>$value1)

| {{$value1['item']['name']}} / {{$key1}} / {{$value1['item']['company']}}        | Price : {{$value1['price']}}{{Session::get('multiply.simbol')}}         | Quantity : {{$value1['qty']}}  |
| ------------------------------------------------------------------------------- |:------------------------------------:| ------------------------------:|

@endforeach

@endforeach

@endcomponent

@component('mail::panel')
Total Price : {{$totalPrice}}{{Session::get('multiply.simbol')}}

Date : {{(new DateTime('now'))->format('d')}}/{{(new DateTime('now'))->format('m')}}/{{(new DateTime('now'))->format('y')}} | {{(new DateTime('now'))->format('H')}} : {{(new DateTime('now'))->format('i')}}

Address : {{$address}}





@endcomponent



Thanks,<br>
Mitko Karachanakov
@endcomponent
