<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="/review/resources/script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function getReplyList() {
		$.ajax({
			type : "GET",
			url : "/review/movie/detail_view/${board.board_num}/reply",
			success : function(html) {
				$(".reply").append(html);
			}
		})
	}

	function getLikeIt() {
		$.ajax({
			type : "GET",
			url : "/review/movie/detail_view/${board.board_num}/likeIt",
			success : function(html) {
				$(".likeIt").append(html);
			}
		})
	}

	$(document).ready(function() {
		getReplyList();
		getLikeIt()
	});
</script>

<style type="text/css">
.center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.center_txtnon {
	margin-left: auto;
	margin-right: auto;
	width: 1200px;
}

.code-html{
	text-align: left;
}

.hashtag {
	height: 20px;
	width: 100px;
	background-color: white;
	border-radius: 5px;
	text-align: center;
}

.imgform {
	width: 40px;
}

.td_class1 {
	height: 70px;
	width: 400px;
}

.td_class2 {
	height: 70px;
	width: 800px;
}

.td_class3 {
	width: 160px;
	border-right: 1px solid gray;
	text-align: left;
}

.td_class4 {
	width: 700px;
	border-right: 1px solid gray;
	text-align: left;
}

.td_class5 {
	width: 150px;
	border-right: 1px solid gray;
	text-align: center;
}

.td_class6 {
	width: 140px;
	text-align: center;
}

.user {
	font-weight: bold;
	padding-top: 20px;
	margin-left: auto;
	margin-right: auto;
	background-color: #F2F2F2;
	height: 70px;
	width: 1200px;
	font-size: large;
}

.user_form {
	margin-left: auto;
	margin-right: auto;
	background-color: #F2F2F2;
	width: 1200px;
	height: 90px;
}

.dv_td_st1 {
	width: 100px;
	text-align: right;
	height: 50px;
	font-size: large;
}

.dv_td_st2 {
	width: 10px;
	text-align: center;
	height: 50px;
}

.dv_td_st3 {
	width: 100px;
	text-align: left;
	height: 50px;
}

.dv_font {
	font-size: large;
	font-weight: bold;
}
</style>
</head>

<body>
	<!-- header -->
	<div>
		<jsp:include page="/WEB-INF/views/share/header.jsp" />
	</div>
	<!-- category -->
	<%-- 	<div>
		<jsp:include page="/WEB-INF/views/share/category_bar.jsp" />
	</div> --%>
	<!-- 유저프로필, 유저ID, 제목 바 ( O 유저ID | 리뷰 제목              | 날짜 ) -->
	<div class="user_form">
		<table class="user">
			<tr>
				<td style="width: 50px; padding-left: 20px;"><img
					alt="user_img"
					src="/review/resources/memberImage/${board.memberVO.member_pic}"
					style="height: 50px; width: 50px; border-radius: 50px;"></td>
				<td class="td_class3">&nbsp;${board.member_id}</td>
				<td class="td_class4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${board.board_title}</td>
				<td class="td_class5"><fmt:formatDate
						value="${board.board_date}" pattern="yyyy-MM-dd" /></td>
				<td class="td_class6">조회수 : ${board.board_readcount + 1}</td>
			</tr>
		</table>
	</div>
	<!-- 이미지, 평점(추천합니다/안합니다), 상세별점, 리뷰의 좋아요, #  -->
	<div class="center" style="background-color: #F2F2F2; width: 1200px;">
		<table class="center">
			<tr style="height: 300px;">
				<td class="td_class1" style="background: background: -webkit-linear-gradient(to right, #abf200, #ffe400); background: linear-gradient(to right, #abf200, #ffe400);">
					<div>
						<img src="${board.thumbnail}"
							style="height: 300px; width: auto; max-width: 400px;">
						<c:if test="${board.thumbnail == null}">
							<img src="${mApiVO.poster}">
						</c:if>
					</div>
				</td>
				<td class="td_class1">
					<table class="center">
						<tr>
							<td><c:choose>
									<c:when test="${board.lemon_grade >= 80}">
										<img src="/review/movie/resources/image/REMON_grade_1.png">
										<br> 총점  ${board.lemon_grade}점<span class="dv_font">달콤한
											레몬</span>
										<br>
										<br>
									</c:when>
									<c:when test="${board.lemon_grade >= 60}">
										<img src="/review/movie/resources/image/REMON_grade_2.png">
										<br> 총점  ${board.lemon_grade}점 <span class="dv_font">새콤한
											레몬</span>
										<br>
										<br>
									</c:when>
									<c:when test="${board.lemon_grade >= 40}">
										<img src="/review/movie/resources/image/REMON_grade_3.png">
										<br> 총점  ${board.lemon_grade}점 <span class="dv_font">신맛
											레몬</span>
										<br>
										<br>
									</c:when>
									<c:when test="${board.lemon_grade >= 20}">
										<img src="/review/movie/resources/image/REMON_grade_4.png">
										<br> 총점  ${board.lemon_grade}점 <span class="dv_font">씁쓸한
											레몬</span>
										<br>
										<br>
									</c:when>
									<c:otherwise>
										<img src="/review/movie/resources/image/REMON_grade_5.png">
										<br> 총점  ${board.lemon_grade}점 <span class="dv_font">썩은
											레몬</span>
										<br>
										<br>
									</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<td><c:choose>
									<c:when test="${board.recommend == 1}">
										이 영화를 추천 합니다.
									</c:when>
									<c:otherwise>
										이 영화를 추천하지 않습니다.
									</c:otherwise>
								</c:choose></td>
						</tr>
					</table>
				</td>
				<td style="border-left: 1px solid gray;" class="td_class1">
					<div class="center">
						<table class="center">
							<tr>
								<td class="dv_td_st1">${board.gradeVO.grade_name1}</td>
								<td class="dv_td_st2">:</td>
								<td class="dv_td_st3"><c:choose>
										<c:when test="${board.gradeVO.grade1 == 0}">
											<img src="/review/movie/resources/image/REMON_0.png">
										</c:when>
										<c:when test="${board.gradeVO.grade1 == 5}">
											<img src="/review/movie/resources/image/REMON_1.png">
										</c:when>
										<c:when test="${board.gradeVO.grade1 == 10}">
											<img src="/review/movie/resources/image/REMON_2.png">
										</c:when>
										<c:when test="${board.gradeVO.grade1 == 15}">
											<img src="/review/movie/resources/image/REMON_3.png">
										</c:when>
										<c:when test="${board.gradeVO.grade1 == 20}">
											<img src="/review/movie/resources/image/REMON_4.png">
										</c:when>
										<c:otherwise>
											<img src="/review/movie/resources/image/REMON_5.png">
										</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
								<td class="dv_td_st1">${board.gradeVO.grade_name2}</td>
								<td class="dv_td_st2">:</td>
								<td class="dv_td_st3"><c:choose>
										<c:when test="${board.gradeVO.grade2 == 0}">
											<img src="/review/movie/resources/image/REMON_0.png">
										</c:when>
										<c:when test="${board.gradeVO.grade2 == 5}">
											<img src="/review/movie/resources/image/REMON_1.png">
										</c:when>
										<c:when test="${board.gradeVO.grade2 == 10}">
											<img src="/review/movie/resources/image/REMON_2.png">
										</c:when>
										<c:when test="${board.gradeVO.grade2 == 15}">
											<img src="/review/movie/resources/image/REMON_3.png">
										</c:when>
										<c:when test="${board.gradeVO.grade2 == 20}">
											<img src="/review/movie/resources/image/REMON_4.png">
										</c:when>
										<c:otherwise>
											<img src="/review/movie/resources/image/REMON_5.png">
										</c:otherwise>
									</c:choose></td>
							</tr>

							<tr>
								<td class="dv_td_st1">${board.gradeVO.grade_name3}</td>
								<td class="dv_td_st2">:</td>
								<td class="dv_td_st3"><c:choose>
										<c:when test="${board.gradeVO.grade3 == 0}">
											<img src="/review/movie/resources/image/REMON_0.png">
										</c:when>
										<c:when test="${board.gradeVO.grade3 == 5}">
											<img src="/review/movie/resources/image/REMON_1.png">
										</c:when>
										<c:when test="${board.gradeVO.grade3 == 10}">
											<img src="/review/movie/resources/image/REMON_2.png">
										</c:when>
										<c:when test="${board.gradeVO.grade3 == 15}">
											<img src="/review/movie/resources/image/REMON_3.png">
										</c:when>
										<c:when test="${board.gradeVO.grade3 == 20}">
											<img src="/review/movie/resources/image/REMON_4.png">
										</c:when>
										<c:otherwise>
											<img src="/review/movie/resources/image/REMON_5.png">
										</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
								<td class="dv_td_st1">${board.gradeVO.grade_name4}</td>
								<td class="dv_td_st2">:</td>
								<td class="dv_td_st3"><c:choose>
										<c:when test="${board.gradeVO.grade4 == 0}">
											<img src="/review/movie/resources/image/REMON_0.png">
										</c:when>
										<c:when test="${board.gradeVO.grade4 == 5}">
											<img src="/review/movie/resources/image/REMON_1.png">
										</c:when>
										<c:when test="${board.gradeVO.grade4 == 10}">
											<img src="/review/movie/resources/image/REMON_2.png">
										</c:when>
										<c:when test="${board.gradeVO.grade4 == 15}">
											<img src="/review/movie/resources/image/REMON_3.png">
										</c:when>
										<c:when test="${board.gradeVO.grade4 == 20}">
											<img src="/review/movie/resources/image/REMON_4.png">
										</c:when>
										<c:otherwise>
											<img src="/review/movie/resources/image/REMON_5.png">
										</c:otherwise>
									</c:choose></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<table class="center">
			<tr>
				<td class="td_class1">
					<div
						style="text-align: left; padding-left: 20px; padding-top: 5px;">
						<span class="likeIt" onclick="addSender();"></span> &nbsp;<img
							alt="reply" src="/review/resources/image/REMON_comment_icon.png"
							class="imgform"> <span> ${replyCount} </span>
					</div>
				</td>
				<td class="td_class2" colspan="2"><div
						style="text-align: right; padding-right: 10px;">
						<br> <span class="hashtag">#${board.hashtagVO.hashtag1}</span>&nbsp;&nbsp;&nbsp;
						<span class="hashtag"># ${board.hashtagVO.hashtag2}</span>&nbsp;&nbsp;&nbsp;
						<span class="hashtag"># ${board.hashtagVO.hashtag3}</span>&nbsp;&nbsp;&nbsp;
						<span class="hashtag"># ${board.hashtagVO.hashtag4}</span>&nbsp;&nbsp;&nbsp;
						<span class="hashtag"># ${board.hashtagVO.hashtag5}</span>&nbsp;&nbsp;&nbsp;
						<span class="hashtag"># ${board.hashtagVO.hashtag6}</span>&nbsp;&nbsp;&nbsp;
					</div></td>
			</tr>
		</table>
		<br>
	</div>
	<br>
	<!-- 리뷰 content, 영화 간단 정보 -->
	<div class="center">
		<table class="center">
			<tr>
				<td class="td_class1" colspan="2">
					<div class="code-html" style="width: 800px; word-break:break-all;">${board.board_content}</div>

				</td>
				<td style="border-left: 1px solid #F2F2F2;"><img
					src="${mApiVO.poster}">
					<div
						style="width: 360px; padding-left: 20px; padding-right: 20px; text-align: left;">
						<hr color="#F2F2F2">
						<ul style="list-style: none;">
							<li>>영화 이름 : ${mApiVO.movie_nm}</li>
							<li>>영화 장르 : ${mApiVO.genre}</li>
							<li>>국가 : ${mApiVO.nation}</li>
							<li>>감독 : ${mApiVO.director}</li>
							<li>>배우 : ${mApiVO.actor}</li>
						</ul>
					</div></td>
			</tr>
			<!-- 			<tr>
				<td class="td_class1"></td>
				<td class="td_class1"></td>
				<td class="td_class1"></td>
			</tr> -->
		</table>
	</div>
	<br>
	<hr color="#F2F2F2" width="1200px">
	<!-- 덧글 forEach -->
	<div class="center_txtnon">
		<div class="reply"></div>
	</div>
	<br>
	<hr width="400px;">
	<br>

	<div class="center">
		<table class="center">
			<tr>
				<td><input type="button" value="목록"
					onclick="location.href='/review/movie/main'"
					style="width: 100px; height: 30px; background: linear-gradient(to left, #ffe400, #abf200); border-radius: 10px; border-style: none;"></td>
				<td><c:if test="${sessionScope.member_id == board.member_id}">
						<input type="button" value="수정"
							onclick="location.href='/review/movie/movie_updateForm/${board.board_num}'"
							style="width: 100px; height: 30px; background: linear-gradient(to left, #ffe400, #abf200); border-radius: 10px; border-style: none;">
					</c:if></td>
				<td><c:if test="${sessionScope.member_id == board.member_id}">
						<form action="/review/movie/movie_delete/${board.board_num}"
							method="post" id="movie_delete">
							<input type="submit" value="삭제"
								style="width: 100px; height: 30px; background: linear-gradient(to left, #ffe400, #abf200); border-radius: 10px; border-style: none;">
						</form>
					</c:if></td>
			</tr>
		</table>
	</div>
	<br>
	<div>
		<jsp:include page="/WEB-INF/views/share/footer.jsp" />
	</div>
</body>
</html>