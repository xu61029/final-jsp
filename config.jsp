<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>連接sql</title>
</head>
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost/final?serverTimezone=UTC";
Connection con = DriverManager.getConnection(url,"root","1234");
String sql = "USE members";
con.createStatement().execute(sql);
%>

</body>
</html>
