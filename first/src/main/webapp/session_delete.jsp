<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����(session_delete.jsp)</title>
</head>
<body>
���� �Ӽ�(id) : <%=session.getAttribute("id") %><br>
���� �Ӽ�(name) : <%=session.getAttribute("name") %><br>

<%
out.print("���� ���� �ð� = " + session.getCreationTime() + "��<br>");
out.print("Ŭ���̾�Ʈ�� �ش� ���� ������ ���� �ð� = "
		+ session.getLastAccessedTime() + "��<br>)");
out.print("Ŭ���̾�Ʈ�� ���� ���� �ð� = " 
		+ (session.getLastAccessedTime()-session.getCreationTime())
		+ "��<br>");
out.print("������ ��ȿ�ð� = " + session.getMaxInactiveInterval()
						  + "��(30��)<p>");

// ���� ��ü�� �Ӽ� ���� 
session.removeAttribute("id");
session.removeAttribute("name");
out.print("���� ��ü�� �Ӽ��� �����Ͽ����ϴ�!!<br>");
%>

���� �Ӽ�(id) : <%=session.getAttribute("id") %><br>
���� �Ӽ�(name) : <%=session.getAttribute("name") %><p>

<%
// ���� ��ü ���� - ���� �ʱ�ȭ 
session.invalidate();
out.print("��� ���� ������ �����Ͽ����ϴ�!! <br>");
%>

<p><a href="session_check.jsp">[ ���� �Ӽ� Ȯ�� ]</a>
</body>
</html>