<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
// ���� ��ü�� �Ӽ� Ȯ�� 
String cust_id = (String)session.getAttribute("cust_id");
String cust_name = (String)session.getAttribute("cust_name");
Boolean login = false;

if ((cust_id != null) && (cust_name != null)) {
	login = true; // �α��� ���� 
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �α��� ��(login_form.jsp)</title>
<style>
	table {width:250px; text-align:center; border-collapse:collarpse;}
	caption {font-size:20pt; font-weight:bold;}
	th, id {border:1px solid grey; padding:2px;}
	th {width:50%; background-color:#CFD0ED;}
	td {text-align:left;}
</style>
</head>
<body>
 <form name="login_form" method="POST" action="./login_check.jsp">
  <table>
   <caption>�α��� ��</caption>
   <tr>
    <th>�� �� ��</th>
    <td><input type="text" name="cust_id" size="10" maxlength="10" required autofocus></td>
   </tr>
   <tr>
    <th>��й�ȣ</th>
    <td><input type="password" name="cust_pw" size="11" maxlength="10" required></td>
   </tr>
   <tr>
    <td colspan="2" style="text-align:center;">
    
   	<%
   	if (login) { // �α��� ��� ��ư ���� 
   		out.print("<input type='submit' value='�α���' disabled>" 
   				+ "<input type='button' value='(" + cust_name + ")�� �α׾ƿ�' "
   				+ "onClick=location.href='./logout.jsp'></td>");
   	} else { // �α׾ƿ� ��� ��ư ���� 
   		out.print("<input type='submit' value='�α���'>"
   				+ "<input type='button' value='�α׾ƿ�' disabled></td>");
   	}
   	%>
   	</td>
   </tr>
  </table>
 </form>

</body>
</html>