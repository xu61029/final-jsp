<%@ page import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/final?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use `members`";
con.createStatement().execute(sql);
%>
