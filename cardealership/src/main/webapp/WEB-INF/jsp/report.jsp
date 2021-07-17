<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
  </head>

</head>
<body>
<div class="links">
	
	<a href="index">Home</a>
	<a href="buyer">Buyer Space</a>
	<a href="seller-login">Seller Login</a>
	<a href="seller-signup">Seller Signup</a>
</div>
<div class="welcome">
	<div class="welcome-text">
		<h1>Vinnie's Vehicle Vendors</h1>
		<h2>America's #1 Vehicle Shop</h2><br>
	</div>
</div>


<body>
<a href="logout">Logout</a>
<h1>Administrator Report</h1>
	<div id="MyTable">
	<c:choose>
		<c:when test="${not empty sales}">
		<table>
		<thead>
		<tr>
		<th>#</th>
		<th>
		Car
		</th>
		<th>
		Status
		</th>
		<th>
		Price
		</th>
		<th>
		Make
		</th>
		<th>
		Model
		</th>
		<th>
		Mileage
		</th>
		<th>
		Color
		</th>
		<th>
		Drive
		</th>
		<th>
		Fuel
		</th>
		<th>
		Year
		</th>
		
		<th>
		Description
		</th>
		<th>
		Vendor
		</th>
		<th>
		Buyer
		</th>
		<th>
		Date Posted
		</th>
		<th>
		Sold Date
		</th>
		<th>
		Discount Status
		</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${sales}">
		<tr>
		<td>${sales.indexOf(item)+1}.</td>
		<td>
		<a target="_blank" href="/resources/images/${item.picture.originalFilename}">
		<img style="border:1px solid #ddd; border-radius:4px; padding:5px;width:150px;" src="<spring:url value='/resources/images/${item.picture.originalFilename}' />">
		</a>
		</td>
		<td>$${item.sold}</td>
		<td>$${item.price}</td>
		<td>${item.make}</td>
		<td>${item.model}</td>
		<td>${item.mileage}</td>
		<td>${item.color}</td>
		<td>${item.fourWheel}</td>
		<td>${item.fuelType}</td>
		<td>${item.year}</td>
		<td>${item.description}</td>
		<td>${item.seller}</td>
		<td>${item.buyer}</td>
		<td>${item.postedDate}</td>
		<td>${item.soldDate}</td>
		<td>${item.discounted}</td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		</c:when>
		<c:otherwise>
		</c:otherwise>
		</c:choose>
	</div>

</body>
</html>