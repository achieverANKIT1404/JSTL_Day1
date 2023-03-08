<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Income Tax</title>
<style type="text/css">

body{
background-color: seashell;
}
.st1{
background-color: lavender;
width:12pc;
margin-left: 33pc;
padding:5px;
text-align: center;
border-radius: 6px;
margin-top: 5pc;
}
h2{
color: teal;
}
</style>
</head>
<body>
     <m:set var="name" scope="session" value="${param.name }"/>
     <m:set var="sal" scope="session" value="${param.sal}"/>
     <m:set var="tax" scope="session" value="${0.10}"/>
     <m:set var="tax1" scope="session" value="${0.20}"/>
     <m:set var="tax2" scope="session" value="${0.25}"/>
 
     <div class = "st1">
     <m:choose>
     
     <m:when test="${sal<=10000}">
     
      <h2>Tax Details</h2>
      <hr>
     <h3 style="color:navy"><m:out value="${name}"/></h3>
     <h3 style="color: seagreen;">No tax is applicable.</h3>
     </m:when>
     
     <m:when test="${sal>10000 && sal<=20000 }">
     
     <h2>Tax Details</h2>
     <hr>
     <h3 style="color:navy"><m:out value="${name}"/></h3>
     <h3 style="color:navy">Tax = <m:out value="${tax*sal} Rs/-"/></h3>
 
     </m:when>
     
     <m:when test="${sal>30000 && sal<=40000}">
     
      <h2>Tax Details</h2>
      <hr>
     <h3 style="color:navy"><m:out value="${name}"/></h3>
     <h3 style="color:navy">Tax = <m:out value="${tax1*sal} Rs/- "/></h3>
     </m:when>
     
     <m:when test="${sal>50000 && sal<=100000}">
   
      <h2>Tax Details</h2>
      <hr>
     <h3 style="color:navy"><m:out value="${name}"/></h3>
     <h3 style="color:navy">Tax = <m:out value="${tax2*sal} Rs/-"/></h3>
     </m:when>
     
     <m:otherwise>
     
      <h2>Tax Details</h2>
      <hr>
     <h3 style="color:maroon;">Invalid Income!</h3>
     </m:otherwise>
     </m:choose>
     </div>
</body>
</html>