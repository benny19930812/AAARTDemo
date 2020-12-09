<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/frontstyle/css/processbar.css' />"> 
<style type="text/css">
#seatmap{
	width: 500px;
	
}


</style>
</head>
<body>

	<!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								AAART Ticket
							</h1>	
							<p class="text-white link-nav"><a href="<c:url value='/index.html' />">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href=""> Search</a><span class="lnr lnr-arrow-right"></span><a href=""> Order</a></p>
						</div>											
					</div>
				</div>
			</section>
	<!-- End banner Area -->
	
	
	

<div class="container">

<div class="row bs-wizard" style="border-bottom:0;">
                    
                    <div class="col-lg-3 bs-wizard-step start"><!-- start -->
                      <div class="text-center bs-wizard-stepnum">Step 1</div>
                      <div class="progress"><div class="progress-bar" style="width: 100%;"></div></div>
                      <a href="" class="bs-wizard-dot"></a>
                      <div class="bs-wizard-info text-center">區域/張數</div>
                    </div>
                    
                    <div class="col-lg-3 bs-wizard-step complet"><!-- complete -->
                      <div class="text-center bs-wizard-stepnum">Step 2</div>
                      <div class="progress"><div class="progress-bar" style="width: 50%;"></div></div>
                      <a href="#" class="bs-wizard-dot"></a>
                      <div class="bs-wizard-info text-center">劃位</div>
                    </div>
                    
                    <div class="col-lg-3 bs-wizard-step active"><!-- complete -->
                      <div class="text-center bs-wizard-stepnum">Step 3</div>
                      <div class="progress"><div class="progress-bar"></div></div>
                      <a href="" class="bs-wizard-dot"></a>
                      <div class="bs-wizard-info text-center">購票確認</div>
                    </div>
                    
                    <div class="col-lg-3 bs-wizard-step disabled"><!-- active -->
                      <div class="text-center bs-wizard-stepnum">Step 4</div>
                      <div class="progress"><div class="progress-bar"></div></div>
                      <a href="" class="bs-wizard-dot"></a>
                      <div class="bs-wizard-info text-center">完成訂購</div>
                    </div>
                </div>
	
	<c:set var="seat" value="${requestScope.seat}" />
<form name="order" action="<c:url value='/04/shoppingcart.ctrl'/>" method="get">	
	<p id="ticketnum" style="display:none">${sessionScope.shoppingcart.TICKET_NUM}</p>
	<h1>座位表</h1>
	<h2>請勾選位置</h2>
	<p>請在灰色空位上點選您要的位置</p>
	
	
	<img src="<c:url value='/images/04/seatmap.jpg' />" border="0" usemap="#planetmap" alt="座位表" id="seatmap"/>

<map name="satmap" id="seatmap">
  <area shape="circle" coords="180,139,14" href ="venus.html" alt="Venus" />
  <area shape="circle" coords="129,161,10" href ="mercur.html" alt="Mercury" />
  <area shape="rect" coords="0,0,110,260" href ="sun.html" alt="Sun" />
</map>
	
	
	
	<br><br><input type="submit" id="submit" class="genric-btn primary-border radius" value="下一步" onclick="checknum()">
	</form>
</div>	
</div>	
	
<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
 	<script> 
 	
		</script> 




</body>
</html>