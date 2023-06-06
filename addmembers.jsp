<%@ page import="java.sql.*, java.io.*" %>
<%@ include file="config.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>新增會員</title>
</head>
<body>
<%
try {
    // Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
        // Step 2: 建立連線 	
        String dbUrl = "jdbc:mysql://localhost/final?serverTimezone=UTC";
        Connection connection = DriverManager.getConnection(dbUrl, "root", "1234");
        if (connection.isClosed())
            out.println("連線建立失敗");
        else {
            request.setCharacterEncoding("UTF-8");

            // 获取用户输入的数据
            String new_username = request.getParameter("username");
            String new_gender = request.getParameter("gender");
            String new_email = request.getParameter("email");
            String new_tel = request.getParameter("tel");
            String new_pwd = request.getParameter("pwd");
            String confirm_pwd = request.getParameter("pwd_confirm");

            if (!new_pwd.equals(confirm_pwd)) {
                // 密码不匹配，进行相应处理
                out.println("密碼不匹配，请重新输入密码！");
            } else {
                // 密码匹配，执行插入操作
                // Step 4: 执行 SQL 指令	
                String insertSql = "INSERT INTO `members` (`pwd`, `username`, `tel`, `email`, `gender`) ";
                insertSql += "VALUES (?, ?, ?, ?, ?)";

                // 使用 PreparedStatement 来执行 SQL，使用参数来防止 SQL 注入
                PreparedStatement preparedStatement = connection.prepareStatement(insertSql);
                preparedStatement.setString(1, new_pwd);
                preparedStatement.setString(2, new_username);
                preparedStatement.setString(3, new_tel);
                preparedStatement.setString(4, new_email);
                preparedStatement.setString(5, new_gender);

                preparedStatement.executeUpdate();
                preparedStatement.close();

                // Step 4: 關閉連線
                connection.close();

                // Step 5: 顯示結果 
                response.sendRedirect("finished.html");
            }
        }
    } catch (SQLException sExec) {
        out.println("SQL錯誤" + sExec.toString());
    }
} catch (ClassNotFoundException err) {
    out.println("class錯誤" + err.toString());
}
%>
</body>
</html>
