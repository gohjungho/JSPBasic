<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>학생 테이블(student) 학생 정보 검색(std_ret_table.jsp)</title>
<link rel="stylesheet" href="../common/CSS/table_retrieval.css">
</head>
<body>
 <%
  // 객체 참조 변수
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rset = null;
  
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
	  // 학생 테이블(customer) 검색 
	  String sql = "SELECT * FROM student ORDER BY hakbun ASC"; 
	  pstmt = conn.prepareStatement(sql);
	  rset = pstmt.executeQuery();
	  
	  // 학생 정보 검색 출력 
%>

<form name="student_form_table">
 <table>
  <caption>학생 정보 검색</caption>
  <tr>
   <th>학 번</th>
   <th>이 름</th>
   <th>학 년</th>
   <th>학 과</th>
   <th>주 소</th>
  </tr>
  <%
   // 학생 정보(레코드 셋) 출력 
   while (rset.next()) {
	   
	   String hakbun = rset.getString("hakbun");
	   String name = rset.getString("name");
	   String year = rset.getString("year");
	   		  year = year + "학년";
	   String dept = rset.getString("dept");
	   String addr = rset.getString("addr");
   %>
    <tr>
     <td><%=hakbun%></td>
     <td><%=name%></td>
     <td><%=year%></td>
     <td><%=dept%></td>
     <td><%=addr%></td>
    </tr>
   <%
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
   %>
   
  </table>
 </form>
</body>
</html>