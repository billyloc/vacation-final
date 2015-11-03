<?php 

if(Auth::user()) {
	$link = "<a href=\"/auth/logout\">Logout</a>";
} else {
	$link = "<a href=\"/auth/login\">Login</a>";
}


 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{$destination->name}}</title>
	<link rel="stylesheet" href="/css/vacation_detail-stylesheet.css" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="favicon (2).ico">
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.8/slick.css"/>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.8/slick-theme.css"/>
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<style>

	</style>
</head>
<body>
	<nav>
		<a href="/home">Home</a>
		<a href="/account">My Account</a>
		<input type="text" placeholder="search">
		<?= $link  ?>			
	</nav>
	<div class="container">
		<div class="container-content">
			<main>
				<hero>
					<h1>{{$destination->name}}</h1>
					<p>{{ date('F d,Y', strtotime($destination->dest_date))}}</p>
					<img src="{{ $images[0]->getImagePath() }}">
				</hero>
				<div class="buyer_info">
					<div>
						<h1>${{$destination->ten_percent}} Down</h1>
						<p>Total trip cost of {{$destination->discount_price}}</p>
						<form action="/checkout" method="GET">
							<input type="hidden" name="destination_id" value="{{$destination->id}}">						
							<button>BUY</button>
							<select value="quantity">
								<option name="1" id="">1</option>
								<option name="2" id="">2</option>
								<option name="3" id="">3</option>
								<option name="4" id="">4</option>
								<option name="5" id="">5</option>
								<option name="6" id="">6</option>
								<option name="7" id="">7</option>
								<option name="8" id="">8</option>
								<option name="9" id="">9</option>
								<option name="10" id="">10</option>
							</select>	
						</form>
					</div>
					<div>
						<h1>{{$destination->percent_off}}% Discount</h1>
						<p>From ${{$destination->price}}</p>
					</div>
					<div>
						<h1>{{$destination->totalPurchased()}} Purchased</h1>
						<p>{{50 - $destination->totalPurchased() }} Remaining</p>
					</div>
					<div class="terms">
						<p>This project will only be funded if at least 60 people purchase by {{$destination->dest_date}}.</p>
					</div>
				</div>
			</main>
			<aside>
				<div>
					<h1>Roundtrip airfare and hotel, {{$destination->duration}}</h1> 
				</div>
				<div>
					<h1>About this trip</h1>
					<p>{{$destination->description}}</p>
				</div>
				<div>
					<img src="{{ $images[1]->getImagePath() }}">
				</div>
				<div class="middle">
					<img src="{{ $images[2]->getImagePath() }}">
					<img src="{{ $images[3]->getImagePath() }}">
				</div>
				<div>
					<h1>Amenities</h1>
					<p>{{$destination->amenities}}</p>
				</div>
				<div>
					<h1>Whats Popular</h1>
					<p>{{$destination->whats_popular}}</p>
				</div>
				{{-- <div>
					<h1>Whats Included</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae hic vero, dolorem voluptates incidunt consequatur veritatis asperiores ab porro, pariatur, saepe mollitia in. Incidunt, iusto animi cupiditate dolor aliquam sed.</p>
				</div>	 --}}						
			</aside>
				<div><h1>More Great Deals</h1></div>			
			<section>
			@foreach($random as $random)
				<div>
					<a href="{{$random->id}}"><img src="/dest_images/{{$random->default_image}}"></a>
					<a href="{$destination->destination_id}"><p>{{$random->name}}</p></a>
					<p>{{$random->duration}}</p>
					<p>Deposit ONLY ${{$random->ten_percent}}</p>
					<p>${{$random->price}} now ${{$random->discount_price}}</p>
				</div>
			@endforeach							
			</section>
		</div>
	</div>
</body>
</html>