<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ����(cookie_create.jsp)</title>
</head>
<body>
<b>��Ű ����</b><p>
<%
Cookie cookie = new Cookie("id", "admin");
cookie.setMaxAge(300); // �� ����(5��)
response.addCookie(cookie);

out.println("��Ű ������ �����Ǿ����ϴ�! <br>");
%> 

��Ű �̸�: <%= cookie.getName() %><br>
��Ű ��: <%= cookie.getValue() %><br>
��Ű ��ȿ�ð�: <%= cookie.getMaxAge() %>��<br>

<p><a href="cookie_check.jsp">[��Ű Ȯ��]</a>

</body>
</html>