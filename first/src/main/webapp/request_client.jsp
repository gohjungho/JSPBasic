<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request ���� ��ü</title>
</head>
<body>
<b>request ���� ��ü - [Ŭ���̾�Ʈ ���� ����]</b>
Ŭ���̾�Ʈ IP �ּ� : <%= request.getRemoteAddr() %><br>
Ŭ���̾�Ʈ �̸� : <%= request.getRemoteHost() %><br>
Ŭ���̾�Ʈ ��Ʈ : <%= request.getRemotePort() %><br>
Ŭ���̾�Ʈ ����� : <%= request.getRemoteUser() %><br>

</body>
</html>