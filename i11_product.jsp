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
    <link rel="stylesheet" href="assets/css/i11_product.css">
    <link rel="stylesheet" href="assets/css/headerr.css">
    <link rel="icon" href="images/icon.jpg" type="image/x-icon"  >
    <script src="https://kit.fontawesome.com/605c912c10.js" crossorigin="anonymous"></script>
</head>
<body>
    <!-- Page Wrapper -->
    <div id="page-wrapper">

	    <header id="header" class="">
			<!-- Header -->
				
			<div class="logo">
				<a href="index.html">
				<img src="images/icon.jpg" width="20%" >
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
                    <a href="user.html">
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


				<a href="signin.html">
					<i class="fa-regular fa-user"></i>
					<span>Sign IN</span>
				</a>
			    </div>
		    </div>	
	    </div>

    <main>
        <section class="imgg"> <!--幻燈片-->
            <div class="slideshow-container3">
    
                <div class="mySlides fade">
                    <img src="images/apple/i11/IMG_3457.JPG">
                </div>
                <div class="mySlides fade">
                    <img src="images/apple/i11/IMG_3458.png" style="width: 380px;">
                </div>
                <div class="mySlides fade">
                    <img src="images/apple/i11/檔案_002.png">
                </div>
                
                <div class="mySlides fade">
                    <img src="images/apple/i11/IMG_3460.JPG">
                </div>
                
            </div>
            <br>
            <div style="margin-left: 60%;">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <script>
                    let slideIndex = 0;
                    showSlides();
        
                    function showSlides() {
                        let i;
                        let slides = document.getElementsByClassName("mySlides");
                        let dots = document.getElementsByClassName("dot");
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";
                        }
                        slideIndex++;
                        if (slideIndex > slides.length) { slideIndex = 1 }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " active";
                        setTimeout(showSlides, 2000); // 兩秒後換照片
                    }
                </script>
        </section>
        
        <div class="info">
            <h1 class="name">IPhone 11</h1>

            <div class="price">
                <h2 class="nt">NT.13000</h2>
            </div>

            <div class="love">
                <img class="heart" src="images/icon/heart.png" alt="加入最愛">
            </div>

            <div>
                <h2 class="color">color</h2>
                <select class="choose" name="color">
                    <option value=""selected class="choose">請選擇顏色</option>
                    <option value="星光色" class="choose">星光色</option>
                    <option value="午夜色" class="choose">午夜色</option>
                    <option value="藍色" class="choose">藍色</option>
                    <option value="粉紅色" class="choose">粉紅色</option>
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
            <legend class="intro"><h1>功能介紹</h1></legend>
            <p></p> 
        </fieldset>
       

        
        <fieldset class="review">
            <legend class="rev"><h1>評論</h1></legend>
            <img class="people" src="images/people.png" alt="">
            <div class="sth">
                <h3>頂戴轟</h3> 
                <div class="commentstar">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                </div>
                <p>2023/05/25</p>
                <p>好餓好餓好餓</p>
                </div>

            <hr style="color: #686868; size: 3px;border-style: dotted;">

            <img class="people" src="images/people.png" alt="">
            <div class="sth">
            <h3>沈博熱美</h3> 
            <div class="commentstar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </div>
            <p>2023/05/25</p>
            <p>好想打特戰嗚嗚嗚</p>
            </div>

            <hr style="color: #686868; size: 3px;border-style: dotted;">

            <img class="people" src="images/people.png" alt="">
            <div class="sth">
            <h3>馬龜拉拉</h3> 
            <div class="commentstar">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </div>
            <p>2023/05/25</p>
            <p>好想好想睡啊啊啊啊啊</p>
            </div>

            
        </fieldset>
        

        <section>
            <fieldset class="reviewbroad">
                <legend class="rev"><h1>評論版</h1></legend>
                <div  style="text-align: center;">
                    <form action="review_board.jsp" method="post">
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
                        <input type="button" value="Submit" id="submit" class="commentsubmit">
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