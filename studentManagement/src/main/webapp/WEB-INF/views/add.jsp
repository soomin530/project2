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
			제목 : <input type="text" name="stdName" value="${student.stdName}">
		</div>

		<div>
			나이 : <input type="text" name="stdAge" value="${student.stdAge}">
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

		<%-- 성별, 성적은 기존 정보가 출력된 상태를 반영하지 못했습니다 --%>

		<%-- studNo 도 수정 요청 시 파라미터로 보내기
    	왜 필요하냐?
    	어떤 studNo를 가진 행을 수정하고자 하는지
    	SQL의 조건문에서 이용해야하기 때문이다.
    --%>
		<input type="hidden" name="studNo" value="${param.studNo}">
		<!-- hidden : 화면상에 보이지 않게 함! -->

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