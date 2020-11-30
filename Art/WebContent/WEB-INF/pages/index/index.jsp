<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
<style>
h1, h2 {
	text-align:center;
}

.logo {
	width: 600px;
}

#search {
	width: 400px;
	height: 40px;
 	margin-left: 50px; 
}

#category {
	width: 120pX;
	float:left; 
	height: 30px;
 	margin-left: 150px; 
}

#searchsite {
	width: 120pX;
	height: 30px;
 	float:left; 
}

.textbox-n {
	width: 120pX;
	height: 30px;
	float:left; 
}
</style>
</head>

<body>

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-8">
							<h6 class="text-white">Openning on 21st February, 2018</h6>
							<h1 class="text-white">
								得藝的一天 ‧ 測試中首頁				
							</h1>
							<p class="pt-20 pb-20 text-white">
								我要在這邊打很多字，讓一切看起來很有一回事。<br>順帶一提 TILES 的設定是 A-E 要改成這個對外模板，但是上方工具列卻不能用組裝的，所以不需要設定 HEADER。<br>
								為什麼不能把 HEADER 設定在 tiles 裡面呢？為何 js 會無法找到呢？
						
							</p>
							<a href="<c:url value='/element.controller' />" class="primary-btn text-uppercase">スタート！</a>
								<div class="bodydiv"><br>

<%-- 				<img src="<c:url value='/images/04/logo.jpg'/> " alt="logo" title="logo" class="logo"><br> --%>

				<form method=GET action="<c:url value='/04/SearchTo.ctrl'/>">

					<!-- 隱藏屬性 用來傳遞頁數 -->
					<input type="hidden" name="page" value="1">

					<!--    模糊查詢功能 -->
					<input type=TEXT name="searchString" class=""placeholder="音樂 展覽 舞蹈 台中" id="search"> <input type=SUBMIT value="查詢" class="genric-btn primary radius" id="searchbut"><br>

					<br> <select id="category" class="current" name="category">
						<option value="" selected>分類查詢</option>
						<option value="1">音樂</option>
						<option value="2">戲劇</option>
						<option value="3">舞蹈</option>
						<option value="4">親子</option>
						<option value="5">獨立音樂</option>
						<option value="6">展覽</option>
						<option value="7">講座</option>
						<option value="8">電影</option>
						<option value="11">綜藝</option>
						<option value="13">競賽</option>
						<option value="14">徵選</option>
						<option value="15">其他</option>
						<option value="16">科教</option>
						<option value="17">演唱會</option>
						<option value="19">研習課程</option>
					</select> 
					<select id="searchsite" class="" name="searchsite">
						<option value="" selected>地區查詢</option>
						<option value="">==北部地區==</option>
						<option value="基隆">基隆</option>
						<option value="台北">台北</option>
						<option value="新北">新北</option>
						<option value="桃園">桃園</option>
						<option value="新竹">新竹</option>
						<option value="">==中部地區==</option>
						<option value="苗栗">苗栗</option>
						<option value="台中">台中</option>
						<option value="彰化">彰化</option>
						<option value="南投">南投</option>
						<option value="雲林">雲林</option>
						<option value="">==南部地區==</option>
						<option value="嘉義">嘉義</option>
						<option value="南投">南投</option>
						<option value="高雄">高雄</option>
						<option value="屏東">屏東</option>
						<option value="">==東部地區==</option>
						<option value="宜蘭">宜蘭</option>
						<option value="花蓮">花蓮</option>
						<option value="台東">台東</option>

					</select> 
					<input placeholder="開始日查詢" class="textbox-n" type="text"
						onfocus="(this.type='date')" id="startdate" name="startdate">
					<input placeholder="結束日查詢" class="textbox-n" type="text"
						onfocus="(this.type='date')" id="enddate" name="enddate">
				
				</form>
			</div>
						</div>											
					</div>
				</div>					
			</section>
			<!-- End banner Area -->	

			<!-- Start service Area -->
			<section class="service-area pt-100" id="about">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<div class="single-service">
							  <span class="lnr lnr-clock"></span>
							  <h4>Openning Hours</h4>
							  <p>
							  	Mon - Fri: 10.00am to 05.00pm
								Sat: 12.00pm to 03.00 pm
								Sunday Closed
							  </p>						 	
							  <div class="overlay">
							    <div class="text">
							    	<p>
							    		Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features.that we use in life
							    	</p>
							    	<a href="#" class="text-uppercase primary-btn">Buy ticket</a>
							    </div>
							  </div>
							</div>							
						</div>
						<div class="col-lg-4">
							<div class="single-service">
							  <span class="lnr lnr-rocket"></span>
							  <h4>Ongoing Exhibitions</h4>
							  <p>
							  	Mon - Fri: 10.00am to 05.00pm
								Sat: 12.00pm to 03.00 pm
								Sunday Closed
							  </p>						 	
							  <div class="overlay">
							    <div class="text">
							    	<p>
							    		Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features.that we use in life
							    	</p>
							    	<a href="#" class="text-uppercase primary-btn">Buy ticket</a>
							    </div>
							  </div>
							</div>							
						</div>
						<div class="col-lg-4">
							<div class="single-service">
							  <span class="lnr lnr-briefcase"></span>
							  <h4>Openning Events</h4>
							  <p>
							  	Mon - Fri: 10.00am to 05.00pm
								Sat: 12.00pm to 03.00 pm
								Sunday Closed
							  </p>						 	
							  <div class="overlay">
							    <div class="text">
							    	<p>
							    		Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features that we use in life Here, I focus on a range of items and features.that we use in life
							    	</p>
							    	<a href="#" class="text-uppercase primary-btn">Buy ticket</a>
							    </div>
							  </div>
							</div>							
						</div>												
					</div>
				</div>	
			</section>
			<!-- End service Area -->
			
			<!-- Start quote Area -->
			<section class="quote-area section-gap">
				<div class="container">				
					<div class="row">
						<div class="col-lg-6 quote-left">
							<h1>
								<span>Music</span> gives soul to the universe, <br>
								wings to the <span>mind</span>, flight <br>
								to the <span>imagination</span>.
							</h1>
						</div>
						<div class="col-lg-6 quote-right">
							<p>
								Who are in extremely love with eco friendly system
							</p>
						</div>
					</div>
				</div>	
			</section>
			<!-- End quote Area -->

			<!-- Start exibition Area -->
			<section class="exibition-area section-gap" id="exhibitions">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-10">
							<div class="title text-center">
								<h1 class="mb-10">Ongoing Exhibitions from the scratch</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="active-exibition-carusel">
							<div class="single-exibition item">
								<img src="img/e1.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img src="img/e2.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img src="img/e3.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>							
							<div class="single-exibition item">
								<img src="img/e1.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img src="img/e2.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img src="img/e3.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>							
							<div class="single-exibition item">
								<img src="img/e1.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img class="img-fluid" src="img/e2.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>

							<div class="single-exibition item">
								<img class="img-fluid" src="img/e3.jpg" alt="">
								<ul class="tags">
									<li><a href="#">Travel</a></li>
									<li><a href="#">Life style</a></li>
								</ul>
								<a href="#"><h4>Portable latest blog for women</h4></a>
								<p>
									Lorem ipsum dolor sit amet, consec teturadip isicing elit, sed do eiusmod tempor.
								</p>
								<h6 class="date">31st January, 2018</h6>
							</div>
						</div>													
					</div>
				</div>	
			</section>
			<!-- End exibition Area -->			
		
			<!-- Start upcoming-event Area -->
			<section class="upcoming-event-area section-gap" id="events">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-60 col-lg-10">
							<div class="title text-center">
								<h1 class="mb-10">Checkout our Upcoming Events</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="col-lg-6 event-left">
							<div class="single-events">
								<img class="img-fluid" src="img/u1.jpg" alt="">
								<a href="#"><h4>Event on the rock solid carbon</h4></a>
								<h6><span>21st February</span> at Central government museum</h6>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially.
								</p>
								<a href="#" class="primary-btn text-uppercase">View Details</a>
							</div>
							<div class="single-events">
								<img class="img-fluid" src="img/u3.jpg" alt="">
								<a href="#"><h4>Event on the rock solid carbon</h4></a>
								<h6><span>21st February</span> at Central government museum</h6>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially.
								</p>
								<a href="#" class="primary-btn text-uppercase">View Details</a>
							</div>							
						</div>
						<div class="col-lg-6 event-right">
							<div class="single-events">
								<a href="#"><h4>Event on the rock solid carbon</h4></a>
								<h6><span>21st February</span> at Central government museum</h6>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially.
								</p>
								<a href="#" class="primary-btn text-uppercase">View Details</a>
								<img class="img-fluid" src="img/u2.jpg" alt="">
							</div>
							<div class="single-events">
								
								<a href="#"><h4>Event on the rock solid carbon</h4></a>
								<h6><span>21st February</span> at Central government museum</h6>
								<p>
									inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially.
								</p>
								<a href="#" class="primary-btn text-uppercase">View Details</a>
								<img class="img-fluid" src="img/u4.jpg" alt="">
							</div>							
						</div>
					</div>
				</div>	
			</section>
			<!-- End upcoming-event Area -->
			
			<!-- Start blog Area -->
			<section class="blog-area section-gap" id="blog">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Latest From Our Blog</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
							</div>
						</div>
					</div>					
					<div class="row">
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="img/b1.jpg" alt="">								
							</div>
							<p class="date">10 Jan 2018</p>
							<a href="#"><h4>Addiction When Gambling
							Becomes A Problem</h4></a>
							<p>
								inappropriate behavior ipsum dolor sit amet, consectetur.
							</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>									
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="img/b2.jpg" alt="">								
							</div>
							<p class="date">10 Jan 2018</p>
							<a href="#"><h4>Addiction When Gambling
							Becomes A Problem</h4></a>
							<p>
								inappropriate behavior ipsum dolor sit amet, consectetur.
							</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>									
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="img/b3.jpg" alt="">								
							</div>
							<p class="date">10 Jan 2018</p>
							<a href="#"><h4>Addiction When Gambling
							Becomes A Problem</h4></a>
							<p>
								inappropriate behavior ipsum dolor sit amet, consectetur.
							</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>									
						</div>
						<div class="col-lg-3 col-md-6 single-blog">
							<div class="thumb">
								<img class="img-fluid" src="img/b4.jpg" alt="">								
							</div>
							<p class="date">10 Jan 2018</p>
							<a href="#"><h4>Addiction When Gambling
							Becomes A Problem</h4></a>
							<p>
								inappropriate behavior ipsum dolor sit amet, consectetur.
							</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>									
						</div>							
					</div>
				</div>	
			</section>
			<!-- End blog Area -->

			<!-- Start gallery Area -->
			<section class="gallery-area section-gap" id="gallery">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10 text-white">Our Exhibition Gallery</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
							</div>
						</div>
					</div>						
					<div id="grid-container" class="row">
						<a class="single-gallery" href="img/g1.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g1.jpg'/>"></a>
						<a class="single-gallery" href="img/g2.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g2.jpg'/>"></a>
						<a class="single-gallery" href="img/g3.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g3.jpg'/>"></a>
						<a class="single-gallery" href="img/g4.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g4.jpg'/>"></a>
						<a class="single-gallery" href="img/g5.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g5.jpg'/>"></a>
						<a class="single-gallery" href="img/g6.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g6.jpg'/>"></a>
						<a class="single-gallery" href="img/g7.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g7.jpg'/>"></a>
						<a class="single-gallery" href="img/g8.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g8.jpg'/>"></a>
						<a class="single-gallery" href="img/g9.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g9.jpg'/>"></a>
						<a class="single-gallery" href="img/g10.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g10.jpg'/>"></a>
						<a class="single-gallery" href="img/g11.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g11.jpg'/>"></a>
						<a class="single-gallery" href="img/g12.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g12.jpg'/>"></a>
						<a class="single-gallery" href="img/g4.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g4.jpg'/>"></a>
						<a class="single-gallery" href="img/g5.jpg"><img class="grid-item" src="<c:url value='/frontstyle/img/g5.jpg'/>"></a>						
					</div>	
				</div>	
			</section>
			<!-- End gallery Area -->
</body>
</html>