<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file="adminnavebar.jsp" %><br/><br/>
Total Customers:<c:out value="${count}"></c:out>
<h3 align="center">View all customers</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<TH>DATE OF BIRTH</TH>
<TH>EMAIL</TH>
<TH>LOCATION</TH>
<TH>CONTACT NUMBER</TH>
</tr>
<c:forEach items="${customerlist}" var="customer">
<tr>
<td><c:out value="${customer.id}"></c:out></td>
<td><c:out value="${customer.name}"></c:out></td>
<td><c:out value="${customer.gender}"></c:out></td>
<td><c:out value="${customer.dateofbirth}"></c:out></td>
<td><c:out value="${customer.email}"></c:out></td>
<td><c:out value="${customer.location}"></c:out></td>
<td><c:out value="${customer.contact}"></c:out></td>
<tr>
</c:forEach>
</table>
</body>
</html>