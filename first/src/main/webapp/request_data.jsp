<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request ���� ��ü</title>
</head>
<body>
<b>request ���� ��ü - [���� ���� ����]</b>
��û���� �������� : <%= request.getProtocol() %><br>
��û���� ���۹�� : <%= request.getMethod() %><br>
��û���� ������ Ÿ�� : <%= request.getContentType() %><br>
��û���� ���ڵ� : <%= request.getCharacterEncoding() %><br>
��û���� ���� : <%= request.getContentLength() %><br>

���ؽ�Ʈ ��� : <%= request.getMethod() %><br>
��û URI : <%= request.getContentType() %><br>
��û URL : <%= request.getCharacterEncoding() %><br>
��û ���� ��� : <%= request.getContentLength() %><br>

��Ű ���� : <%= request.getMethod() %><br>
���� ���̵� : <%= request.getRequestedSessionId() %><br>
���� ���� : <%= request.getSession() %><br>



</body>
</html>