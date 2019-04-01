<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<c:forEach items="${search_Result}" var="result">
		<tr onclick="location.href='/review/movie/detail_view/${result.board_num}'">
			<td>
				<img src="${result.thumbnail}" height="70px" width="70px">
			</td>
			<td>
				${result.board_title} <br>
				<%-- <c:choose>
					<c:when test="${fn:length(result.board_content) > 50}">
						<c:out value="${fn:substring(result.board_content, 0, 49)}" />...
					</c:when>
					<c:otherwise>
            			<c:out value="${result.board_content}"/>
           			</c:otherwise> 
				</c:choose> --%>
			</td>
			<td>score: ${result.lemon_grade}</td>
			<td>${result.member_id}</td>
			<td><c:if test="${empty result.board_up_date}">${result.board_date}</c:if>
				<c:if test="${not empty result.board_up_date}">${result.board_up_date}</c:if></td>
		</tr>
	</c:forEach>
</table>


</body>

</html>