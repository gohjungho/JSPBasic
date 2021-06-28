<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>학생 테이블(student) 학생 정보 저장(std_ins_db.jsp)</title>
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
	  out.println("데이터베이스 연결 성공! <br>");
	  
	  // SQL 질의어 처리(Perform SQL query(DML)
	  // 전송 데이터 변수 할당
	  String hakbun = request.getParameter("hakbun");
	  String name = request.getParameter("name");
	  String year = request.getParameter("year");
	  String dept = request.getParameter("dept");
	  String addr = request.getParameter("addr");
	  
	  // 학생 테이블(student) 튜플 삽입 
	  String sql = "insert into student values(?,?,?,?,?)";
	  pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, hakbun);
	    pstmt.setString(2, name);
	    pstmt.setString(3, year);
	    pstmt.setString(4, dept);
	    pstmt.setString(5, addr);
	  pstmt.executeUpdate();
	  out.println("학생 테이블(student) 튜플 삽입 성공! <br>");
  } catch (SQLException sqlerr) {
  	  out.println("학생 테이블(student) 튜플 삽입 실패! <br>");
  	  out.println(sqlerr.getMessage() +"<br>");
  
  } finally {
	  // 데이터베이스 연결 종료(close database)
	  if (pstmt != null) {
		  try {
			  pstmt.close();
			  out.println("Statement_close!<br>");
		} catch (SQLException sqlerr) {}
		
		}
	  if (conn != null) {
		  try {
			  conn.close();
			  out.println("MariaDB 서버 연결 종료!<br>");
			
		  } catch(Exception conerr) {}
	  }
  }
  
  // 지정 페이지(URL)로 강제 이동
  // response.sendRedirect("./std_ins_form.jsp");
 %>

</body>
</html>