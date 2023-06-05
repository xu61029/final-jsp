<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="", pwd="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    id=rs.getString("id");
		pwd=rs.getString("pwd");
	}
    con.close();//結束資料庫連結
%>
<%=id%>，<a href='logout.jsp' target="_blank" >登出</a><br />
<%
}
else{
	con.close();//結束資料庫連結
%>
<a href='LogIn.html' target="_blank" >登入</a><br />
<%
}
%>