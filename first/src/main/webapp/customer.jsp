<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<% request.setCharacterEncoding("UTF-8"); %>
<title>ȸ�� ���� �Ķ����</title>
</head>
<body>
<b>ȸ�� ���� ��û �Ķ���� ó��</b>


���̵� : <%= request.getParameter("id")%><br>
��й�ȣ : <%= request.getParameter("pw")%><br>
�̸� : <%= request.getParameter("name")%><br>
���� : <%= request.getParameter("gender")%><br>
��� : 

<% 
 String[] hobby = request.getParameterValues("hobby");

if (hobby != null) {
	for(int i = 0 ; i < hobby.length; i++){
		out.print(hobby[i] + " ");
	}
} else {
	out.print("��̸� �������� �ʾҽ��ϴ�.! "+"<br>");
	
}
%>

</body>
</html>