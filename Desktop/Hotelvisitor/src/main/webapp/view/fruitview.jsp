<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="eng">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>VISITORS LIST</title>
<style type="text/css">
	.container
	{
		margin-left:130px;
		margin-top: 30px;
	}
	
	.logoutbutton{
		margin-top: 40px;
		margin-right: 60px;
	}
.bu{
margin-top: 2ex;
align-content: top;
text-decoration: blink;
background-color: gray;
background-size: 40ex;
}
</style>
</head>
<body>


<br>
<div class="container">
<div class="card " style="height: 60px">
  <div class="card-header" style="height: 60px">
   <h3 style="text-align: center;"> <strong>VISITORS</strong></h3>
  </div>
 </div>
 <br>
 
	<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col" style="text-align: center">ID</th>
      <th scope="col" style="text-align: center"> NAME</th>
      <th scope="col" style="text-align: center"> ROOM_NO</th>
      <th scope="col" style="text-align: center"> CHECKIN</th>
      <th scope="col" style="text-align: center"> CHECKOUT</th>
      <th scope="col" style="text-align: center"> ACTION</th>
      <th scope="col" style="text-align: center">ACTION</th>
   
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${list}" var="fruits">
 		<tr>
 			<td class="table-dark" style="text-align: center">${fruits.id}</td>
 			<td class="table-dark" style="text-align: center">${fruits.name}</td>
 			<td class="table-dark" style="text-align: center">${fruits.roomno}</td>
 			<td class="table-dark" style="text-align: center">${fruits.checkin}</td>
 			<td class="table-dark" style="text-align: center">${fruits.checkout}</td>
 		
 			<td class="table-dark" style="text-align: center">
 			<a href="/deletebyid/${fruits.id}" role="button" class="btn btn-success">DELETE</a></td>
 					<td class="table-dark" style="text-align: center">
				<a href="updateEntry?hid=${fruits.id}"role="button" class="btn btn-success">Update</a></td>
 			
 		</tr>
 		</c:forEach>
 </tbody>
 </table>
 <div style="text-align: center;">
 <a href="/addnew" role="button" class="btn btn-info"><strong>ADD NEW STOCK</strong></a>
 </div>
 </div>	
 
 <a href="/" role="button" class="bu"><strong>HOME</strong></a>
</body>
</html>