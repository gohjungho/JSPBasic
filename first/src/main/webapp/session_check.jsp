<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �Ӽ� Ȯ��(session_check.jsp)</title>
</head>
<body>
���� �Ӽ�(id) : <%=session.getAttribute("id") %><br>
���� �Ӽ�(name) : <%=session.getAttribute("name") %><br>

<%-- ���� ���̵�(JSESSIONID) : <%=session.getId() %><p> --%>

<p><a href="session_delete.jsp">[ ���� ���� ]</a>

</body>
</html>