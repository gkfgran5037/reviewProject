<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

.AW_st1 {
	width: 10px;
}

.AW_st2 {
	width: 70px;
}

.AW_st3 {
	width: 500px;
	text-align: left;
}

.AW_st4 {
	width: 120px;
}

.AW_st5 {
	width: 100px;
	text-align: right;
}

.AW_st6 {
	width: 100px;
}

.AW_st {
	width: 900px;
}
</style>
</head>
<body>

	<div>
		<table class="AW_st">
			<tr>
				<td colspan="6" class="mytitle">내가 좋아요 한 게시글</td>
			</tr>
			<tr>
				<td class="AW_st" colspan="6"><br></td>
			</tr>
			<c:forEach items="${myLike}" var="myLike">
				<tr
					onclick="location.href='/review/movie/detail_view/${myLike.board_num}'">
					<td class="AW_st1"></td>
					<td class="AW_st2"><img src="${myLike.boardVO.thumbnail}"
						style="height: 70px; width: 70px; border-radius: 20px;"></td>
					<td class="AW_st3" style="">&nbsp;<span
						style="font-size: large;">${myLike.boardVO.board_title}</span> <br></td>
					<td class="AW_st4">score: ${myLike.boardVO.lemon_grade}</td>
					<td class="AW_st5" style="">&nbsp;&nbsp;<img
						src="/review/movie/resources/memberImage/${myLike.memberVO.member_pic}"
						style="width: 30px; height: 30px; border-radius: 30px;">
						${myLike.boardVO.member_id}
					</td>
					<td class="AW_st6">&nbsp;<c:if
							test="${empty myLike.boardVO.board_up_date}">${myLike.boardVO.board_date}</c:if>
						<c:if test="${not empty myLike.boardVO.board_up_date}">${myLike.boardVO.board_up_date}</c:if></td>
				</tr>
				<tr>
					<td class="AW_st" colspan="6"><hr></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>