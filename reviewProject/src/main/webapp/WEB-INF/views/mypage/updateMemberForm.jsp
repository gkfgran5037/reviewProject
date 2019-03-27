<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.td_mypage1 {
	width: 100px;
	height: 30px;
	background: linear-gradient(to right, #ffe400, #abf200);
	color: white;
}

.td_mypage2 {
	width: 200px;
	height: 30px;
	text-align: left;
	background-color: #F2F2F2;
}

.td_mypage3 {
	width: 150px;
	height: 120px;
	text-align: center;
}
</style>
</head>
<jsp:include page="/WEB-INF/views/share/Login_header.jsp" />
<body>
	<div class="center">
		<div>
			<h1>정보 변경</h1>
			<hr width="1100px;">
		</div>
		<div style="height: 50px;"></div>
		<form action="/review/mypage/updateMember" method="post"
			id="updateMember">
			<table class="center">
				<tr>
					<td colspan="2"><c:if test="${empty user.member_pic}">
							<img src="/review/movie/resources/memberImage/DefaultPerson.png"
								style="height: 120px; width: 120px; border-radius: 120px; border: 3px solid #F2F2F2;">
						</c:if> <c:if test="${not empty user.member_pic}">
							<img src="/review/movie/resources/memberImage/${user.member_pic}"
								style="height: 120px; width: 120px; border-radius: 120px;">
						</c:if></td>

				</tr>
				<tr>
					<td class="td_mypage1">ID</td>
					<td class="td_mypage2">&nbsp;&nbsp;${user.member_id}<input
						type="hidden" name="member_id" value="${user.member_id}"></td>
				</tr>
				<tr>
					<td class="td_mypage1">PW</td>
					<td class="td_mypage2"><input type="password" name="member_pw" style="border-style: none; background: none; height: 25px; width: 190px;"></td>
				</tr>
				<tr>
					<td class="td_mypage1">NAME</td>
					<td class="td_mypage2">&nbsp;&nbsp;${user.member_name}<input
						type="hidden" name="member_name" value="${user.member_name}"></td>
				</tr>
				<tr>
					<td class="td_mypage1">Email</td>
					<td class="td_mypage2">&nbsp;&nbsp;${user.member_email}</td>
				</tr>
			</table>
			<div style="height: 20px;"></div>
			<hr width="400px;">
			<div style="height: 20px;"></div>
			<input type="submit" value="확인"> <input type="reset"
				value="리셋">
			<div style="height: 100px;"></div>
		</form>
	</div>
</body>
<jsp:include page="/WEB-INF/views/share/footer.jsp" />
</html>