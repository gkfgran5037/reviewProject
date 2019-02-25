<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remon</title>
<script type="text/javascript" src="resources/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.moveBT').click(function() {
			$($(this).attr("data-target")).submit();
		});
	})
</script>
</head>
<jsp:include page="share/Main_header.jsp" />
<body>

	<!-- 상단바, 로고 -->
	<div>
		<br> <br>
	</div>

	<div>
		<center>
			<!-- 상단바, 로고 -->
			<div>
				<a href="movie/detail_bar.jsp"><img alt="REMON_LOGO"
					src="resources/image/REMON_logo(bigsize).png" style="width: 200px;"></a>
			</div>
			<br>

			<!-- 검색 바 -->
			<div class='moveBT' data-target="#searchMain">
				<form action="/review/search/main/" id="searchMain">
					<input type="text" id="query" name="query"
						style="width: 400px; height: 30px; border-radius: 30px; border-color: #ABF200;">
					<button
						style="border-radius: 30px; height: 30px; background-color: #ABF200; color: white; border-style: none;">검색</button>
				</form>
			</div>
			<br>

			<!-- 네비 -->
			<div>
				<table>
					<tr>
						<td colspan="2"
							style="background-image: url('resources/image/REMON_mainMovie_BG.png'); width: 500px; height: 220px;">
							<div class='moveBT' data-target="#movieMain">
								<form action="/review/movie/main" id="movieMain">
									<center>
										<img alt="MOVIE_icon"
											src="resources/image/REMON_MOVIE_icon(white).png"
											style="width: 70px; height: 70px;">
									</center>
								</form>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="1"
							style="background-image: url('resources/image/REMON_mainTv_BG.png'); width: 245px; height: 220px;">
							<div class='moveBT' data-target="#tvMain">
								<form action="/review/tv/main" id="tvMain">
									<center>
										<img alt="TV_icon"
											src="resources/image/REMON_TV_icon(white).png"
											style="width: 70px; height: 70px;">
									</center>
								</form>
							</div>
						</td>
						<td colspan="1"
							style="background-image: url('resources/image/REMON_mainGame_BG.png'); width: 245px; height: 220px;">
							<div class='moveBT' data-target="#gameMain">
								<form action="/review/game/main" id="gameMain">
									<center>
										<img alt="GAME_icon"
											src="resources/image/REMON_GAME_icon(white).png"
											style="width: 70px; height: 70px;">
									</center>
								</form>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<br> <br>
			
		</center>
	</div>
</body>
<jsp:include page="share/footer.jsp" />
</html>