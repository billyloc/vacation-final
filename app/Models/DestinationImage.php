<?php 

namespace App\Models;
use DB;

class DestinationImage {
	public $destination_id;
	public $image_name;

	public static function getImagesForDestination($destination_id) {
		$sql = "SELECT * FROM destination_image where destination_id = :id";
		$rows = DB::select($sql, [":id" => $destination_id]);
		$images = [];
		foreach($rows as $row) {
			$image = new DestinationImage();
			$image->destination_id = $row["destination_id"];
			$image->image_name = $row["image_name"];
			$images[] = $image;
		}
		return $images;

	}
	public function getImagePath() {
		return "/dest_images/$this->image_name";
	}

	public static function getAllImages() {
		$sql = "SELECT * from destination_image";
		$rows = DB::select($sql);
		$images = [];
		foreach($rows as $row) {
			$image = new DestinationImage();
			$image->image_name = $row["image_name"];
			$image->destination_id = $row["destination_id"];

			$images[] = $image;

		}
		return $images;

	}

}

 ?>