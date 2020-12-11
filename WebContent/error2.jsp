<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isErrorPage="true"%><!-- 나는 오류 페이지다 -->
     <%response.setStatus(200); %><!-- setStatus(200)은 정상이라는 뜻 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>공지</h2>
	나은 서비스를 위해 준비중입니다.<p>
	메세지 : <%=exception.getMessage() %><br>
	클래스 : <%=exception.getClass() %>
</body>
</html>