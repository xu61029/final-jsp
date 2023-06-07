<%@page contentType="text/html;charset=utf-8" language="java" %>
<%@ page import="java.sql.*, java.io.* " %>
<% String dbUrl = "jdbc:mysql://localhost/product_search?serverTimezone=UTC"; %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Solid State by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/sliderbar.css" />
		<link rel="stylesheet" href="assets/css/righticon.css" />
		<link rel="stylesheet" href="assets/css/slide.css">
        <link rel="stylesheet" href="./assets/css/useropen.css" />
        <link rel="stylesheet" href="assets/css/userorder.css" />
		<link rel="icon" href="images/tai/icon.jpg" type="image/x-icon"  > 
		<script src="https://kit.fontawesome.com/605c912c10.js" crossorigin="anonymous"></script>
	</head>
    
	<body class="is-preload">

		<!-- Page Wrapper -->
        <div id="page-wrapper">

            <header id="header" class="">
            <!-- Header -->

            
            <div class="logo">
            <a href="index.html">
            <img src="images/tai/icon.jpg" width="20%" >
            </a>
            </div>
            
            <div class="righticon">
                <ul>						
                <li>
                    <div class="search_wrap">
                        <div class="search_box">
                            <input type="text" class="input" placeholder="search...">
                            <div class="btn">
                                <p><i class="fa-solid fa-magnifying-glass"></i></p>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <a href="userweb.jsp">
                    <i class="fa-solid fa-circle-user" id="iconuser" ></i>
                    </a>
                </li>
                
                <li>
                    <a href="shopcar.html">
                    <i class="fa-solid fa-cart-plus" id="iconcart"></i>
                    </a>
                </li>

                </ul>
            </div>			
            </header>

            <!-- Menu -->
            <div style=" position: absolute; z-index:200 ">
                <input type="checkbox" id="check">
                <label for="check">
                  <i class="fas fa-bars" id="btn"></i>
                  <i class="fas fa-times" id="cancel"></i>
                </label>

                <div class="sidebar">
                    <a href="index.html" class="active" >
                        <i class="fa-solid fa-house"></i>
                        <span>Home</span>
                </a>
        
                <a href="Apple.html">
                    <i class="fa-brands fa-apple"></i>
                  <span>Apple</span>
                </a>
        
                <a href="Pixel.html" >
                    <i class="fa-brands fa-google"></i>
                  <span>Pixel</span>
                </a>
        
                <a href="Sony.html" >
                    <i class="fa-solid fa-mobile-screen"></i>					  
                    <span>Sony</span>
                </a>
        
                <a href="OPPO.html" >
                    <i class="fa-solid fa-mobile"></i>
                  <span>OPPO</span>
                </a>

                <a href="login.html" >
                    <i class="fa-regular fa-user"></i>
                  <span>Log IN</span>
                </a>


                <a href="signin.jsp" >
                    <i class="fa-regular fa-user"></i>
                  <span>Sign IN</span>
                </a>

                <a href="logout.jsp" >
                    <i class="fa-regular fa-user"></i>
                  <span>Sign OUT</span>
                </a>
                  </div>
            </div>	
        </div>
<%
try {
    String loggedInemail = (String) session.getAttribute("email");

    // 使用已登入的使用者名稱進行資料庫查詢
    String selectQuery = "SELECT email, username, tel FROM product_search.members WHERE email=?";
    Connection connection = DriverManager.getConnection(dbUrl, "root", "1234");
    PreparedStatement pstmt = connection.prepareStatement(selectQuery);
    pstmt.setString(1, loggedInemail);
    ResultSet rs = pstmt.executeQuery();

    // 檢查是否找到符合條件的資料
    if (rs.next()) {
        String email = rs.getString("email");
        String username = rs.getString("username");
        String tel = rs.getString("tel");

%>
<!-- HTML部分 -->
<div class="containerdisplay">
    <div class="container">
        <div class="tab_box">
            <button class="tab_btn">個人資訊</button>
            <button class="tab_btn">訂單</button>
            <button class="tab_btn">評價</button>
            <button class="tab_btn">追蹤</button>
            <div class="line"></div>
        </div>

        <div class="content_box">

            <div class="content"><!-- 個人資訊-1 -->
                <div class="userinfor">
                    <i class="fa-solid fa-circle-user" style="color: black;"></i>
                    <p style="font-size: 60px; font-weight: 800;"><%= username %></p>
                </div>

                <div class="useredit">
                    <a href="user.jsp" target="_blank">
                        <i class="fa-solid fa-pen-to-square" style="color: black;"></i>
                    </a>
                    <p style="font-size: 30px; font-weight: 600;">編輯個人資料</p>
                </div>
                <!-- left+right -->
                <div class="userwholeinfor">

                    <div class="userleft">

                        <div class="usercon">
                            <span style="display:block">姓名：</span>
                        </div>

                        <div class="usercon">
                            <span style="display:block">信箱：</span>
                        </div>

                        <div class="usercon">
                            <span style="display:block">電話：</span>
                        </div>


                    </div>


                    <div class="userright">
                        <div class="usercon">
                            <span style="display:block; width: 200px;"><%= username %></span>

                        </div>

                        <div class="usercon">
                            <span style="display:block"><%= email %></span>
                        </div>

                        <div class="usercon">
                            <span style="display:block"><%= tel %></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    } else {
		%>
        <script>
                alert("尚未登入 !!");
                window.location.href = "signin.jsp";
            </script>

<%

    }
} catch (SQLException e) {
    out.println("SQLException: " + e.getMessage());
}
%>



        <script>
            const tabs= document.querySelectorAll('.tab_btn');
                 const all_content= document.querySelectorAll('.content');
     
                 tabs.forEach((tab,index)=>{
                     tab.addEventListener('click',(e)=>{
                         tabs.forEach(tab=>{tab.classList.remove('active')});
                         tab.classList.add('active');
     
                         var line=document.querySelector('.line');
                     line.style.width = e.target.offsetWidth+"px";
                     line.style.left = e.target.offsetLeft+"px";
     
                     all_content.forEach(content=>{content.classList.remove('active')});
                     all_content[index].classList.add('active');
                     })
                    
                 })
     
         </script>
          <p style="bottom: 0;"></p>
          
	</body>
</html>