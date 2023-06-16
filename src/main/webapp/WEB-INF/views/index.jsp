<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Index Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<h1>Index page</h1>
	<sec:authorize access="isAnonymous()">
		<a href="/joo/user/login">로그인</a>
		<a href="/joo/user/join">회원가입</a>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">
		<p>username: <sec:authentication property="principal.username"/></p>
			<a href="/joo/user/myBasket">장바구니</a>
			<a href="/joo/user/postDetail">1번 제품</a>
			<a href="/joo/user/postDetail">2번 제품</a>
		<form action="/joo/user/logout" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
			<button>Logout</button>
		</form>
	</sec:authorize>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>