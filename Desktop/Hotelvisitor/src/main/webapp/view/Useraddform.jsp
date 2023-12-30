<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>Cutomer Details</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	
	<script>
function myFunction() {
  alert("Room Has booked Successfully..");
}
</script>
<style type="text/css">
@charset "UTF-8";

@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

.wrapper {
	max-width: 500px;
	width: 100%;
	background: #fff;
	margin: 50px auto;
	box-shadow: 2px 2px 4px #ba68c8;
	padding: 30px;
}

.wrapper .title {
	font-size: 24px;
	font-weight: 700;
	margin-bottom: 25px;
	color: #ba68c8;
	text-transform: uppercase;
	text-align: center;
}

.wrapper .form {
	width: 100%;
}

.wrapper .form .inputfield {
	margin-bottom: 15px;
	display: flex;
	align-items: center;
	color: #ba68c8;
}

.wrapper .form .inputfield label {
	width: 200px;
	color: #757575;
	margin-right: 10px;
	font-size: 14px;
}

.wrapper .form .inputfield .input, .wrapper .form .inputfield .textarea
	{
	width: 100%;
	outline: none;
	border: 1px solid #d5dbd9;
	font-size: 15px;
	padding: 8px 10px;
	border-radius: 3px;
	transition: all 0.3s ease;
}

.wrapper .form .inputfield .textarea {
	width: 100%;
	height: 125px;
	resize: none;
}

.wrapper .form .inputfield .custom_select {
	position: relative;
	width: 100%;
	height: 37px;
}

.wrapper .form .inputfield .custom_select:before {
	content: "";
	position: absolute;
	top: 12px;
	right: 10px;
	border: 8px solid;
	border-color: #d5dbd9 transparent transparent transparent;
	pointer-events: none;
}

.wrapper .form .inputfield .custom_select select {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	outline: none;
	width: 100%;
	height: 100%;
	border: 0px;
	padding: 8px 10px;
	font-size: 15px;
	border: 1px solid #ba68c8;
	border-radius: 3px;
}

.wrapper .form .inputfield .input:focus, .wrapper .form .inputfield .textarea:focus,
	.wrapper .form .inputfield .custom_select select:focus {
	border: 1px solid #ba68c8;
}

.wrapper .form .inputfield p {
	font-size: 14px;
	color: #757575;
}

.wrapper .form .inputfield .check {
	width: 15px;
	height: 15px;
	position: relative;
	display: block;
	cursor: pointer;
}

.wrapper .form .inputfield .check input[type="checkbox"] {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.wrapper .form .inputfield .check input[type="date"] {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.wrapper .form .inputfield .check .checkmark {
	width: 15px;
	height: 15px;
	border: 1px solid #ba68c8;
	display: block;
	position: relative;
}

.wrapper .form .inputfield .check .checkmark:before {
	content: "";
	position: absolute;
	top: 1px;
	left: 2px;
	width: 5px;
	height: 2px;
	border: 2px solid;
	border-color: transparent transparent #fff #fff;
	transform: rotate(-45deg);
	display: none;
}

.wrapper .form .inputfield .check input[type="checkbox"]:checked ~
	.checkmark {
	background: #ba68c8;
}

.wrapper .form .inputfield .check input[type="checkbox"]:checked ~
	.checkmark:before {
	display: block;
}

.wrapper .form .inputfield .btn {
	width: 100%;
	padding: 8px 10px;
	font-size: 15px;
	border: 0px;
	background: #ba68c8;
	color: #fff;
	cursor: pointer;
	border-radius: 3px;
	outline: none;
}

.wrapper .form .inputfield .btn:hover {
	background: #2e3436;
}

.wrapper .form .inputfield:last-child {
	margin-bottom: 0;
}

@media ( max-width :420px) {
	.wrapper .form .inputfield {
		flex-direction: column;
		align-items: flex-start;
	}
	.wrapper .form .inputfield label {
		margin-bottom: 5px;
	}
	.wrapper .form .inputfield.terms {
		flex-direction: row;
	}
}

.main {
	background-image: url("https://wallpapercave.com/wp/wp1846068.jpg");
	background-position: 120%;
}

.main {
	margin: 0;
	padding-bottom: 100px;
	background-size: 100%;
}
</style>
</head>
<body>
<body>
	<nav class="main">
		<div class="wrapper">
			<div class="title">Customer details</div>
			<form action="/savee" method="post">
				<div class="form">
			
					<div class="inputfield">
						<label>NAME</label> <input type="text" class="form-control"
							id="name" name="name" placeholder="Enter the name">
					</div>
					<div class="inputfield">
						<label>ROOM_NO</label> <input type="text" class="form-control"
							id="roomno" name="roomno" placeholder="Enter Room No">
					</div>

					<div class="inputfield">
						<label>CHECh_IN</label> <input type="date" class="form-control"
							id="checkin" name="checkin" placeholder="select checkindate">
					</div>

					<div class="inputfield">
						<label>CHECh_OUT</label> <input type="date" class="form-control"
							id="checkout" name="checkout" placeholder="select checkoutdate">
					</div>


					<div class="inputfield">
						<input type="submit" onclick="myFunction()" value="submit" class="btn">
					</div>
				</div>
		</div>
		</form>
	</nav>
</body>
</html>
