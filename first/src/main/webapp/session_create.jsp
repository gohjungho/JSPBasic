<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>技记 加己 汲沥(session_create.jsp)</title>
</head>
<body>
<%
session.setAttribute("id", "admin");
session.setAttribute("name", "包府磊");

out.print("技记 加己捞 汲沥 登菌嚼聪促! <br>");
%>

技记 加己(id) : <%=session.getAttribute("id") %><br>
技记 加己(name) : <%= session.getAttribute("name") %><br>

<p><a href="session_check.jsp">[ 技记 加己 犬牢 ]</a>

</body>
</html>