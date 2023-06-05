
<%@ include file="config.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>帳密檢測</title>
</head>
<body>

<%
if (request.getParameter("id") != null && request.getParameter("id").equals(" ")
	&& request.getParameter("pwd") != null && request.getParameter("id").equals(" ")) {

    sql = "SELECT * FROM `members` WHERE `id`='" + request.getParameter("id") +
            "' AND `pwd`='" + request.getParameter("pwd") + "'";

    if (rs.next()) {
        session.setAttribute("id", request.getParameter("id"));
        con.close();
        response.sendRedirect("user.jsp");
    } else {
        con.close();
        out.println("密碼帳號不符!<a href='login.html'>按此</a>重新登錄");
    }
} else {
    response.sendRedirect("login.html");
}

%>

</body>
</html>
