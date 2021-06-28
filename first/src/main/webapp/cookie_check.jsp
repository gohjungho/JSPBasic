<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 확인(cookie_check.jsp)</title>
</head>
<body>
<b>쿠키 확인</b><p>
<%
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		String name = cookies[i].getName();
		String value = cookies[i].getValue();
		
		out.print("쿠키 이름 : " + name + "<br>");
		out.print("쿠키 값 : " + value + "<p>");
	}
} else {
	out.println("설정된 쿠키 정보가 없습니다!!");
}
%>
</body>
</html>