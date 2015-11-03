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
	<link rel="stylesheet" href="/css/payment-stylesheet.css" type="text/css">
</head>
<body>
	<div class="container">
	<nav>
		<a href="/home">Home</a>
		<a href="#">My Account</a>
		<input type="text" placeholder="search">
		<?= $link  ?>			
	</nav>	
		<div class="header">
			<h1>Make A Payment</h1>
		</div>
	<main>	
		<div class="user">
			<p><a href="/account">Summary</a></p>
{{-- 			<p><a href="/payment">Payments</a></p> --}}
		</div>
		<div class="user-info">
			<form action="" method="POST">
				{!! csrf_field() !!}

				<div>
					<label>
						<div>Amount</div>
						<input type=text name="amount">{{--[0-9]{13,16}--}}
					</label>	
				</div>
				<div>				
					<label>
						<div>CC Number <i class="fa fa-credit-card fa-1x"></i></div>
						<input type=text name="cc_number" pattern="[0-9]{1,2}"> {{--[0-9]{13,16}--}}
					</label>
				</div>
				<div>
					<label>
						<div>EXP Date</div>
						<input type="text" name="exp_date" pattern="[0-9][/-, ]{1,2}"></label> {{--[0-9][/-, ]{4,4}--}}
					<label>
				</div>
				<div>
					<label>
						<div>CCV</div>
						<input type="text" name="ccv" pattern="[0-9]{3,3}">
					</label>
				</div>
				<div>
					<label>
						<div>Name</div>
						<input type="text" name="name">
					</label>
				</div>
				<div>
					<label>
						<div>Address</div>
						<input type="text">
					</label>
				</div>
				<div>
					<button>Submit</button>
				</div>
			</form>
		</div>
	</main>
</body>
</html>