<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./include/inc_dir_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include_directive</title>
</head>
<body>
<b>include 지시문(include directive.jsp)</b><p>

<!-- 1부터 10까지 정수 합 -->
<%@ include file="./include/inc_sum_for.jsp" %>

<p>include 지시문</p>

</body>
</html>