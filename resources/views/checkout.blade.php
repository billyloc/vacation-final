<?php 

if(Auth::user()) {
	$link = "<a href=\"auth/logout\">Logout</a>";
} else {
	$link = "<a href=\"auth/login\">Login</a>";
}



if($_SERVER['REQUEST_METHOD'] === 'POST') {
	if($amount > $vacation->totalPurchased());
} else {
	$msg = "Error: Your payment is more than your remaining balance.";
}


 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Checkout</title>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<link rel="stylesheet" href="/css/checkout-stylesheet.css" type="text/css">
</head>
<body>
	<nav>
		<a href="/home">Home</a>
		<a href="/account">My Account</a>
		<input type="text" placeholder="search">
		<?= $link  ?>				
	</nav>
	<?= $msg  ?>
	<div class="container">
		<div class="content">
			<h1>Payment</h1>
			<form action="" method="POST">
				{!! csrf_field() !!}


				<div>
					<label>
						<span>Amount</span>
						<input type=text name="amount" value="{{$minimum}}">{{--[0-9]{13,16}--}}
					</label>	
				</div>
				<div>				
					<label>
						<span>CC Number <i class="fa fa-credit-card fa-1x"></i></span>
						<input type=text name="cc_number" pattern="[0-9]{1,2}"> {{--[0-9]{13,16}--}}
					</label>
				</div>
				<div>
					<label>
						<span>EXP Date</span>
						<input type="text" name="exp_date" pattern="[0-9][/-, ]{1,2}"></label> {{--[0-9][/-, ]{4,4}--}}
					<label>
				</div>
				<div>
					<label>
						<span>CCV</span>
						<input type="text" name="ccv" pattern="[0-9]{3,3}">
					</label>
				</div>
				<div>
					<label>
						<span>Name</span>
						<input type="text" name="name">
					</label>
				</div>
				<div>
					<label>
						<span>Address</span>
						<input type="text">
					</label>
				</div>
				<div>
					<button>Submit</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>