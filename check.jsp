<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%

  
if(request.getParameter("email") !=null && request.getParameter("pwd") != null){
      
    
    //sql = "SELECT * FROM members WHERE email='" +request.getParameter("email") + 
	//      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    sql = "SELECT * FROM final.members WHERE email=? AND pwd=?";
	//' OR 1=1; #
	//out.println(sql);
	//out.close();//程式結束
    PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
    pstmt.setString(1,request.getParameter("email"));
    pstmt.setString(2,request.getParameter("pwd"));
	
	ResultSet paperrs = pstmt.executeQuery();
	//ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("email",request.getParameter("email"));
        response.sendRedirect("userweb.jsp") ;
    }
    else
        %>
      <script>
        alert("密碼帳號不符 !!");
        window.location.href = "signin.jsp";
      </script>
<%
}
%>