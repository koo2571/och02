<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	response.setContentType("text/html; charset=utf-8");
	out.println("<html><body>");
	
	try {
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	out.println(num1+"+"+num2+"="+(num1+num2)+"<p>");
	out.println(num1+"-"+num2+"="+(num1-num2)+"<p>");
	out.println(num1+"*"+num2+"="+(num1*num2)+"<p>");
	out.println(num1+"/"+num2+"="+(num1/num2)+"<p>");
		// Exception 페이지 이동 목적
		}catch (Exception e) {
		RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
		rd.forward(request, response);
	}
	out.println("</body></html>");
	out.close();
	%>
</body>
</html>