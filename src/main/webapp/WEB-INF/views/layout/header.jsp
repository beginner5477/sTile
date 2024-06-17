<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
	<style>
		body {
			margin : 0;
			padding : 0;
		}
	</style>
</head>
<body>
	<div style="text-align:center;background-color:pink;">
		<h3>이곳은 header 영역입니다.</h3>
	</div>
</body>
</html>