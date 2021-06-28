<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대학 데이터베이스(univ) 생성(univ_db_create.jsp)</title>
</head>
<body>
 <%
  // 객체 참조 변수 
  Connection conn = null;
  PreparedStatement pstmt = null;
  
  // JDBC 드라이버 로딩(loading JDBC driver)
  String driverClass = "orgmariadb.jdbc.Driver";
  
  try {
	  Class.forName(driverClass);
	  out.println("JDBC Driver load 성공! <br>");
  } catch (ClassNotFoundException err) {
	  out.println("JDBC Driver load 실패!...WEB-INF/lib 폴더 확인<br>");
  }
  
  // MariaDB 서버 연결(connect server)
  // "jdbc:mariadb://server_IP:3306/database_name"
  String url = "jdbc:mariadb://localhost:3306/";
  String id = "root"; // DB 사용자 아이디 
  String pw = "0000"; // DB 사용자 패스워드 
  
  try {
	  conn = DriverManager.getConnection(url, id, pw);
	  out.println("MariaDB 서버 연결 성공! <br>");
	  
	  // SQL 질의어 처리(Perform SQL query(DDL))
	  // 대학 데이터베이스(univ) 생성 
	  String sql = "CREATE DATABASE univ";
	  pstmt = conn.prepareStatement(sql);
	  pstmt.executeUpdate();
	  out.println("대학 데이터베이스(univ) 생성 성공!<br>");
  } catch (SQLException sqlerr) {
	  out.println("대학 데이터베이스(univ) 생성 실패! <br>");
	  out.println(sqlerr.getMessage() + "<br>");
  } finally {
	  // 데이터베이스 연결 종료(close database)
	  if (pstmt != null) {
		  try {
			  pstmt.close();
			  out.println("Statement_close! <br>");
		  } catch (Exception sqlerr) {}
	  }
	  if (conn != null) {
		  try {
			  conn.close();
			  out.println("MariaDB 서버 연결 종료!<br>");
		  } catch (Exception conerr) {}
	  }
  }
 %>

</body>
</html>