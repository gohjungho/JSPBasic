<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>논리 연산자(el_op_logic.jsp)</title>
</head>
<body>

 <b>논리 연산자</b><br> <!-- 특수문자처리 : '\' 뒤 문자 취급 -->
  \${5 >= 5 and 5 <= 5} = ${5 >= 5 and 5 <= 5} <br>
  \${5 > 5 or 5 == 5} = ${5 > 5 or 5 == 5} <br>

</body>
</html>