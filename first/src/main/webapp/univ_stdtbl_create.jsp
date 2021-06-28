<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>학생 테이블(student 스키마 생성(univ_stdtbl_create.jsp)</title>
</head>
<body>
 <%
  // 객체 참조 변수
  Connection conn = null;
  PreparedStatement pstmt = null;
  
  // JDBC 드라이버 로딩(loading JDBC driver)
  String driverClass = "org.mariadb.jdbc.Driver";
  
  try {
	  Class.forName(driverClass);
	  out.println("JDBC Driver load 성공! <br>");
  } catch (ClassNotFoundException err) {
	  out.println("JDBC Driver load 실패!...WEB-INF/lib 폴더 확인<br>");
  }
  
  // MariaDB 서버와 데이터베이스 연결(connect server & database )
  // "jdbc:mariadb://server_IP:3306/database_name"
  String url = "jdbc:mariadb://localhost:3306/univ";
  String id = "root"; // DB 사용자 아이디 
  String pw = "0000"; // DB 사용자 패스워드 
  
  try {
	  conn = DriverManager.getConnection(url, id, pw);
	  out.println("MariaDB 서버 연결 성공! <br>");
  } catch (SQLException sqlerr) {
  	  out.println("MariaDB 서버 연결 실패! <br>");
  	  out.println(sqlerr.getMessage() +"<br>");
  }
	  
	  // SQL 질의어 처리(Perform SQL query(DDL))
	  // 학생 데이터(student) 스키마 생성 
  try {
	String sql = "CREATE TABLE student("
			+ "hakbun	int		not		null,"
			+ "name		char(5),"
			+ "year		tinyint,"
			+ "dept		varchar(10),"
			+ "addr		varchar(50),"
			+ "primary	key(hakbun))";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	out.println("학생 테이블 생성 성공!<br>");
	
} catch (SQLException sqlerr) {
	out.println("학생 테이블(student) 생성 실패!!<br>");
	out.println(sqlerr.getMessage() + "<br>");
} finally {
	  // 데이터베이스 연결 종료(close database)
	if (pstmt != null) {
		try {
			pstmt.close();
			out.println("Statement_close!<br>");
		}catch (SQLException sqlerr) {}
		
		}
	if (conn != null) {
		try {
			conn.close();
			out.println("MariaDB 서버 연결 종료!<br>");
			
		}catch(Exception conerr) {}
	 }
  }
 %>

</body>
</html>