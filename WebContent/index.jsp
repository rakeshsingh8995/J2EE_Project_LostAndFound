<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<head>
<link rel="stylesheet" type="text/css" href="div.css">

<meta charset="ISO-8859-1">
<title>Lost and Found</title>
<style>
body{
background-color:#FFFFCC;
}
.btn{
margin-top:2rem;
}
</style>

</head>

<body bgcolor="skyblue">
 <form action="Found" method= "post">

	<a class="btn btn-primary btn-lg active offset-lg-2" href="search.jsp"  role="button" aria-pressed="true">Search for lost items</a><br></br>
	<a class="btn btn-primary btn-lg active offset-lg-2" href="lost.jsp" role="button" aria-pressed="true">Report Lost Item</a>

	</body>
</html>
