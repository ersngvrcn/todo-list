<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>ToDoList Application - ${title}</title>

<script>
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp" %>

	<!-- Page Content -->
	<c:if test="${userClickHome== true}">
    	<%@include file="home.jsp" %>  
    </c:if>
    
    <c:if test="${userClickCreateList== true}">
    	<%@include file="createList.jsp" %>  
    </c:if>
    
     <c:if test="${userClickListItems== true}">
    	<%@include file="myList.jsp" %>  
    </c:if>


	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/jquery.dataTables.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/dataTables.bootstrap.js"></script>
	<script src="${js}/myapp.js"></script>

</body>

</html>
