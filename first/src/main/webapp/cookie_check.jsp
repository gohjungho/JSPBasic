<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű Ȯ��(cookie_check.jsp)</title>
</head>
<body>
<b>��Ű Ȯ��</b><p>
<%
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		String name = cookies[i].getName();
		String value = cookies[i].getValue();
		
		out.print("��Ű �̸� : " + name + "<br>");
		out.print("��Ű �� : " + value + "<p>");
	}
} else {
	out.println("������ ��Ű ������ �����ϴ�!!");
}
%>
</body>
</html>