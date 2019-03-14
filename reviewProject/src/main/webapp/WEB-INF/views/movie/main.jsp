<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="/review/resources/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var data = {
			"start_content" : 0,
			"end_content" : 9
		}
		$.ajax({
			type : "POST",
			url : "./contentView",
			cache : false,
			dataType : 'html',
			data : data,
			success : function(html) {
				$(".content").append(html);
			}
		})
	});
	$(document).ready(function() {

		$('.moveBT').click(function() {
			$($(this).attr("data-target")).submit();
		});
	});

	//글쓰기 버튼  스크롤 같이 이동스크립트

	var stmnLEFT = 20; // 오른쪽 여백 
	var stmnGAP1 = 0; // 위쪽 여백 
	var stmnGAP2 = 500; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
	var stmnBASE = 600; // 스크롤 시작위치 
	var stmnActivateSpeed = 10; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
	var stmnScrollSpeed = 10; //스크롤 속도 (클수록 느림)
	var stmnTimer;

	function RefreshStaticMenu() {
		var stmnStartPoint, stmnEndPoint;
		stmnStartPoint = parseInt(
				document.getElementById('STATICMENU').style.top, 10);
		stmnEndPoint = Math.max(document.documentElement.scrollTop,
				document.body.scrollTop)
				+ stmnGAP2;
		if (stmnEndPoint < stmnGAP1)
			stmnEndPoint = stmnGAP1;
		if (stmnStartPoint != stmnEndPoint) {
			stmnScrollAmount = Math.ceil(Math
					.abs(stmnEndPoint - stmnStartPoint) / 15);
			document.getElementById('STATICMENU').style.top = parseInt(document
					.getElementById('STATICMENU').style.top, 10)
					+ ((stmnEndPoint < stmnStartPoint) ? -stmnScrollAmount
							: stmnScrollAmount) + 'px';
			stmnRefreshTimer = stmnScrollSpeed;
		}
		stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed);
	}
	function InitializeStaticMenu() {
		document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; //처음에 오른쪽에 위치. left로 바꿔도.
		document.getElementById('STATICMENU').style.top = document.body.scrollTop
				+ stmnBASE + 'px';
		RefreshStaticMenu();
	}
</script>

<style type="text/css">
.center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#STATICMENU {
	margin: 0pt;
	padding: 0pt;
	position: absolute;
	right: 0px;
	top: 0px;
}
</style>
</head>
<body onload="InitializeStaticMenu();">
	<!-- 헤더 -->
	<div>
		<jsp:include page="/WEB-INF/views/share/header.jsp" />
	</div>
	<!-- 카테고리 바 -->
	<div>
		<jsp:include page="/WEB-INF/views/share/category_bar.jsp" />
	</div>

	<!-- 상세 메뉴 바 -->
	<div>
		<jsp:include page="/WEB-INF/views/movie/detail_bar.jsp" />
	</div>

	<!-- Best content -->
	<div>
		<jsp:include page="/WEB-INF/views/movie/best_content.jsp" />
	</div>

	<!-- content -->
	<div class="center">
		<div class="content"></div>
	</div>

	<!-- 새글쓰기 -->
	<div style="float: right; margin-right: 200px;" id="STATICMENU">
		<div id="adside">
			<c:if test="${empty sessionScope.member_id}">
				<form action="/review/mypage/login" id="login">
					<input type="image"
						src="/review/movie/resources/image/REMON_NewWrite_button.png"
						class='moveBT' data-target="#Login" style="height: 80px;">
				</form>
			</c:if>
			<c:if test="${not empty sessionScope.member_id}">
				<div class='moveBT' data-target="#board_write">
					<form action="/review/movie/movie_writeForm" id="movie_writeForm">
						<input type="image"
							src="/review/movie/resources/image/REMON_NewWrite_button.png"
							style="height: 80px;">
					</form>
				</div>
			</c:if>
		</div>
	</div>
	<div style="height: 20px;"></div>
	<div style="height: 20px;"></div>

</body>

<!-- 푸터 -->
<div>
	<jsp:include page="/WEB-INF/views/share/footer.jsp" />
</div>

</html>