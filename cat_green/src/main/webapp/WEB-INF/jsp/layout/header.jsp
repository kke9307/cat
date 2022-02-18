<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page session="false" %>
<html>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="icon" type="image/x-icon" href="/resources/images/cat.jpg">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">

function printClock() {
    
    var clock = document.getElementById("clock");            // 출력할 장소 선택
    var currentDate = new Date();                                     // 현재시간
    var calendar = currentDate.getFullYear() + "-" 
    				+ (((currentDate.getMonth()+1) > 9 ? currentDate.getMonth()+1 : "0"+ (currentDate.getMonth()+1))) 
    				+ "-" + (((currentDate.getDate()) > 9 ? currentDate.getDate() : "0"+ (currentDate.getDate()))) // 현재 날짜    var amPm = 'AM'; // 초기값 AM
    console.log(currentDate.getDate());
    var currentHours = addZeros(currentDate.getHours(),2); 
    var currentMinute = addZeros(currentDate.getMinutes() ,2);
    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
    
    clock.innerHTML = calendar + " " +currentHours+":"+currentMinute+":"+currentSeconds; //날짜를 출력해 줌
    
    setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
}

function addZeros(num, digit) { // 자릿수 맞춰주기
	  var zero = '';
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}
</script>
<head>
	<title>GREEN</title>
</head>
<body onload="printClock()">
<div id="clock" style="margin-left: 80% "></div>
<div class="inner">
	<a href="/"><img src="/resources/images/logo.png" alt="home" style="with:250px; height:200px;"></a>
</div>
</body>
</html>
