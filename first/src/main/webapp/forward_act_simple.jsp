<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward �׼��±�(forward_act_simple.jsp)</title>
</head>
<body>
<b>forward ���� �Ķ����(forward_act_simple.jsp)</b><p>

<%
	String msg = "forward ���� �Ķ����";
%>

<%-- �ѱ� �Ķ���� ���ڵ� --%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:forward page="./include/inc_act_simple.jsp">
	<jsp:param name="para1" value="p1 ��" />
	<jsp:param name="para2" value="p2 ��" />
	<jsp:param name="para3" value="�Ķ����3 ��" />
</jsp:forward>

<p>forward ���� �Ķ����</p>
	�޽��� ��� : <%=msg %>
	
</body>
</html>