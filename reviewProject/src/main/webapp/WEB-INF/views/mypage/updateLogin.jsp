<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login_page</title>

<script type="text/javascript"
	src="/review/resources/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var msg = '${Alert}';
	console.log(msg);
	if (msg) {
		alert(msg);
	}
</script>

<style type="text/css">
input:focus {
	outline: none;
}

.center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.btn_st1 {
	background-image: url('resources/image/REMON_smallbar.png');
	color: white;
	width: 300px;
	height: 30px;
	border-radius: 10px;
	border-style: none;
}
</style>
</head>
<jsp:include page="/WEB-INF/views/share/Login_header.jsp" />
<body>
	<div class="center">
		<div style="height: 100px;"></div>
		<!-- 테스트 로그인 기능 -->
		<form action="/review/mypage/updateMemberForm" method="POST"
			id="updateLogin">
			<table class="center">
				<tr
					style="text-align: center; background: linear-gradient(to right, #ffe400, #abf200);">
					<td colspan="2"><h1>비밀번호 확인</h1></td>
				</tr>
				<tr>
					<td colspan="2"><br></td>
				</tr>
				<tr style="text-align: center;">
					<td style="width: 90px; height: 30px;">아이디</td>
					<td style="width: 200px; height: 30px;"><input type="text"
						name="member_id" value="${member_id}"
						style="width: 200px; height: 20px;" readonly></td>
				</tr>

				<tr style="text-align: center;">
					<td style="width: 90px; height: 30px;">비밀번호</td>
					<td style="width: 200px; height: 30px;"><input type="password"
						name="member_pw" style="width: 200px; height: 20px;"></td>
				</tr>
				<tr>
					<td colspan="2"><br></td>
				<tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"
						class="btn_st1"></td>
				</tr>
				<tr>
					<td colspan="2"><hr></td>
				</tr>
			</table>
		</form>
		<input type="button" value="취소"
			onclick="location.href='/review/mypage/mypageCheck'" class="btn_st1">
	</div>
	<div style="height: 200px;"></div>
</body>
<jsp:include page="/WEB-INF/views/share/footer.jsp" />
</html>