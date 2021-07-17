<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<div class="form-box">
<div class="site-form">
  <form:form action="/authenticate" modelAttribute="seller" >
  	<div class="form-row">
	   <div class="formelement">
	      <label for="inputUsername4">Username</label>
	      <form:input path="username" class="form-control" id="inputusername4" placeholder="Username"/>
	    </div>
	    <div class="formelement">
	      <label for="inputPassword4">Password</label>
	      <form:input path="password" type="password" class="form-control" id="inputPassword4" placeholder="Password"/>
	    </div>
	</div>
	   <button type="submit" class="submit-button">Login</button>
	 </form:form>
 </div>
 </div>
</body>
</html>