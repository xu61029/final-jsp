<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>新增會員</title>
</head>
<body>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/final?serverTimezone=UTC";
    Connection con = DriverManager.getConnection(url, "root", "1234");
    if (con.isClosed())
        out.println("連線建立失敗");
    else {
        String sql = "USE members";
        con.createStatement().execute(sql);
        request.setCharacterEncoding("UTF-8");

        String new_username = request.getParameter("username");
        String new_gender = request.getParameter("gender");
        String new_email = request.getParameter("email");
        String new_tel = request.getParameter("tel");
        String new_pwd = request.getParameter("pwd");
        String confirm_pwd = request.getParameter("pwd_confirm");

        if (!new_pwd.equals(confirm_pwd)) {
            out.println("密碼不匹配，请重新输入密码！");
        } else {
            sql = "INSERT INTO members (username, gender, email, tel, pwd) ";
            sql += "VALUES (?, ?, ?, ?, ?)";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, new_username);
            stmt.setString(2, new_gender);
            stmt.setString(3, new_email);
            stmt.setString(4, new_tel);
            stmt.setString(5, new_pwd);

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("finished.html");
            } else {
                out.println("插入数据失败");
            }
        }
        con.close();
    }
} catch (Exception e) {
    out.println("发生错误: " + e.getMessage());
}
%>
</body>
</html>
