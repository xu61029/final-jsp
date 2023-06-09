<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>

<html>
<head>
<title>add</title>
</head>
<body>


<%  request.setCharacterEncoding("UTF-8")  ;%>

<%
	if (session.getAttribute("email")!= null){
		
		
//Step 3: 選擇資料庫   

           sql="use product_search";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String address = request.getParameter("address");
		   sql = "SELECT SUM(total) FROM shop_car WHERE member = '"+session.getAttribute("email").toString()+"'";
		   ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
		    rs.first();
		   int total_num = Integer. parseInt(rs.getString(1));
		   
		   
		   

//Step 4: 執行 SQL 指令	
			
           sql="UPDATE shop_car SET address='"+address+"',total_num='"+total_num+"' WHERE member='"+session.getAttribute("email").toString()+"'";
           con.createStatement().execute(sql);
		   
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("order.jsp");
      }
else{
	con.close();
	response.sendRedirect("signin.jsp");
}
%>

</body>
</html>
