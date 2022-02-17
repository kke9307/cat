<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../layout/header.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>plant list</title>
</head>
<body>
<div class="inner_list">
	<table>
	 <thead>
	 	<tr>
	 		<th width="10%" >번호</th>
	 		<th width="30%">식물</th>
	 		<th width="20%">가격</th>
	 		<th width="20%">난이도</th>
	 		<th width="20%">구매가능여부</th>
	 	</tr>
	 </thead>
	 <tbody>
	 	<tr>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 	</tr>
	 	<c:forEach items="${ddd }" var="item" varStatus="status">
	 	<tr>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 		<td>dd</td>
	 	</tr>
	 	</c:forEach>
	 </tbody>
	</table>
</div>
</body>	
</html>