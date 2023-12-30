<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
nav {
	background-color: black;
	height: 70px;
	width: 100%;
}

.head {
	color: white;
	font-size: 40px;
	font-weight: bold;
	line-height: 70px;
	padding: 0 180px;
}

.line {
	padding-top: 30ex;
	border-style: dotted;
	text-align: center;
	margin: 70px;
	background-image:
		url("https://www.ekopamag.com/wp-content/uploads/2017/12/hotel-slogans.jpg");
	font-style: italic;
	font-size: large;
	font-weight: bold;
	color: red;
	
}

body {
	background-color: #F5EEF8;
}

.pd {
	margin-top: 10px;
	font-style: italic;
	font-size: 10ex;
	color: red;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}
Resource	Date	DescriptionResource	Date	Description
HotelConteoller.java	null	Remove this unused "us" local variable.

HotelConteoller.java	null	Remove this unused "us" local variable.

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
</style>
</head>
<body>

	<nav>
		<h4 class="head">WELCOME TO  HOTEL TAJ</h4>

	</nav>
		<div class="topnav">
  <a class="active" href="/">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
   <a href="/register">Register</a>
    <a href="/loginu">Login</a>
    <div class="topnav">
    <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit">Submit</button>
    </form>
  </div>
  </div>
</div>
	<marquee class="pd" width="60%" direction="left" height="100px">Stay With Us Feel like Home..! </marquee>
	<h6 class="line"></h6>

	<div>
		<div class="row">
			
	
	
<div class="col-4 d-flex justtify-content-center text-center">

				<br>
				<br>
				<div class="btn">
					<a role="button" class="btn btn-dark btn-info" href="/admin"><strong>
							ADMIN</strong></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>