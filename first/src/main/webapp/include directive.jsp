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
<b>include ���ù�(include directive.jsp)</b><p>

<!-- 1���� 10���� ���� �� -->
<%@ include file="./include/inc_sum_for.jsp" %>

<p>include ���ù�</p>

</body>
</html>