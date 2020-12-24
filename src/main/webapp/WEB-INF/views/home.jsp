<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div class="warp">
<a href="http://localhost:8080/resources/sample">
<h1>안녕 나는 배경득이야.<br>이걸눌러 
</h1>
</a>
</div>
<p> <c:out value="${TomecatseverTime}"></c:out>
</p>
<!-- c:out 태그를 사용하는 이유는 해킹 방지용입니다. -->
<P>  현재  서버의 시간은 ${TomcatserverTime} 입니다.. </P>


</body>
</html>
