<?php namespace App\Http\Controllers;

use Request;
use App\Models\Vacation;
use App\Models\DestinationImage;

class VacationController extends Controller {

	public function viewAll() {
		$destinations = Vacation::getAll();
		$images = DestinationImage::getAllImages();
		return view("home", ["destinations"=>$destinations,"images"=>$images]);

	}

	public function view($id) {
		$destination = Vacation::get($id);
		$images = DestinationImage::getImagesForDestination($id);
		$allImages = DestinationImage::getAllImages();
		$random = Vacation::randomVacation($id);
		array_slice($random, 0,1);
		return view("vacation_detail", ["destination"=>$destination,"images"=>$images,"allImages"=>$allImages,"random"=>$random]);
		
	}

	// public function viewAccount() {
	// 	return view("account");
	// }

	// public function deleteDestination() {
	// 	Vacation::delete();

	// 	return redirect("account");
	// }







}
