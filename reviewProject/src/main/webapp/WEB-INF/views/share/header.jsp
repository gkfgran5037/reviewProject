<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
	$('.moveBT').click(function() {
		$($(this).attr("data-target")).submit();
	});
});

var link = document.location.href; 
function addSender() {
	sessionStorage.setItem("address", link);
};
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

.header_st {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	background: -webkit-linear-gradient(to right, #abf200, #ffe400);
	background: linear-gradient(to right, #abf200, #ffe400);
	width: 1200px;
	height: 90px;
}

.header_no_background {
	background: none;
	width: 400px;
	align-content: center;
}

.td_class1 {
	width: 400px;
}

.header_logo {
	height: 50px;
}

.header_search_bar {
	width: 300px;
	height: 30px;
	border-radius: 20px;
	border-style: none;
	text-align: center;
}

.header_search_btn {
	width: 50px;
	height: 30px;
	border-radius: 20px;
	border-style: none;
	background-color: yellow;
}

.header_image_btn {
	height: 50px;
}

.header_member_btn {
	height: 50px;
	width: 50px;
	border-radius: 50px;
}

.logo {
	float: left;
	margin-top: 10px;
	margin-left: 20px;
}

.header_div1 {
	float: right;
	margin-top: 10px;
	margin-right: 20px;
}

.header_div2 {
	float: right;
	margin-right: 10px;
	margin-top: 10px;
}

.header_div3 {
	float: left;
	margin-left: 10px;
}
</style>
</head>
<body>
	<div class="center">

		<table class="header_st">
			<tr>
				<td class="header_no_background">
					<!-- 로고 -->
					<div class="logo">
						<a href="/review"><img alt="REMON_LOGO"
							src="/review/resources/image/REMON_logo(white_bigsize).png"
							class="header_logo"></a>
					</div>
				</td>
				<td class="header_no_background">
					<!-- 검색 바 -->
					<form action="/review/search/searchResult" method="POST"
						id="search">
						<input type="text" id="query" name="keyword" value="${keyword}"
							class="header_search_bar"><input type="hidden"
							value="${keyword}" class="keyword"> <input type="submit"
							value="검색" class="header_search_btn">
					</form> <!-- </div> -->
				</td>
				<td class="header_no_background">
					<!-- 마이페이지 --> <!-- 로그인 필요 시 -->
					<div class="header_div1">
						<c:if test="${empty sessionScope.member_id}">
							<a href="/review/mypage/join" onclick="addSender();"><img
								alt="REMON_LOGO"
								src="/review/resources/image/REMON_Join_icon(white).png"
								class="header_image_btn"></a>
							<a href="/review/mypage/login" onclick="addSender();"> <img
								alt="REMON_LOGO"
								src="/review/resources/image/REMON_Login_icon(white).png"
								class="header_image_btn">
							</a>
						</c:if>
					</div> <!-- 로그인 했을 때 --> <c:if test="${not empty sessionScope.member_id}">
						<div class="header_div2">

							<div class="header_div3">
								<a href="/review/mypage/logout"><img alt="REMON_LOGO"
									src="/review/resources/image/REMON_Logout_icon(white).png"
									class="header_image_btn"></a>
							</div>
							<div class="header_div3">
								<a href="/review/mypage/mypageCheck"><img alt="USER_PIC"
									src="/review/resources/memberImage/${user.member_pic}"
									class="header_member_btn"></a>
							</div>
						</div>
					</c:if>
				</td>
			</tr>
		</table>
	</div>

	<div class="center">
		<table class="center">
			<tr>
				<td class="td_class1">
					<div class='moveBT' data-target="#movieMain">
						<form action="/review/movie/main" id="movieMain">
							<h1>Movie</h1>
						</form>
					</div>
				</td>
				<td class="td_class1">
					<div class='moveBT' data-target="#tvMain">
						<form action="/review/tv/main" id="tvMain">
							<h1>tv</h1>
						</form>
					</div>
				</td>
				<td class="td_class1">
					<div class='moveBT' data-target="#gameMain">
						<form action="/review/game/main" id="gameMain">
							<h1>game</h1>
						</form>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
