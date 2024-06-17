<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
	<style>
		.bodyLeft {
			float: left;
		}
	</style>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="nav"/>
<p><br/></p>
<div class="container text-left" style="height:500px">
	<div class="bodyLeft"><tiles:insertAttribute name="aside"/></div>
	<tiles:insertAttribute name="body"/>
</div>
<p><br/></p>
	<tiles:insertAttribute name="footer"/>
</body>
</html>