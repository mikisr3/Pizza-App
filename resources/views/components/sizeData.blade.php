<script>

	$(document).ready(function(){

		$( "#currency" ).change(function(){

		$("#cur").submit();



		});

		

		@foreach(App\Models\Listing::all() as $listing)

	$( "#add{{strval($listing->id)}}" ).click(function() {


 doBounce($(this), 1, '5px', 300);  
		

		var cat = $(this).val();

		var attr = $("#cars_{{strval($listing->id)}}").val();

		 var price = $("#"+attr+cat).text();



		 //price = price.substr(0, price.length - 1);

		  console.log(price);


  $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/ajaxCall')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){

  		//console.log(response);

  		 $("#totalQty").html(response);



  	}



  });


});

	@foreach(['small','medium','large'] as $att)

	$( "#addCart{{strval($listing->id)}}{{$att}}" ).click(function() {


// doBounce1($(this), 1, '0.25rem', 300);  
		

		// var x = explode("|",$(this).val());

		var x = ($(this).val()).split("|");

		//console.log(x);

		var attr = x[0];

		 var price = x[1];

		 var cat = x[2];


  $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/ajaxCallCart')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){


  		  $("#CartData").html(response);


  	}



  });

   $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/ajaxCall')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){

  		//console.log(response);

  		 $("#totalQty").html(response);



  	}



  });


});

	$( "#minusCart{{strval($listing->id)}}{{$att}}" ).click(function() {


// doBounce1($(this), 1, '0.25rem', 300);  
		

		// var x = explode("|",$(this).val());

		var x = ($(this).val()).split("|");

		//console.log(x);

		var attr = x[0];

		 var price = x[1];

		 var cat = x[2];


  $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/ajaxCallCartMinus')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){


  		  $("#CartData").html(response);


  	}



  });

   $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/ajaxCallMinus')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){

  		//console.log(response);

  		 $("#totalQty").html(response);



  	}



  });


});

	$( "#delete{{strval($listing->id)}}{{$att}}" ).click(function() {


// doBounce1($(this), 1, '0.25rem', 300);  

console.log("klklk");
		

		// var x = explode("|",$(this).val());

		var x = ($(this).val()).split("|");

		//console.log(x);

		var attr = x[1];

		  var price = x[2];

		 var cat = x[0];


  $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/deleteAttrAll')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){


  		  $("#CartData").html(response);


  	}



  });

   $.ajax({

  	type:'get',

  	dataType:'html',

  	url:'{{url('/deleteAttr')}}',

  	data: 'cat_id=' + cat + '&attr=' + attr + '&price='+ price,

  	success:function(response){

  		//console.log(response);

  		 $("#totalQty").html(response);



  	}



  });


});

	@endforeach

	@endforeach

	});

	function doBounce(element, times, distance, speed) {
    for(var i = 0; i < times; i++) {
        element.animate({marginTop: '-='+distance}, 100)
            .animate({marginTop: '+='+distance}, 100);
    }        
}

function doBounce1(element, times, distance, speed) {
    for(var i = 0; i < times; i++) {
        element.animate({width: '+='+distance}, 100);
            element.animate({height: '+='+distance}, 100);
             element.animate({weight: '-='+distance}, 100);
            element.animate({height: '-='+distance}, 100);
    }    

    //  for(var i = 0; i < times; i++) {
       
    // }        
}
	

</script>