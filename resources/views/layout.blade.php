<title>Document</title>
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
		body {

		}
		header {
			padding: 10px;
			position: relative;
			background-color: green;
		}
		nav {
			display: flex;
			background-color: #1C2C3D;
			height: 40px;
			color: white;
			margin: 0px;
		}
		a {
			flex: 2;
			text-align: center
		}
		input {
			color: black;
			height: 100%;
			width: 200px;
			background-color: white;
		}		
		footer {
			background-color: lightblue;
			padding: 10px;
		}
		footer span {
			float: right;
		}

</style>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<body>
	<nav>
		<a href="/home">Home</a>
		<a href="/account">My Account</a>
		<input type="text" placeholder="search">
		<a href="/auth/login">Login</a>				
	</nav>
	<main>
		@yield("content")
	</main>
		<footer>
		&copy; 2015 
		<i class="fa fa-facebook-official">Facebook</i>
		<i class="fa fa-instagram">Instagram</i>
		<i class="fa fa-twitter">Twitter</i>
		<span><i class="fa fa-apple">App Store</i></span> 
		<span><i class="fa fa-google-plus-square">Google Play</i></span>
	</footer>
</body>
</html>

