<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>技记 昏力(session_delete.jsp)</title>
</head>
<body>
技记 加己(id) : <%=session.getAttribute("id") %><br>
技记 加己(name) : <%=session.getAttribute("name") %><br>

<%
out.print("技记 积己 矫埃 = " + session.getCreationTime() + "檬<br>");
out.print("努扼捞攫飘狼 秦寸 技记 付瘤阜 立辟 矫埃 = "
		+ session.getLastAccessedTime() + "檬<br>)");
out.print("努扼捞攫飘狼 技记 蜡瘤 矫埃 = " 
		+ (session.getLastAccessedTime()-session.getCreationTime())
		+ "檬<br>");
out.print("技记狼 蜡瓤矫埃 = " + session.getMaxInactiveInterval()
						  + "檬(30盒)<p>");

// 技记 按眉狼 加己 昏力 
session.removeAttribute("id");
session.removeAttribute("name");
out.print("技记 按眉狼 加己阑 昏力窍看嚼聪促!!<br>");
%>

技记 加己(id) : <%=session.getAttribute("id") %><br>
技记 加己(name) : <%=session.getAttribute("name") %><p>

<%
// 技记 按眉 昏力 - 技记 檬扁拳 
session.invalidate();
out.print("葛电 技记 沥焊甫 昏力窍看嚼聪促!! <br>");
%>

<p><a href="session_check.jsp">[ 技记 加己 犬牢 ]</a>
</body>
</html>