<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- 본고딕 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!--임시 css-->
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/mypage.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,300,0,-25" />

<title>회원가입</title>
</head>
<body>
	<!-- 헤더부분  -->
	<%@ include file="./header.jsp"%>

	<!--메인 부분-->
	<main>
		<section class="container">
			<div class="row">
				<div class="tab col-2 p-0">
					<div class="title text-center p-2">My Story</div>
					<div>
						<div class="item m-2 p-2">예매/구매내역</div>
						<div class="item m-2 p-2">리뷰/별점 작성</div>
						<div class="item m-2 p-2">나의 쿠폰</div>
						<div class="item m-2 p-2">나의 포인트</div>
						<div class="item m-2 p-2">나의 문의내역</div>
						<div class="item m-2 p-2">나의 카드</div>
						<div class="item m-2 p-2">나의 영화관</div>
						<div class="item m-2 p-2">개인정보 관리</div>
					</div>
				</div>
				<div class="col-1"></div>
				<div class="col-9">
					<div class="first p-2 row">
						<div class="col-4 text-center">
							<span class="material-symbols-outlined">account_circle</span>
						</div>
						<div class="col-4 middle pt-4">
							${memName} 님은<br>일반등급입니다.
						</div>
						<div class="col-4 text-center pt-4">
							<button class="btn btn-secondary" type="button">회원정보 수정</button>
						</div>
					</div>
					<div class="second row p-3">
						<div class="col-4 text-center">
							<a>총 보유 포인트</a><br> <a id="point">0P</a>
						</div>
						<div class="col-4">
							<a>선호 극장</a>
							<div class="pt-2">
								메가박스 이수역점<br> CGV 구로역점
							</div>
						</div>
						<div class="col-4">
							<a>관람권 / 쿠폰</a>
							<div class="pt-2">
								영화관람권 0매<br> 쿠폰 2매
							</div>
						</div>
					</div>
					<div id="title" class="py-3">나의 예매 내역</div>
					<form action = "deleteBook.do">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">영화관</th>
								<th scope="col">영화 이름</th>
								<th scope="col">날짜</th>
								<th scope="col">시간</th>
								<th scope="col">선택</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach items="${bookList}" var="book">
								<tr>
									<td></td>
									<td>${book.cinema}</td>
									<td>${book.movName}</td>
									<td>${book.date}</td>
									<td>${book.startTime}</td>
									<td><button type=checkbox name="deleteId" value="${book.bookId}">삭제</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</section>
	</main>


	<!-- 푸터부분 -->
	<%@ include file="./footer.jsp"%>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>