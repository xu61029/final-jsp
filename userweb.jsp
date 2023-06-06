<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="java.sql.Connection" %>

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
        <link rel="stylesheet" href="assets/css/useropen.css" />
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
                    <a href="user.html">
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

                <a href="index.html" >
                    <i class="fa-regular fa-user"></i>
                  <span>Sign OUT</span>
                </a>
                  </div>
            </div>	
        </div>
<%
String sql = "USE `final`";
    Connection con = null;
    String sql = "USE `final`";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database", "username", "password");
        con.createStatement().execute(sql);
        
        String loggedInUsername = (String) session.getAttribute("loggedInUsername");
        String selectQuery = "SELECT email, username, tel FROM users WHERE username=?";
        PreparedStatement pstmt = con.prepareStatement(selectQuery);
        pstmt.setString(1, loggedInUsername);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            String email = rs.getString("email");
            String username = rs.getString("username");
            String tel = rs.getString("tel");
            session.setAttribute("email", email);
            
            
            
%>

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
                        <i class="fa-solid fa-circle-user" style="color: black;" ></i>
                        <p style="font-size: 60px; font-weight: 800;"><%=rs.getString("username")%></p>
                    </div>
            
                    <div class="useredit">
                    <a href="user.jsp" target="_blank">
                    <i class="fa-solid fa-pen-to-square" style="color: black;"  ></i>
                    </a>
                    <p style="font-size: 30px; font-weight: 600; ">編輯個人資料</p>
                    </div>
                    <!-- left+right -->
                    <div class="userwholeinfor">
            
                        <div class="userleft">
            
                            <div class="usercon">
                                <span style= "display:block">姓名：</span> 
                            </div>
            
                            <div class="usercon">
                                <span style= "display:block">信箱：</span> 
                            </div>
            
                            <div class="usercon">
                                <span style= "display:block">電話：</span>
                            </div>

                            
                        </div>  
            
            
                        <div class="userright">
                            <div class="usercon">
                                <span style= "display:block; width: 200px;"><%=rs.getString("username")%></span> 
                            
                            </div>
            
                            <div class="usercon">
                                <span style= "display:block"><%=rs.getString("email")%></span> 
                            </div>
            
                            <div class="usercon">
                                <span style= "display:block"><%=rs.getString("tel")%></span> 
                            </div>
                        </div>
                    </div>
                </div>  

                <div class="content"><!-- 訂單-2 -->
                    <main class="table">
                        <section class="table__header">
                            <h1 style="color: black;">#A5846</h1><!-- 訂單編號 -->
                            
                            
                        </section>
                        <section class="table__body">
                            <table>
                                <thead>
                                    <tr style="text-align:center;" >
                                        
                                        <th  style="vertical-align:middle;"> Product </th>
                                        <th style="vertical-align:middle; width: 20%;"> QUANTITY</th>
                                        <th style="vertical-align:middle;"> TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right: 7%;">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td>
                                        
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right: 7%;">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td>
                                        
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right: 7%;">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td>
                                        
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                    </tr>
                                    
                                    
                                </tbody>
                            </table>
                        </section>
                    </main>
                </div>
                <div class="content"><!-- 評價-3 -->
                    <main class="table">
            
                        <section class="table__body">
                            <table>
                                <thead>
                                    <tr style="text-align:center;" >
                                        
                                        <th  style="vertical-align:middle;"> Product </th>
                                        <th style="vertical-align:middle; width: 20%;"> Message</th>
                                        <th style="vertical-align:middle;"> Star</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px; right: 7%; ">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td>
                                        <td style="text-align: center;"> 5</td>   
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right: 7%; ">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td> 
                                        <td style="text-align: center;"> 5</td>   
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right: 7%;">Alson GC</p> </td>
                                        <td style=" display: flex; align-items: center; justify-content: center; position: relative; top: 10px;"> 1 </td>    
                                        <td style="text-align: center;"> 5</td>   
                                    </tr>
                                    
                                    
                                </tbody>
                            </table>
                        </section>
                    </main>
                </div>
                <div class="content"><!-- 追蹤-4 -->
                    <main class="table"> 
                        <section class="table__body">
                            <table>
                                <thead>
                                    <tr style="text-align:center;" >
                                        <th  style="vertical-align:middle;"> Product </th>
                                        <th style="vertical-align:middle; width: 20%;"> Price</th>
                                        <th  style="vertical-align:middle;"> Unfollow</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right:3%;">Alson GC</p> </td>
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                        <td style="text-align: center; "> <i class="fa-solid fa-heart-crack" style="cursor: pointer; color: red;"></i></td> 
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right:3%;">Alson GC</p> </td>
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                        <td style="text-align: center;"> <i class="fa-solid fa-heart-crack" style="cursor: pointer; color: red;"></i></td> 
                                    </tr>
                                    <tr><!-- Good-per -->
                                        <td style="text-align: center;"><!--圖片連後端--><img src="images/tai/10III.png" style="display: flex;" alt=""> <p style="position: relative; top: 10px;  right:3%;">Alson GC</p> </td>
                                        <td style="text-align: center;"> $  <p style="display:inline;">615</p>  NTD </td>   
                                        <td style="text-align: center; "> <i class="fa-solid fa-heart-crack" style="cursor: pointer; color: red;"></i></td> 
                                    </tr>
                                   
                                    
                                    
                                </tbody>
                            </table>
                        </section>
                    </main>
                </div>
            </div>
        </div>
        <%
                response.sendRedirect("finished.html");
        }
    } catch (ClassNotFoundException e) {
        out.println("ClassNotFoundException: " + e.getMessage());
    } catch (SQLException e) {
        out.println("SQLException: " + e.getMessage());
    } finally {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                out.println("SQLException: " + e.getMessage());
            }
        }
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