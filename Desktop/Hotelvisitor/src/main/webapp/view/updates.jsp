<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.Hotelvisitors.Hotel"%>
<%@ page import="com.example.Hotelvisitors.HotelConteoller"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>update</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<style type="text/css">
.container {
	margin-top: 150px;
}

.card {
	width: 90px;
}
body{
background-image: url("https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg");
background-size: 100%;
}

.w{

margin-left: 60ex;
margin-top: 180px;
}
</style>
</head>
<body>

	<nav class="w">
		<div class="card" style="width: 20cm;">
			<div class="card-header" style="align-content: center;">
				<strong>ADD NEW DETAILS</strong>
			</div>
			<div class="card-body">

				<form action="/save" method="post">
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label"><strong>id</strong></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="id" name="id"
								value="${fruits.id}" placeholder="Enter ID">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label"><strong>Name</strong></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								value="${fruits.name}" placeholder="Enter the name">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label"><strong>RoomNo</strong></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="roomno" name="roomno"
								value="${fruits.roomno}" placeholder="Enter Room No">
						</div>
					</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label"><strong>Check_In</strong></label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="checkin"
						value="${fruits.checkin}" name="checkin"
						placeholder="Enter the quantity">
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label"><strong>Check_Out</strong></label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="checkout"
						value="${fruits.checkout}" name="checkout"
						placeholder="Enter the quantity">
				</div>
			</div>


			<button type="submit" class="btn btn-success"
				style="align-content: center;">
				<strong>Submit</strong>
			</button>
			</form>
		</div>
	</nav>

</body>
</html>