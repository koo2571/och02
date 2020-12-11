<%@page import="java.io.PrintWriter"%>
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
		try{
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
			out.println(num1+"+"+num2+"="+(num1+num2)+"<p>");
			out.println(num1+"-"+num2+"="+(num1-num2)+"<p>");
			out.println(num1+"*"+num2+"="+(num1*num2)+"<p>");
			out.println(num1+"/"+num2+"="+(num1/num2)+"<p>");
		}catch(ArithmeticException e){
			out.println("0으로 나누었음");
		}catch(NumberFormatException e){
			out.println("글자가 있네??");
		}catch (Exception e) {
			out.println(e.getMessage());
		}
	%>
</body>
</html>