<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>마이페이지.</h1>
<h4>ID : ${user.member_id}</h4>
<h4>PW : ${user.member_pw}</h4>
<h4>NAME : ${user.member_name}</h4>
<h4>Email : ${user.member_email}</h4>
<h4>Image : <!-- <img src="/review/movie/resources/memberImage/E.jpg"> --></h4>


<input type="button" value="정보변경"
	onclick="location.href='/review/mypage/updateMemberForm'">


</body>
</html>