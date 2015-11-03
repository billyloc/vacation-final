<?php 

namespace App\Models;
use DB;

class Vacation {

        public function save() {

                if(empty($this->id)){
                        $this->insert();
                } else {
                        $this->edit();
                }
        }

        public static function getAll() {

        $sql = "SELECT * FROM destinations";
        $rows = DB::select($sql);
        $destinations = [];

        foreach($rows as $row) {
                $destination = new Vacation();
                $destination->id = $row["id"];
                $destination->name = $row["name"];
                $destination->price = $row["price"];
                $destination->discount_price = $row["discount_price"];
                $destination->default_image = $row["default_image"];
                $destination->duration = $row["duration"];
                $destination->description = $row["description"];
                $destination->ten_percent = $row["ten_percent"];
                $destination->percent_off = $row["percent_off"];                


                $destinations[] = $destination;
        }
                return  $destinations;

        }

        public static function get($id) {
                $sql = "SELECT * FROM destinations where id = :id";
                $row = DB::selectOne($sql, [":id" =>$id]);
                $destination = new Vacation();
                $destination->id = $row["id"];
                $destination->name = $row["name"];
                $destination->price = $row["price"];
                $destination->discount_price = $row["discount_price"];
                $destination->default_image = $row["default_image"];
                $destination->duration = $row["duration"]; 
                $destination->dest_date = $row["dest_date"];
                $destination->description = $row["description"];
                $destination->ten_percent = $row["ten_percent"];
                $destination->percent_off = $row["percent_off"];
                $destination->amenities = $row["amenities"];
                $destination->whats_popular = $row["whats_popular"];
                $destination->whats_included = $row["whats_included"];

                return $destination;

        }

        public static function getPhotos($id) {
                $sql = "SELECT * FROM destination_image where destination_id = :id";
                $rows = DB::select($sql, [":id" => $id]);
                $destinations = new Vacation();
                $destinations->destination_id = $rows[0]["destination_id"];
                $destinations->image_name = $rows[0]["image_name"];

                return $destinations;
        }

        public function delete() {
                $sql = "DELETE from purchase where destination_id = :destination_id";
                DB::delete($sql, [":destination_id"=>$dest->id]);

        }

        // public static function insert() {
        //         $sql = "INSERT into purchase (user_id,destination_id,amount) values (:destination_id,amount)";
        //         DB::insert($sql, [":destination_id"=>$this->$id]);
        // }

// select user_id,destination_id, sum(amount) from purchase where user_id = 3 group by user_id,destination_id;        
        public static function getVacations($user_id) {
                $sql = "select destinations.id, destinations.name, destinations.discount_price, destinations.default_image,
                destinations.dest_date, purchase.user_id, users.first_name,users.last_name, purchase.destination_id, sum(purchase.amount) as paid, 
                sum(purchase.amount) - destinations.discount_price  as topay 
                from destinations, purchase, users where  destinations.id = purchase.destination_id
                and user_id = :user_id group by user_id,destination_id";
                $rows = DB::select($sql, [":user_id"=>$user_id]);

                $vacations = [];
                foreach($rows as $row) {
                        $vacation = new Vacation();
                        $vacation->user_id = $row["user_id"];
                        $vacation->id = $row["destination_id"];
                        $vacation->topay = $row["topay"];
                        $vacation->name = $row["name"];
                        $vacation->discount_price = $row["discount_price"];
                        $vacation->dest_date = $row["dest_date"];
                        $vacation->default_image = $row["default_image"];
                        $vacation->first_name = $row["first_name"];
                        $vacation->last_name = $row["last_name"];
                        $vacations[] = $vacation;
                }


                return $vacations;
        }   

        public static function Payment() {
                $sql = "INSERT into purchase (user_id,destination_id,amount) values (user_id,destination_id,amount)";
                DB::insert($sql);
        }

        public static function randomVacation() {
                $sql = "SELECT * FROM destinations order by rand() limit 3";
                $rows = DB::select($sql);
                $random = [];

                        foreach($rows as $row) {
                        $destination = new Vacation();
                        $destination->id = $row["id"];
                        $destination->name = $row["name"];
                        $destination->price = $row["price"];
                        $destination->discount_price = $row["discount_price"];
                        $destination->default_image = $row["default_image"];
                        $destination->duration = $row["duration"];
                        $destination->description = $row["description"];
                        $destination->ten_percent = $row["ten_percent"];
                        $destination->percent_off = $row["percent_off"];               
                        $random[] = $destination; 

        }
                return  $random;

        }


        public function totalPurchased() {
                $sql = "select count(distinct user_id) as totalPurchased,destination_id from purchase where destination_id = :destination_id ";
                $total = DB::selectOne($sql, ["destination_id"=>$this->id]);

                return $total["totalPurchased"];

        }



        }

     









 ?>