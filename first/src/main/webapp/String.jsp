<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ʈ�� Ŭ���� ���(string.jsp)</title>
</head>
<body>
<b>��Ʈ�� Ŭ���� �޼ҵ�</b><br>
<%
	String univ = "first university";
	String UNIV = "FIRST UNIVERSITY";
	String msg = "";

	int str_len = univ.length();
	String sub_str1 = univ.substring(0,4);
	String sub_str2 = UNIV.substring(4);
%>

	���ڿ� ����(length) : <%=str_len %><br>
	�κ� ���ڿ�(substring) : <%=sub_str1 %><br>
	�κ� ���ڿ�(SUBSTRING) : <%=sub_str2 %><br>
	<%
	if (univ.isEmpty()) {
		msg = "empty";
	} else {
		msg = "not empty";
	}
	out.print("isEmpty :" + msg + "<br>");
		

		
	
	if (univ.equals(UNIV.toLowerCase())) {
		msg = "equal";
	} else {
		msg = "not equal";
	}
	out.print("toLowerCase :" + msg + "<br>");
		
	%>

</body>
</html>