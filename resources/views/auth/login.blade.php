<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
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
		.container {
			width: 960px;
			margin: 0 auto;
		}
		.content {
			margin: 0 auto;
			text-align: center;
			border: 1px solid lightgrey;
			border-radius: 10px;
			width: 400px;
			margin-top: 100px;
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
	</style>
</head>
<body>
	<nav>
		<a href="/home">Home</a>
		<a href="/account">My Account</a>
		<input type="text" placeholder="search">
		<a href="auth/login">Login</a>				
	</nav>
	<div class="container">
		<div class="content">
			<h1>Login</h1>
			<form action="/auth/login" method="POST">
					{!! csrf_field() !!}
				<input type="text" name="email" placeholder="Email"> <br>
				<input type="password" name="password" placeholder="password"> <br>
				<button>Log Me In</button>
			</form>
			<p>New To Us? <a href="/auth/register">Sign Up</a></p>
		</div>
	</div>
</body>
</html>

