<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>技记 加己 犬牢(session_check.jsp)</title>
</head>
<body>
技记 加己(id) : <%=session.getAttribute("id") %><br>
技记 加己(name) : <%=session.getAttribute("name") %><br>

<%-- 技记 酒捞叼(JSESSIONID) : <%=session.getId() %><p> --%>

<p><a href="session_delete.jsp">[ 技记 昏力 ]</a>

</body>
</html>