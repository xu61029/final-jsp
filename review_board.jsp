<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>

<html>
<head>
<title>add</title>
</head>
<body>


<%  request.setCharacterEncoding("UTF-8")  ;%>
<%

		try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use product_search";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String new_name = request.getParameter("name");
		   String new_rating = request.getParameter("rating");
		   String new_review = request.getParameter("review");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="INSERT INTO board(name,rating,comment) ";
           sql+="VALUES ('" + new_name + "', ";
           sql+="'"+new_rating+"', ";
		  // sql+="'"+new_date+"', ";
		   sql+="'"+new_review+"')";   

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("review_show.jsp");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
	
%>

</body>
</html>
