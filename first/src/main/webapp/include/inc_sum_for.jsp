<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>���� ��(for �ݺ��� - inc_sum_for.jsp)</b><br>
<%
	// ���� ���� 
	int sum = 0; 
	
	// ���� �� ��� 
	for (int su = 1; su <= 10; su++) {
		sum += su; // sum = sum + su; 
	} 
%>
1���� 10���� ���� ���� <%=sum %>�Դϴ�.

</body>
</html>