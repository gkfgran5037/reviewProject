<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery-2.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.moveBT').click(function() {
			$($(this).attr("data-target")).submit();
		});
	})
</script>
<style type="text/css">
td {
	width: 500px;
}

.center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}
</style>
</head>
<body>
	<!-- 네비 -->
	<div class="center">
		<table class="center">
			<tr>
				<td>
					<div class='moveBT' data-target="#movieMain">
						<form action="f/review/movie/main" id="movieMain">
							<h1>Movie</h1>
						</form>
					</div>
				</td>
				<td>
					<div class='moveBT' data-target="#tvMain">
						<form action="/review/tv/main" id="tvMain">
							<h1>tv</h1>
						</form>
					</div>
				</td>
				<td>
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