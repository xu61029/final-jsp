<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/i12_product.css">
    <link rel="stylesheet" href="assets/css/product.css">
    <link rel="stylesheet" href="assets/css/headerr.css">
    <link rel="icon" href="images/tai/icon.jpg" type="image/x-icon"  >
    <script src="https://kit.fontawesome.com/605c912c10.js" crossorigin="anonymous"></script>
</head>
<body>
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
							<form action="search.jsp" method="post">
                                <input type="text" class="input" placeholder="search..." name="product_name">
                                <div class="btn" onclick="this.parentNode.submit()">
                                    <p><i class="fa-solid fa-magnifying-glass"></i></p>
                                </div>
                            </form>
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
				<a href="index.html" class="active">
						<i class="fa-solid fa-house"></i>
						<span>Home</span>
				</a>
			
				<a href="Apple.html" >
					<i class="fa-brands fa-apple"></i>
					<span>Apple</span>
				</a>
			
				<a href="Pixel.html">
					<i class="fa-brands fa-google"></i>
					<span>Pixel</span>
				</a>
			
				<a href="Sony.html">
					<i class="fa-solid fa-mobile-screen"></i>					  
					<span>Sony</span>
				</a>
			
				<a href="OPPO.html">
					<i class="fa-solid fa-mobile"></i>
					<span>OPPO</span>
				</a>

				<a href="login.html">
					<i class="fa-regular fa-user"></i>
					<span>Log IN</span>
				</a>


				<a href="signin.jsp">
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

    <main>
        <div class="imgg">
            <img class="i12" src="images/yi/apple/i12/IMG_3445.JPG" alt="iphone-12">
        </div>
        
        
        <div class="info">
            <h1 class="name">IPhone 12</h1>

            <div class="price">
                <h2 class="nt">NT.20900</h2>
            </div>

            <div class="love">
                <img class="heart" src="images/yi/icon/heart.png" alt="加入最愛">
            </div>

            <div>
                <h2 class="color">color</h2>
                <select class="choose" name="color">
                    <option value=""selected class="choose">請選擇顏色</option>
                    <option value="白色" class="choose">白色</option>
                    <option value="黑色" class="choose">黑色</option>
                    <option value="藍色" class="choose">藍色</option>
                    <option value="紫色" class="choose">紫色</option>
                    <option value="綠色" class="choose">綠色</option>
                    <option value="紅色" class="choose">紅色</option>
                </select>
            </div>
            <div class="number">
                <input class="less" type="button" value="-" id="del" onclick="minus(0)"/>
                <input class="quantity" type="text" value="1">
                <input class="add" type="button" value="+" id="add" onclick="add(0)"/>
            </div>

            <script>
                function minus(ctnnum){
                    var num =Number(document.getElementsByClassName("quantity")[ctnnum].value);
                    if(num>1){
                        document.getElementsByClassName("quantity")[ctnnum].value=num-1;
                    }
                }
                function add(ctnnum) {
                    var num =Number(document.getElementsByClassName("quantity")[ctnnum].value);
                    if(num<1000){
                        document.getElementsByClassName("quantity")[ctnnum].value=num+1;
                    }
                }
            </script>

            <div>
                <button class="cart">ADD TO CART</button>
            </div>
            
        </div>
       
        <fieldset class="introduce">
            <legend class="intro"><h1>規格介紹</h1></legend>
                <h2>顯示器</h2><br>
                <p>
                <li>
                超 Retina XDR 顯示器
                6.1 吋 (對角線) 全螢幕 OLED 顯示器
                2532 x 1170 像素，460 ppi 解析度
                HDR 顯示
                原彩顯示
                廣色域 (P3)
                觸覺回饋觸控
                2,000,000:1 對比度 (標準)
                625 尼特最大亮度 (標準)；1200 尼特峰值亮度 (HDR)
                防指印疏油外膜
                支援同時顯示多種語言文字
                </li>
                </p><br>
                <h2>晶片</h2><br>
                <p>
                <li>
                A14 仿生晶片
                6 核心 CPU 配備 2 個效能核心與 4 個節能核心
                4 核心 GPU
                16 核心神經網路引擎
                </li>
                </p>
        </fieldset>
       
        
        
        <fieldset class="review">
            <legend class="rev"><h1>評論</h1></legend>
            <img class="people" src="images/yi/people.png" alt="">
            <div class="sth">
                <h3>小戴</h3> 
                <div class="commentstar">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                </div>
                <p>2023/05/25</p>
                <p>好用!讚!</p>
                </div>

            <hr style="color: #686868; size: 3px;border-style: dotted;">

            <img class="people" src="images/yi/people.png" alt="">
            <div class="sth">
            <h3>沈蓁</h3> 
            <div class="commentstar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </div>
            <p>2023/05/25</p>
            <p>讚讚讚</p>
            </div>

            <hr style="color: #686868; size: 3px;border-style: dotted;">

            <img class="people" src="images/yi/people.png" alt="">
            <div class="sth">
            <h3>賴大媽</h3> 
            <div class="commentstar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            <p>2023/05/25</p>
            <p>讚</p>
            </div>
			
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
			
           sql="USE `product_search`";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `board` WHERE board.product='IPhone_11'"; 
           ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀

           
	       //計算開始記錄位置   
//Step 5: 顯示結果 

			rs.afterLast();
           while(rs.previous())
                {

				 out.println("<hr style=\"color: #686868; size: 3px;border-style: dotted;\">");
                 out.println("<img class=\"people\" src=\"images/people.png\" >");
                 out.println("<div class=\"sth\">");
                 out.println("<h3>"+rs.getString(1)+"</h3>");
                 out.println("<div class=\"commentstar\">");
                 for (int i=Integer.parseInt(rs.getString(2));i>0;i--){
					out.println("<span class=\"fa fa-star checked\"></span>");
				 }
				 out.println("</div>");
				 out.println("<p>"+rs.getString(3)+"</p>");
				 out.println("<p>"+rs.getString(4)+"</p>");
				 out.println("</div>");
          }
//Step 6: 關閉連線
          con.close();
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

        </fieldset>
        

        <section>
            <fieldset class="reviewbroad">
                <legend class="rev"><h1>評論版</h1></legend>
                <div  style="text-align: center;">
                    <form action="review_board.jsp" method="get">
                        <input class="commentinput" type="text" placeholder="User Name" style="text-align: center;" name="name"><br><br>
                        <span class="star-rating" style="width:150px;height:30px">
                            <input type="radio" name="rating" value="1"><i></i>
                            <input type="radio" name="rating" value="2"><i></i>
                            <input type="radio" name="rating" value="3"><i></i>
                            <input type="radio" name="rating" value="4"><i></i>
                            <input type="radio" name="rating" value="5"><i></i>
                        </span>
                        <br><br>
                        <textarea name="review" id="" cols="122" rows="10" placeholder="Write Something...."></textarea><br>
                        <input type="submit" value="Submit" class="commentsubmit">
                    </form>
                </div>
            </fieldset>
        </section>
    </main>
    <footer class="footer">
        <hr style="width:100%; height: 1px; border:none; background-color:#4444">
        <h5>Copyrgiht @ 2023  By Starlink</h5>
        <h5>瀏覽人數:2000</h5>
    </footer>

    <a class="gotopbtn" href="#"><i class="fa-solid fa-arrow-up"></i></a>
</body>
</html>