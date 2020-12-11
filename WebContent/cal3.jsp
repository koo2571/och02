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
		}catch(NumberFormatException e){
	%>
	<script type="text/javascript">alert('그게 숫자니'); history.go(-1);</script>
	<%
		}catch(ArithmeticException e){
	%>
	<script type="text/javascript">alert('0으로 못나눠'); history.back();</script>
	<%
		}catch(Exception e){
	%>
	<script type="text/javascript">alert("암튼 에러야"); location.href="num2.html"</script>
	<%
		}
	%>
</body>
</html>