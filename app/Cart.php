<?php 

namespace App;

use Session;

class Cart{

	public $items = null;
	public $attributes = null;
	public $totalQty = 0;
	public $totalPrice = 0;

	public function __construct($oldCart){

		if($oldCart){

			$this->items = $oldCart->items;

			$this->totalQty = $oldCart->totalQty;

			$this->totalPrice = $oldCart->totalPrice;







		}

	}

	public function add($item, $id, $attr, $price){






		$storedItem = [

			'qty'=>0,
			'price'=>$price,
			'currenc'=>Session::get('multiply.simbol'),
			
			'item'=>$item



	];

	if(!empty($this->items[$id])){

		



		if(array_key_exists($attr,$this->items[$id])){

			
				$storedItem = $this->items[$id][$attr];


			



		}




	}

	$storedItem['qty']++;

	$storedItem['price'] = $price * $storedItem['qty'];	

	$this->items[$id][$attr] = $storedItem;

	$this->totalQty++;
	
	$this->totalPrice += $price;








	}

	public function minus($item, $id, $attr, $price){




		$storedItem = [

			'qty'=>0,
			'price'=>$price,
			
			'item'=>$item



	];

	if(!empty($this->items[$id])){

		



		if(array_key_exists($attr,$this->items[$id])){

			
				$storedItem = $this->items[$id][$attr];


			



		}




	}

	if($storedItem['qty']>1)

	{

	$storedItem['qty']--;

	$storedItem['price'] = $price * $storedItem['qty'];	

	$this->items[$id][$attr] = $storedItem;

	$this->totalQty--;
	
	$this->totalPrice -= $price;


      }








	}

	public function delete($item, $id, $attr, $price){




	if(!empty($this->items[$id])){

		



		if(array_key_exists($attr,$this->items[$id])){

			$storedItem = $this->items[$id][$attr];

			
				unset($this->items[$id][$attr]);


			



		}




	}

	

	

	//$storedItem['qty']--;

	//$storedItem['price'] = $price * $storedItem['qty'];	

	//$this->items[$id][$attr] = $storedItem;

	$this->totalQty -= $storedItem['qty'];
	
	$this->totalPrice -= $storedItem['qty']*$price;


      








	}


}









































 ?>