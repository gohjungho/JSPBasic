<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>forward �׼��±�(forward_action.jsp)</title>
</head>
<body>
<b>forward �׼��±�(forward_action.jsp)</b><p>

<%
	String msg = "forward �׼��±� �׽�Ʈ"; 
%>
<!-- 1���� 10���� ���� �� -->
<jsp:forward page="./include/inc_sum_for.jsp" />

<p>forward �׼��±�</p>
	�޽��� ��� : <%=msg %>

</body>
</html>