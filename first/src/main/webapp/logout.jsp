<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃과 세션 삭제</title>
</head>
<body>

	세션 속성(cust_id) : <%= session.getAttribute("cust_id") %><br>
	세션 속성(cust_name) : <%= session.getAttribute("cust_name") %><p>
	
<%
 out.print("<b>" + session.getAttribute("cust_id") 
 				+ "(" + session.getAttribute("cust_name")
 				+ ")님 로그인 중 ..... </b><p>");
 
 out.print("세션 생성 시간 = " + session.getCreationTime() + "초<br>");
 out.print("클라이언트의 해당 세션 마지막 접근 시간 = "
		 + session.getLastAccessedTime() + "초<br>");
 out.print("클라이언트의 세션 유지 시간 = "
		 + (session.getLastAccessedTime()-session.getCreationTime()) + "초<br>");
 out.print("세션의 유효시간 = " + session.getMaxInactiveInterval() + "초(30분)<p>");
 
 // 세션 객체의 속성 삭제 
 session.removeAttribute("cust_id");
 session.removeAttribute("csut_name");
 out.print("세션 속성(cust_id) : " + session.getAttribute("cust_id") + "<br>");
 out.print("세션 속성(cust_name) : " + session.getAttribute("cust_name") + "<p>");
 
 // 세션 객체 삭제 - 세션 초기화 
 session.invalidate();
 
 out.print("<b>로그 아웃 하셨습니다! </b><p>");
 
 // 경고 창 무시하고 지정 페이지(URL)로 강제 이동 
 // response.sendRedirect("./session_form.jsp");
%>

 <p><a href="./login_form.jsp">[세션 삭제 확인]</a>

</body>
</html>