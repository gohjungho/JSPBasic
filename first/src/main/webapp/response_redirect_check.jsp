<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<title>reponse ���尴ü ���� �̵�</title>
</head>
<body>
<b>reponse ���� ��ü �����̵� ������</b>
<%
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");

	out.print("���̵� = " + cust_id + "<br>");
	out.print("��й�ȣ = " + cust_pw + "<br>");

	response.sendRedirect("first.jsp");

%>


<% 	
// <p><a href="response_redirect_form.jsp">[ redirect ��]</a>
%> 




</body>
</html>