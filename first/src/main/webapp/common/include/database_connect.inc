 <%
 // file = "../common/include/database_connect.inc"
 
 //JDBC ����̹� �ε�(loading JDBC driver)
 String driverClass = "org.mariadb.jdbc.Driver";

 try {
	  Class.forName(driverClass);
 } catch (ClassNotFoundException err) {
	  System.out.println("JDBC ����̹� �ε� ����! " + err.getMessage());
 }

 // MariaDB ������ �����ͺ��̽� ����(connect server & database )
 String url = "jdbc:mariadb://localhost:3306/univ";
 String id = "root"; // DB ����� ���̵� 
 String pw = "0000"; // DB ����� �н����� 
 
 try {
	  conn = DriverManager.getConnection(url, id, pw);
 } catch (SQLException sqlerr) {
	  out.println("�����ͺ��̽� ���� ����!" + sqlerr.getMessage());
 }
%>