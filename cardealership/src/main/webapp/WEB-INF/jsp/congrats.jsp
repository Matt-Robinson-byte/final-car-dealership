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
<style>
        .container {
              width: 100%;
          height: 100%;
        }
        .confetti {
          width: 15px;
          height: 15px;
          background-color: #f2d74e;
          position: absolute;
          left: 50%;
          animation: confetti 5s ease-in-out -2s infinite;
          transform-origin: left top;
        }
        .confetti:nth-child(1) {
          background-color: #f2d74e; left: 5%; animation-delay: -1s;
        }
        .confetti:nth-child(2) {
          background-color: #95c3de; left: 10%; animation-delay: -2s;
        }
        .confetti:nth-child(3) {
          background-color: #ff9a91; left: 15%; animation-delay: -4s;
        }
        .confetti:nth-child(4) {
          background-color: #f2d74e; left: 20%; animation-delay: -2.5s;
        }
        .confetti:nth-child(5) {
          background-color: #95c3de; left: 25%; animation-delay: -5s;
        }
        .confetti:nth-child(6) {
          background-color: #ff9a91; left: 30%; animation-delay: -3.5s;
        }
        .confetti:nth-child(7) {
          background-color: #f2d74e; left: 35%; animation-delay: -1.5s;
        }
        .confetti:nth-child(8) {
          background-color: #95c3de; left: 40%; animation-delay: -2.5s;
        }
        .confetti:nth-child(9) {
          background-color: #ff9a91; left: 45%; animation-delay: -4.3s;
        }
        .confetti:nth-child(10) {
          background-color: #f2d74e; left: 50%; animation-delay: -2.5s;
        }
         .confetti:nth-child(11) {
          background-color: #f2d74e; left: 55%; animation-delay: -1.5s;
        }
        .confetti:nth-child(12) {
          background-color: #95c3de; left: 60%; animation-delay: -3s;
        }
        .confetti:nth-child(13) {
          background-color: #ff9a91; left: 65%; animation-delay: -4s;
        }
        .confetti:nth-child(14) {
          background-color: #f2d74e; left: 70%; animation-delay: -4.5s;
        }
        .confetti:nth-child(15) {
          background-color: #95c3de; left: 75%; animation-delay: -6s;
        }
        .confetti:nth-child(16) {
          background-color: #ff9a91; left: 80%; animation-delay: -3s;
        }
        .confetti:nth-child(17) {
          background-color: #f2d74e; left: 85%; animation-delay: -1s;
        }
        .confetti:nth-child(18) {
          background-color: #95c3de; left: 90%; animation-delay: -5s;
        }
        .confetti:nth-child(19) {
          background-color: #ff9a91; left: 95%; animation-delay: -1.5s;
        }
        .confetti:nth-child(20) {
          background-color: #f2d74e; left: 100%; animation-delay: -2.5s;
        }

        @keyframes confetti {
          0% { transform: rotateZ(15deg) rotateY(0deg) translate(0,0); }
          25% { transform: rotateZ(5deg) rotateY(360deg) translate(-5vw,20vh); }
          50% { transform: rotateZ(15deg) rotateY(720deg) translate(5vw,60vh); }
          75% { transform: rotateZ(5deg) rotateY(1080deg) translate(-10vw,80vh); }
          100% { transform: rotateZ(15deg) rotateY(1440deg) translate(10vw,110vh); }
        }
        </style>
</head>
<body>
<div class="container"><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div><div class="confetti"></div>
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

	<div class="congrats-text">
		<h2>Congratulations ${buyer.firstName} ${buyer.lastName}!!</h2>
		<h2>You just bought a ${sale.year} ${sale.color} ${sale.make} ${sale.model}</h2>
	</div>
</div>

</body>
</html>