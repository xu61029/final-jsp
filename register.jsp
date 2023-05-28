<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>

<%
// 获取表单提交的数据
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String password = request.getParameter("password");

try {
    // Step 1: 载入数据库驱动程序
    Class.forName("com.mysql.cj.jdbc.Driver");

    try {
        // Step 2: 建立连接
        String url = "jdbc:mysql://localhost/members?serverTimezone=UTC";
        String sql;
        Connection con = DriverManager.getConnection(url, "root", "1234");
        if (con.isClosed())
            out.println("连接建立失败");
        else {
            // Step 3: 创建并执行 SQL 语句
			sql = "USE `members`";
            sql = "INSERT INTO member (name, sex, email, phone, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, sex);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, password);
            statement.executeUpdate();

            out.println("会员注册成功！");
        }
        // Step 4: 关闭连接
        con.close();
    } catch (SQLException sExec) {
        out.println("SQL错误：" + sExec.toString());
    }
} catch (ClassNotFoundException err) {
    out.println("类错误：" + err.toString());
}
%>
