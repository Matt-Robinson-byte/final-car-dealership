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
<div>
<h3>Available Cars</h3>
	<div>
	<c:choose>
		<c:when test="${not empty sales}">
		<table>
		<thead>
		<tr>
		<th>
		Picture
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
		Date Posted
		</th>
		<th>
		Description
		</th>
		<th>
		Discount Status
		</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${sales}">
		<tr>
		<td>
		<a target="_blank" href="/resources/images/${item.picture.originalFilename}">
		<img style="border:1px solid #ddd; border-radius:4px; padding:5px;width:150px;" src="<spring:url value='/resources/images/${item.picture.originalFilename}' />">
		</a>
		</td>
		<td>$${item.price}</td>
		<td>${item.make}</td>
		<td>${item.model}</td>
		<td>${item.mileage}</td>
		<td>${item.color}</td>
		<td>${item.fourWheel}</td>
		<td>${item.fuelType}</td>
		<td>${item.year}</td>
		<td>${item.postedDate}</td>
		<td>${item.description}</td>
		<td>${item.discounted}</td>
		<td><a href="buycar-${item.price}-${item.make}-${item.year}-${item.seller}">Purchase</a></td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		</c:when>
		<c:otherwise>
		<h3>No recent sales</h3>
		</c:otherwise>
		</c:choose>
	</div>
	</div>
	
</body>
</html>