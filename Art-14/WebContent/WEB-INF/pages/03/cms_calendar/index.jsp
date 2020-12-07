<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<br>
	<div class=title>
		<h3 align="center" style="margin-top: 20px;">行事曆管理</h3>
	</div>
	<div class="back" align="right">
		<form action="<c:url value='/index.html'/> " method="get">
			<div class="submitButton">
				<input type="submit" class="" name="submit" value="返回 後台管理系統">
			</div>
		</form>
	</div>
	<br>
	<div class=content>
		<form method="post"
			action="<c:url value="/03/cms/calendar/searchShopByShopNameAndReservation.ctrl"/>">
			<div class="submitButton">
				商店搜尋: <input type="text" placeholder="請輸入藝文商店名稱 " name="shopName"><input
					type="submit" name="submit" value="查詢">
			</div>
			<br>
		</form>
	</div>
	<br>
	<div class=content>
		<table id="03"
			class="display table table-bordered table-hover table-blue">
			<thead>
				<tr class="head">
					<th scope="col" width="150px">商店代號</th>
					<th scope="col" width="150px">商店名稱</th>
					<th scope="col" width="150px">商店地址</th>
					<th scope="col" width="150px">連絡電話</th>
					<th scope="col" width="150px">行事曆</th>
				</tr>
			</thead>
			<tfoot></tfoot>
			<tbody>
				<c:if test="${acShopsList != null}">
					<c:forEach items="${acShopsList}" var="acShopsList" varStatus="vs">
						<tr>
							<td>${acShopsList.shopId}</td>
							<td>${acShopsList.shopName}</td>
							<td>${acShopsList.address}</td>
							<td>${acShopsList.phone}</td>
							<td>
								<form method="post"
									action="<c:url value="/03/cms/calendar/calendarManagement.ctrl"/>">
									<button name="deleteButton" type="submit">行事曆設定</button>
									<Input type="hidden" name="shopId"
										value="${acShopsList.shopId}">
								</form>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		<br>
		<c:if test="${acShopsSerachMsg != null}">
			<div align="center" style="font-size: larger">${acShopsSerachMsg}</div>
		</c:if>
	</div>
</div>
<!-- ====================================================== -->
<script>
	$(document).ready(function() {
		$('#03').DataTable({});
	});
</script>