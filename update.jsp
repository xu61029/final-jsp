<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
try {
    // Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
        // Step 2: 建立連線 	
        String url = "jdbc:mysql://localhost/final?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
            out.println("連線建立失敗");
        else {
            // Step 3: 選擇資料庫   
            sql="use `members`";
            con.createStatement().execute(sql);
            request.setCharacterEncoding("UTF-8");  
            String new_pwd=request.getParameter("pwd");
            String new_username=request.getParameter("username");
            String new_tel=request.getParameter("tel");
            String new_email=request.getParameter("email");
			String new_gender=request.getParameter("gender");
            // 舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
            // String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
            // String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
            // String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
            java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
            String ip = request.getRemoteAddr(); // Get client IP address

            // Step 4: 執行 SQL 指令	
            
			if(request.getParameter("id")!=null){
			sql = "UPDATE `members` SET `id`='"+request.getParameter("id")+"', `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
			con.createStatement().execute(sql);
			sql = "UPDATE `members` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
			con.createStatement().execute(sql);    
			sql = "UPDATE `members` SET `username`='"+request.getParameter("username")+"' WHERE `id`='"+session.getAttribute("id")+"'";
			con.createStatement().execute(sql);    
			sql = "UPDATE `members` SET `tel='"+request.getParameter("tel")+"' WHERE `id`='"+session.getAttribute("id")+"'";
			con.createStatement().execute(sql);    
			sql = "UPDATE `members` SET `email`='"+request.getParameter("email")+"' WHERE `id`='"+session.getAttribute("id")+"'";
			con.createStatement().execute(sql);        
			con.close();//結束資料庫連結
			out.print("更新成功!! 請<a href='UserInfo.html'>按此</a>回會員頁面!!");
			}
			else{
				con.close();//結束資料庫連結    
				out.print("更新失敗!! 請填寫完整，<a href='UserInfo.html'>按此</a>回會員頁面!!");
			}

else{
	con.close();//結束資料庫連結

            
            
            // Step 5: 顯示結果 
            // 直接顯示最新的資料
            response.sendRedirect("view.jsp?page=1&ip=" + ip); // Pass IP as a parameter
        }
    }
    catch (SQLException sExec) {
        out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
if(session.getAttribute("id") != null ){
    if(request.getParameter("id")!=null){
    sql = "UPDATE `members` SET `id`='"+request.getParameter("id")+"', `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);
    sql = "UPDATE `members` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `members` SET `username`='"+request.getParameter("username")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `members` SET `tel='"+request.getParameter("tel")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `members` SET `email`='"+request.getParameter("email")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);		
	con.close();//結束資料庫連結
	out.print("更新成功!! 請<a href='UserInfo.html'>按此</a>回會員頁面!!");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='UserInfo.html'>按此</a>回會員頁面!!");
	}
}

%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" required /><br />
密碼：<input type="password" name="pwd" required /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
