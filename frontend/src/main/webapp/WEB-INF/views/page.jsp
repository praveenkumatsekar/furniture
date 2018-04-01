<%@ page alanguage="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <spring:url var="css" value="/resources/css"></spring:url>
    <spring:url var="js" value="/resources/js"></spring:url>
    <spring:url var="images" value="/resources/images"></spring:url>
    
    
    <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
   
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>vsk furniture -{title}</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css }/myapp.css" rel="stylesheet">

  </head>

  <body>

   <!-- navigation -->
   <%@include file="./shared/navigation.jsp" %>
   
    <!-- Page Content -->
    <!--  loading the home content -->
    <c:if test="${userClickHome == true}">
    <%@include file="home.jsp" %>
    </c:if>
    <!-- load only user clicks about -->
    <c:if test="${userClickAbout == true}">
    <%@include file="about.jsp" %>
    </c:if>
    
    <!-- load only user clicks contact-->
    <c:if test="${userClickContact == true}">
    <%@include file="contact.jsp" %>
    </c:if>
    
<!--  footer comes here -->
<%@ include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.min.js"></script>

  </body>

</html>
   