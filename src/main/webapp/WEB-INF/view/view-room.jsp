<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Trang chủ Manager</title>
<link rel="stylesheet" type="text/css" href='<spring:url value="/resources/css/style3.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
<style type="text/css">
	#left{
		float: left;
		width: 600px;
		margin: 50px 10px 50px 30px;
		text-align: justify;
	}
	
	#right{
		float: right;
		width: 600px;
		margin: 50px 30px 50px 10px;
		text-align: justify;
	}
	
	article td{
		text-align: left;
	}
</style>	
</head>

<body>
	<header>
		<h1 id="effectText1">TRANG QUẢN LÝ</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>

	<c:url var="formUrl" value="/manager-list/view-room" />

		<article>

			<div style="margin: auto; display: flex; border:none; justify-content: space-between;">
				<div style="height: 500px ;width: 40%">
					<table style="margin: auto">
						<tr>
							<td colspan="2" style="color: red;"><b>Chi tiết phòng ${room.roomNo}</b></td>
						</tr>
						
						 <tr>
						 <td>
								 <c:if test="${room.getRoomStyle().getName() eq 'Single' }">
									<img src='<spring:url value="/resources/roomimages/room4.jpg" />' height="30px" width="60px"/>
								</c:if>						
								
								 <c:if test="${room.getRoomStyle().getName() eq 'Double' }">
									<img src='<spring:url value="/resources/roomimages/room1.jpg" />' height="50px" width="80px"/>
								</c:if>
								
								<c:if test="${room.getRoomStyle().getName() eq 'Super' }">
									<img src='<spring:url value="/resources/roomimages/room9.jpg" />' height="50px" width="80px"/>
								</c:if>
								
								<c:if test="${room.getRoomStyle().getName() eq 'Delux' }">
									<img src='<spring:url value="/resources/roomimages/room5.jpg" />' height="50px" width="80px"/>
								</c:if>
						</td>
						</tr> 
						
						<tr> 
							<td>Loại phòng: </td>
							<td>${room.getRoomStyle().getName()}</td>
						</tr>
						<tr>
							<td>Trạng thái: </td>
							<td>${room.status}</td>
						</tr>
						<tr>
							<td>Giường: </td>
							<td>${room.bed}</td>
						</tr>
						<tr>
							<td>Máy lạnh: </td>
							<td>${room.airConditioner}</td>
						</tr>
					</table>
				</div>
			<div style="border:none; padding:0; width: 50%">
			<c:forEach var="bookingInformation" items="${bookingInformations}">
				<c:if test="${bookingInformation.getRoom().getRoomNo() eq room.roomNo }">
				
					<!--  -->
					<c:if test="${room.getStatus() eq 'customer' }">
					<div id="">
							<table>
								<tr>
									<td>Mã đặt phòng: </td>
									<td>${bookingInformation.getCustomer().getId()}</td>
								</tr>
								<tr> 
									<td>Chứng minh nhân dân: </td>
									<td>${bookingInformation.getCustomer().getCmnd()}</td>
								</tr>
								<tr>
									<td>Họ Tên: </td>
									<td>${bookingInformation.getCustomer().getFullName()}</td>
								</tr>
								<tr>
									<td>Số điện thoại: </td>
									<td>${bookingInformation.getCustomer().getPhone()}</td>
								</tr>
								<tr>
									<td>Ngày đặt phòng: </td>
									<td>${bookingInformation.startedAt}</td>
								</tr>
								
								<tr>
									<td>Ngày dự kiến trả phòng: </td>
									<td>${bookingInformation.endedAt}</td>
								</tr>
							</table>
						</div>
					</c:if>
					<c:if test="${room.getStatus() eq 'check in' }">
					<div id="">
							<table>
								<tr>
									<td>Mã đặt phòng: </td>
									<td>${bookingInformation.getCustomer().getId()}</td>
								</tr>
								<tr> 
									<td>Chứng minh nhân dân: </td>
									<td>${bookingInformation.getCustomer().getCmnd()}</td>
								</tr>
								<tr>
									<td>Họ Tên: </td>
									<td>${bookingInformation.getCustomer().getFullName()}</td>
								</tr>
								<tr>
									<td>Số điện thoại: </td>
									<td>${bookingInformation.getCustomer().getPhone()}</td>
								</tr>
								<tr>
									<td>Ngày nhận phòng: </td>
									<td>${bookingInformation.startedAt}</td>
								</tr>
								
							</table>
						</div>
					</c:if>
					
				</c:if>
			</c:forEach></div>
				
			</div>
			
		</article>

		<footer>
			<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
				lịch và đi công tác tại thành phố hoa</h3>
		</footer>
</body>
</html>