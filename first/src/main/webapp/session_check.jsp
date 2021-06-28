<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 속성 확인(session_check.jsp)</title>
</head>
<body>
세션 속성(id) : <%=session.getAttribute("id") %><br>
세션 속성(name) : <%=session.getAttribute("name") %><br>

<%-- 세션 아이디(JSESSIONID) : <%=session.getId() %><p> --%>

<p><a href="session_delete.jsp">[ 세션 삭제 ]</a>

</body>
</html>