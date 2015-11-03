<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Vacation;
use App\Models\DestinationImage;
use Auth;

class PurchaseController extends Controller {

	public static function minPrice($destination) {
		return $destination->discount_price * .1;

	}

	public static function remainingPrice($destination) {
		return $destination->discount_price - $destination->amount;
	}


	public function checkout(Request $request) {
		$destination_id = $request->input("destination_id");		
		$destination = Vacation::get($destination_id);
		$minimum = self::minPrice($destination);
		// $total = Vacation::totalPurchased()->$this->total;
		return view("checkout",["minimum"=>$minimum,"destination"=>$destination]);
	}

	public function postCheckout(Request $request){

		$amount = $request->input("amount");

		$destination_id = $_GET["destination_id"];
		$vacation = Vacation::get($destination_id);

		$user = $request->user();		
		$user->addVacationPayment($vacation, $amount);

		return redirect("account");
	}

	public static function getPayment() {

		return view("payment");
	}
	public static function postPayment(Request $request) {

		$destination_id = $request->input("destination_id");
		$purchase = Vacation::get($destination_id);



		$amount= $request->input("amount");

		$user = $request->user();
		$user->addVacationPayment($purchase, $amount,$destination_id);
		return redirect("/account");

		// return redirect("account", ["purchase"=>$purchase,"destination_id"=>$destination_id]);
	}	

	public static function getPurchase() {
		$vacations = Vacation::getVacations(Auth::user()->id);
		$destination = Vacation::getAll();
		// $remaining = Vacation::remainingBalance($id);

		return view("account", ["vacations"=>$vacations,"destination"=>$destination]);

	}









	

}