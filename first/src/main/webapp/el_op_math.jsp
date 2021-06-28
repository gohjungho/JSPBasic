<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산술 연산자(el_op_math.jsp)</title>
</head>
<body>

 <b>산술 연산자</b><br> <!-- 특수문자처리 : '\' 뒤 문자 취급 -->
  \${1 + 5} = ${1 + 5}<br>
  \${7 - 1} = ${7 - 1}<br>
  \${2 * 3} = ${2 * 3}<br>
  \${45 / 7} = ${45 / 7}<br>
  \${13 % 7} = ${13 % 7}<br>
  
</body>
</html>