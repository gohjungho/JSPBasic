<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ����(cookie_delete.jsp)</title>
</head>
<body>
<b>��Ű ����</b><p>
<% 
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("id")) {
			cookies[i].setMaxAge(0); // ��Ű ���� 
			response.addCookie(cookies[i]);
			out.println("��Ű ������ ���� �Ǿ����ϴ�!");
		}
	}
} else {
	out.println("������ ��Ű ������ �����ϴ�!!");
}
%>

<p><a href="cookie_check.jsp">[��Ű Ȯ��]</a>

</body>
</html>