<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 삭제(cookie_delete.jsp)</title>
</head>
<body>
<b>쿠키 삭제</b><p>
<% 
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("id")) {
			cookies[i].setMaxAge(0); // 쿠키 삭제 
			response.addCookie(cookies[i]);
			out.println("쿠키 정보가 삭제 되었습니다!");
		}
	}
} else {
	out.println("설정된 쿠키 정보가 없습니다!!");
}
%>

<p><a href="cookie_check.jsp">[쿠키 확인]</a>

</body>
</html>