<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% // 한글 파라미터 post 전송 경우
	request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크 및 세션 설정(db_login_check.jsp)</title>
</head>
<body>

<%
 // 객체 참조 변수 
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rset = null;

 //JDBC 드라이버 로딩(loading JDBC driver)
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
	  
	  
	  // 학생 정보 검색 출력 
	  if (!rset.isBeforeFirst()) {
		  
		  // 자바 스크립트 
		  out.print("<script>alert('존재하지 않는 학생입니다!');"
		  				+ "history.back();"
		  			+ "</script>");
 	}
	  
	// 학생 정보 추출(학변, 이름) 
	out.println("학생 테이블(student) 검색 성공! <br>");
	
	rset.next(); // 커서 현재 위치 다음 행으로 이동 
	String db_hakbun = rset.getString("hakbun");
	String db_name = rset.getString("name");
	
	// 로그인 인증 및 세션 객체의 속성(세션 변수) 설정 
	if (hakbun.equals(db_hakbun)) {
		
		session.setAttribute("hakbun", db_hakbun);
		session.setAttribute("name", db_name);
		out.print(session.getAttribute("hakbun") + "("
				+ session.getAttribute("name") + ")님 방문을 환영합니다! <br>");
	}
 } catch (SQLException sqlerr) {
	  out.println("SQL 질의처리 오류!" + "<br>");
	  out.println(sqlerr.getMessage() + "<br>");
	  
 } finally {
	  // 데이터베이스 연결 종료(close database)
	  if (rset != null) {
		  try {
			  rset.close();
			  out.println("ResultSet_close!<br>");
		} catch (SQLException sqlerr) {}
		
	  }
	  if (pstmt != null) {
		  try {
			  pstmt.close();
			  out.println("Statement_close!<br>");
			
		  } catch(SQLException sqlerr) {}
	  }
	  if (conn != null) {
		  try {
			  conn.close();
			  out.println("MariaDB 서버 연결 종료!<br>");
		  } catch (Exception conerr) {}
	  }
  }
 
  // 지정 페이지(URL)로 강제 이동 
  // response.sendRedirect("./db_std_ins_form.jsp");
 %>

 <p><a href="./db_std_ins_form.jsp">[로그인 폼]</a>

</body>
</html>