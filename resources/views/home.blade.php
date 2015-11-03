<?php 

if(Auth::user()) {
	$link = "<a href=\"auth/logout\">Logout</a>";
} else {
	$link = "<a href=\"auth/login\">Login</a>";
}


 ?>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Vacations</title>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.8/slick.css"/>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.8/slick-theme.css"/>
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<link rel="stylesheet" href="/css/home-stylesheet.css" type="text/css">
</head>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.7/slick.css"/>
<link rel="shortcut icon" href="favicon (2).ico">
<script type="text/javascript" src="http://cdn.jsdelivr.net/jquery.slick/1.5.7/slick.min.js"></script>
<body>
	<main>
		<div class="container">
			<nav>
				<a href="/home">Home</a>
				<a href="/account">My Account</a>
				<input type="text" placeholder="search">
				<?= $link  ?>
			</nav>
			<div class="hero">
				<div class="carousel">			
	 				<div><img src="/dest_images/bigstock-Colorful-seaside-beach-sunrise-64215775.jpg"></div>
	 				<div><img src="/dest_images/bigstock-Beautiful-Venice-cityscape-vi-82277255.jpg"></div>
	 				<div><img src="/dest_images/bigstock-Sensoji-Japanese-Temple-At-Nig-101766485.jpg"></div>
				</div>
				<div class="hero-text-container">
					<div class="hero_text">Your Dream Vacation Starts Now</div>
					<div class="small-text">Make an easy 10% Deposit and your one step closer to making memories that will last a lifetime.</div>
				</div>
			</div>
		</div>
	</main>
	<aside>
		<div class="tiles">
			@foreach($destinations as $dest)
			<div class="vaca">
				<p class="image"><a href="destination/{{$dest->id}}"><img src="/dest_images/{{$dest->default_image}}">{{$dest->name}}</a></p>
				<p class="price">${{$dest->ten_percent}}</p>
				<p id="percent">{{$dest->percent_off}}% OFF</p>
				<p ><progress class="progress" value="{{$dest->totalPurchased()}}" max="100"></progress></p>
				<ul class="backers">
					<div class="backers-border">
						<h1>{{$dest->totalPurchased()}}</h1>
						<p>Purchased</p>
					</div>
					<div>
						<h1>{{50 - $dest->totalPurchased() }}</h1>
						<p>Remaining</p>
					</div>
				</ul>				
			</div>
			@endforeach
		</div>
	</aside>

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="bower_components/slick-carousel/slick/slick.js"></script>
	<script>
		$(function(){
			$('.carousel').slick({
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  autoplay: true,
			  autoplaySpeed: 3000,
			});
		});
	</script>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/jquery.slick/1.5.8/slick.min.js"></script>
</body>
</html>
