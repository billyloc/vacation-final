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
	<title>My Account</title>
	<link rel="stylesheet" href="/css/account-stylesheet.css" type="text/css">
</head>
<body>
	<nav>
		<a href="/home">Home</a>
		<a href="#">My Account</a>
		<input type="text" placeholder="search">
		<?= $link  ?>			
	</nav>	 
	<main>
		<div class="header">
			<h1>My Vacations</h1>
		</div>	
		<div class="content">
			<div class="user">
				<p></p>
				<p><a href="/account">Summary</a></p>
			</div>	
			@foreach($vacations as $vacation)	
			<div class="user-info">
				<div class="test">
					<div>
						<a href="destination/{{$vacation->id}}"><img src="/dest_images/{{$vacation->default_image}}"></a>
					</div>
					<div>
						<span><h1>{{$vacation->name}}</h1></span>
						<p>{{ date('F d,Y', strtotime($vacation->dest_date))}}</p>
						<progress value="{{$vacation->totalPurchased()}}" max="100"></progress>
						<p><span>{{$vacation->totalPurchased()}} Purchased</span> <span></span></p>
					</div>
					<div>
						<h4>Remaining Balance</h4>
						<p>${{$vacation->topay}}</p> 
						<p><span> <form action="/payment" method="GET"><input type="hidden"  name="destination_id" value="{{$vacation->id}}">
						{!! csrf_field() !!}<button type="submit">Make A Payment</button></form></span></p>
						<p class="cancel"><a href="/delete">Cancel</a></p>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</main>
</body>
</html>