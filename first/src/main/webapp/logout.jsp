<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ��� ���� ����</title>
</head>
<body>

	���� �Ӽ�(cust_id) : <%= session.getAttribute("cust_id") %><br>
	���� �Ӽ�(cust_name) : <%= session.getAttribute("cust_name") %><p>
	
<%
 out.print("<b>" + session.getAttribute("cust_id") 
 				+ "(" + session.getAttribute("cust_name")
 				+ ")�� �α��� �� ..... </b><p>");
 
 out.print("���� ���� �ð� = " + session.getCreationTime() + "��<br>");
 out.print("Ŭ���̾�Ʈ�� �ش� ���� ������ ���� �ð� = "
		 + session.getLastAccessedTime() + "��<br>");
 out.print("Ŭ���̾�Ʈ�� ���� ���� �ð� = "
		 + (session.getLastAccessedTime()-session.getCreationTime()) + "��<br>");
 out.print("������ ��ȿ�ð� = " + session.getMaxInactiveInterval() + "��(30��)<p>");
 
 // ���� ��ü�� �Ӽ� ���� 
 session.removeAttribute("cust_id");
 session.removeAttribute("csut_name");
 out.print("���� �Ӽ�(cust_id) : " + session.getAttribute("cust_id") + "<br>");
 out.print("���� �Ӽ�(cust_name) : " + session.getAttribute("cust_name") + "<p>");
 
 // ���� ��ü ���� - ���� �ʱ�ȭ 
 session.invalidate();
 
 out.print("<b>�α� �ƿ� �ϼ̽��ϴ�! </b><p>");
 
 // ��� â �����ϰ� ���� ������(URL)�� ���� �̵� 
 // response.sendRedirect("./session_form.jsp");
%>

 <p><a href="./login_form.jsp">[���� ���� Ȯ��]</a>

</body>
</html>