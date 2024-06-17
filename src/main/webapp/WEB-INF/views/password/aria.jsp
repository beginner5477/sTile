<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
	<script>
		let imsiStr = "";
		$(()=>{
			if('${pwd}' != '') {
				imsiStr += "원본비밀번호:${pwd}, 암호화된 비밀번호:${encPwd}, 복호화된 비밀번호:${decPwd}";
			}
			document.getElementById("demo").innerHTML = imsiStr;
			alert(document.he.hi.value);
		});
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h4>ARIA 암호화</h4>
	<p>
		ARIA 암호화 방식은 경량 환경 및 하드웨어 구현을 위해 최적화된 범용블록 암호화 알고리즘이다.
		ARIA가 사용하는 연산은 대부분 XOR와 같은 단순한 바이트단위 연산으로,
		블록크기는 128bit(32문자)/256bit(64문자)로 구성된다.
		ARIA는 Academy, Research Institute, Agency의 합성어이다
		ARIA암호화 방식은 복호화가 가능하다.
	</p>
	<div>ggggggggggggggggggggggggggggggggggggggggg</div>
	<hr/>
	<div>
		<form method="post">
			<input type="text" name="pwd" id="pwd" autofocus/>
			<input type="submit" value="ARIA암호화" class="btn btn-success"/>
		</form>
	</div>
	<div>
		<div>출력 결과 :</div>
		<span id="demo">gd</span>
		<form name="he" >
			<input type="text" name="hi"  value="gg" />
		</form>
	</div>
</div>
<p><br/></p>
</body>
</html>