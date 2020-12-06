<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my reservation</title>
<style>
/* p, div { */

/* } */
</style>

</head>
<body>

	<!-- start banner Area -->
	<section class="banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">AAART Shop</h1>
					<p class="text-white link-nav">
						<a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span>
						<a href="<c:url value='/14/shopListController.ctrl' />"> Shop</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->
	<div class="container">
		<br>
		<div class=title>
			<h3 align="center" style="margin-top: 20px;">修改商店預約</h3>
		</div>
		<br>
		<div class="back" align="right">
			<form action="<c:url value='/index.html'/> " method="get">
				<div class="submitButton">
					<input type="submit" class="" name="submit" value="返回 會員專區">
				</div>
			</form>
		</div>
		<br>
		<div class=content>
			<form method="post"
				action="<c:url value = "/03/csr/reservation/updateReservation.ctrl"/>">
				<table id="03"
					class="display table table-bordered table-hover table-blue">
					<thead></thead>
					<tbody>
						<c:if test="${reservationList != null}">
							<c:forEach items="${reservationList}" var="reservationList"
								varStatus="vs">
								<tr>
								<tr style="display: none">
									<td>預約編號:</td>
									<td><input type="hidden" name="reservationNo"
										value="${reservationList.reservationNo}">${reservationList.reservationNo}</td>
									<td></td>
								</tr>
								<tr>
								<tr style="display: none">
									<td>會員帳號:</td>
									<td><input type="hidden" name="memberId"
										value="${reservationList.memberId}">${reservationList.memberId}</td>
									<td></td>
								</tr>
								<tr>
								<tr style="display: none">
									<td>會員姓名:</td>
									<td><input type="hidden" name="memberName"
										value="${reservationList.memberName}">${reservationList.memberName}</td>
									<td></td>
								</tr>
								<tr style="display: none">
									<td>商店代號:</td>
									<td><input type="hidden" name="shopId"
										value="${reservationList.shopId}">${reservationList.shopId}</td>
									<td style="width: 200px;"></td>
								</tr>
								<tr>
									<td>商店名稱:</td>
									<td><input type="hidden" name="shopName"
										value="${reservationList.shopName}">${reservationList.shopName}</td>
									<td></td>
								</tr>
								<!-- 	====================================================== -->
								<tr>
									<td>預約日期:</td>
									<td><input type="hidden" name="dateTime"
										value="${reservationList.dateTime}">${reservationList.dateTime}</td>
									<td></td>
								</tr>
								<tr>
									<td>開始時間:</td>
									<td><input type="hidden" name="startTime"
										value="${reservationList.startTime}" required="required">${reservationList.startTime}</td>
									<td></td>
								</tr>
								<tr>
									<td>結束時間:</td>
									<td><input type="hidden" name="endTime"
										value="${reservationList.endTime}" required="required">${reservationList.endTime}</td>
									<td></td>
								</tr>
								<!--  ====================================================== -->
								<tr>
									<td>預約人姓名*:</td>
									<td><input type="text" placeholder="請輸入姓名"
										value="${reservationList.customerName}" name="customerName"></td>
									<td></td>
								</tr>
								<tr>
									<td>預約人電話*:</td>
									<td><input type="text" placeholder="請輸入電話號碼"
										value="${reservationList.customerPhone}" name="customerPhone"></td>
									<td></td>
								</tr>
								<tr style="display: none">
									<td>大人人數*:</td>
									<td><input type="hidden" name="adultsNum" value="0"></td>
									<td></td>
								</tr>
								<tr style="display: none">
									<td>兒童人數*:</td>
									<td><input type="hidden" name="childrenNum" value="0"></td>

									<td></td>
								</tr>
								<tr>
									<td>人數*:</td>
									<td><input type="text" id="amount" name="amount"
										value="${reservationList.amount}"></td>
									<td></td>
								</tr>
								<tr>
									<td>附註</td>
									<td><textarea placeholder="請輸入附註內容(可不填)" name="note"
											style="width: 450px; height: 70px;" required="required">${reservationList.note}</textarea></td>
									<td style="width: 200px;"></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<br>
				<div class="submitButton" align="center" style="font-size: larger">
					<input type="submit" name="submit" value="修改">
				</div>
				<br>
			</form>
		</div>
	</div>
</body>
<!-- ====================================================== -->
<script>
	$(document).ready(function() {
		$('#03').DataTable({});
	});
</script>