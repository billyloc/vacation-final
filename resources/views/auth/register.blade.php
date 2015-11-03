<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Register</title>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<style>
	/****************************************
  Inherited Syles
*****************************************/

		html {
		    box-sizing: border-box;
		    color: black;
		    font-family: "Open Sans", sans-serif;
		}

		*, *::before, *::after {
		    box-sizing: inherit;
		    color: inherit;
		    font-family: inherit;
		}
		header {
			padding: 50px;
			position: relative;
			background-color: green;
		}
		.logo {
			position: absolute;
			top: 0;
			left: 0;
			color: blue;
			font-size: 35px;
		}
		.login {
			position: absolute;
			bottom: 5px;
			right: 0;
		}
		nav {
			display: flex;
			background-color: blue;
			height: 40px;
			color: white;
			margin: 0px;
		}
		a {
			flex: 2;
			text-align: center;
			margin-top: 10px;
		}
		input {
			color: black;
			height: 100%;
			width: 200px;
			background-color: white;
		}
		body {
			background-color: #F7FAFA;
		}		
		body {
			background-color: #F7FAFA;
		}
		.container {
			width: 960px;
			margin: 0 auto;
		}
		.content {
			margin: 0 auto;
			text-align: center;
			border: 1px solid lightgrey;
			border-radius: 10px;
			width: 800px;
			height: 450px;
			margin-top: 100px;
		}
		form {
			display: flex;
			position: relative;
		}
		form div {
			flex: 1;
			padding: 10px;
		}
		form input {
			width: 350px;
			height: 40px;
			margin: 10px;
		}
		button {
			width: 350px;
			background-color: #2BDE73;
			height: 40px;
			color: white;
			margin: 10px;
			font-size: 20px;
		}
		p {
			background-color: #F8F8F9;
			padding: 25px;
			margin: 0;
		}
		form a {
			color: green;
		}
		button {
			position: absolute;
			bottom: -60px;
			left: 27%;
		}
		h1 {
			border-bottom: 1px solid black;
			width: 200px;
			margin: 0 auto;
			padding-top: 10px;
			padding-bottom: 10px;
		}
	</style>
</head>
<body>
    @if( count($errors) > 0 )
    <div>
        <h2>Form Errors</h2>
        {{{ print_r( $errors->getBags()["default"]->get("email") ) }}}
        <ul>
        @foreach($errors->all() as $error)
            <li>{{$error}}</li>
        @endforeach
        </ul>
    </div>
    @endif
	<nav>
		<a href="/home">Home</a>
		<a href="/account">My Account</a>
		<input type="text" placeholder="search">
		<a href="auth/login">Login</a>				
	</nav>
	<div class="container">
		<div class="content">
			<h1>Register</h1>
			<form action="/auth/register" method="POST">
					{!! csrf_field() !!}
				<div>
					<input type="text" name="first_name" placeholder="First Name"> 
					<input type="text" name="last_name" placeholder="Last Name"> 
					<input type="email" name="email" placeholder="Email"> 
					<input type="password" name="password" placeholder="Password"> 
					<input type="password" name="password_confirmation" placeholder="Password Confirmation"> 

				</div>
				<div>
					<input type="text" name="city" placeholder="City"> 
					<input type="text" name="state" placeholder="State"> 
					<input type="numbers" name="zip" placeholder="Zip Code">
					<input type="text" name="address_1" placeholder="Address">
				</div>

				<button type="submit">Register</button>
			</form>
		</div>
	</div>

</body>
</html>