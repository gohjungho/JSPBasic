<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연결(connect_db.jsp)</title>
</head>
<body>
 <%
  // JDBC 드라이버 로딩(loading JDBC driver)
  String driverClass = "org.mariadb.jdbc.Driver";
 
  try {
	  Class.forName(driverClass);
	  out.println("JDBC Driver loading 성공! <br>");
  } catch (ClassNotFoundException err) {
	  out.println("JDBC Driver loading 실패!...WEB-INF/lib 폴더 확인<br>");
  }
  
  // MariaDB 서버 연결(connect server)
  // "jdbc:mariadb://server_IP:3306/database_name"
  String url = "jdbc:mariadb://localhost:3306/";
  String id = "root"; // DB 사용자 아이디 
  String pw = "0000"; // DB 사용자 패스워드 
  
  Connection conn = null;
  
  try {
	  conn = DriverManager.getConnection(url, id, pw);
	  out.println("MariaDB 서버 연결 성공! <br>");
  } catch (SQLException sqlerr) {
	  out.println("MariaDB 서버 연결 실패! <br>");
  } finally {
	  // 데이터베이스 연결 종료(close database)
	  if (conn != null) {
		  try {
			  conn.close();
			  out.println("MariaDB 서버 연결 종료! <br>");
		  } catch (Exception conerr) {
			  conerr.printStackTrace();
		  }
	  }
  }
 %>

</body>
</html>