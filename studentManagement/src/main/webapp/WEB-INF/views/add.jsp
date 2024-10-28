<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생 정보 추가 페이지</title>
</head>
<body>
	<h2>학생 정보 추가</h2>

	<hr>

	<form action="/student/add" method="post" id="addForm">
		<div>
			제목 : <input type="text" name="stdName">
		</div>

		<div>
			나이 : <input type="text" name="stdAge">
		</div>

		<div>
			성별 : <input type='checkbox' name='stdGender' value='female' />여성 <input
				type='checkbox' name='stdGender' value='male' />남성
		</div>

		<div>
			성적 : <input type='checkbox' name='stdScore' value='A' />A <input
				type='checkbox' name='stdScore' value='B' />B <input
				type='checkbox' name='stdScore' value='C' />C <input
				type='checkbox' name='stdScore' value='D' />D <input
				type='checkbox' name='stdScore' value='F' />F
		</div>


		<button>추가</button>
	</form>

	<%-- session 스코프에 message 있으면 alert 출력하기 --%>
	<c:if test="${not empty sessionScope.message}">
		<script>
			alert("${message}");
		</script>

		<c:remove var="message" scope="session" />
	</c:if>

</body>
</html>