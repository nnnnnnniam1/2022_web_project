<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="./css/seat.css">

<title>영화선택</title>
</head>
<body>
	<!-- 헤더부분  -->
	<%@ include file="./header.jsp"%>

	<!--메인 부분-->
	<main>
		<!-- 로그인 -->
		<form action="BookInfo2.do" method="get">
			<section id="movie">
				<div class="top d-flex justify-content-between mt-5">
					<h2 class="display-5">바로예매</h2>
					<button type="submit" class="px-4 btn btn-primary">예매하기</button>
				</div>
				<hr />
					<div class="container text-center">
						<div class="row">
							<div class="col-2">좌석선택</div>
							<div class="col-8">
								<div class="border border-dark text-center p-3 mb-4 border-2">
									screen</div>
								<div class="border border-dark p-3">
									<div class="row mb-5">
										<div class="col-3">
											<input class="form-check-input" name="seat" type="radio" value="A0" />
											<input class="form-check-input" name="seat" type="radio" value="A1" /><br />
											<input class="form-check-input" name="seat" type="radio" value="B0"/>
											<input class="form-check-input" name="seat" type="radio" value="B1"/><br />
											<input class="form-check-input" name="seat" type="radio" value="C0"/>
											<input class="form-check-input" name="seat" type="radio" value="C1"/><br />
											<input class="form-check-input" name="seat" type="radio" value="D0"/>
											<input class="form-check-input" name="seat" type="radio" value="D1"/><br />
										</div>
										<div class="col-6">
											<input class="form-check-input" name="seat" type="radio" value="A2"/>
											<input class="form-check-input" name="seat" type="radio" value="A3"/>
											<input class="form-check-input" name="seat" type="radio" value="A4"/>
											<input class="form-check-input" name="seat" type="radio" value="A5"/>
											<input class="form-check-input" name="seat" type="radio" value="A6"/>
											<input class="form-check-input" name="seat" type="radio" value="A7"/>
											<input class="form-check-input" name="seat" type="radio" value="A8"/>
											<input class="form-check-input" name="seat" type="radio" value="A9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="B2"/>
											<input class="form-check-input" name="seat" type="radio" value="B3"/>
											<input class="form-check-input" name="seat" type="radio" value="B4"/>
											<input class="form-check-input" name="seat" type="radio" value="B5"/>
											<input class="form-check-input" name="seat" type="radio" value="B6"/>
											<input class="form-check-input" name="seat" type="radio" value="B7"/>
											<input class="form-check-input" name="seat" type="radio" value="B8"/>
											<input class="form-check-input" name="seat" type="radio" value="B9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="C2"/>
											<input class="form-check-input" name="seat" type="radio" value="C3"/>
											<input class="form-check-input" name="seat" type="radio" value="C4"/>
											<input class="form-check-input" name="seat" type="radio" value="C5"/>
											<input class="form-check-input" name="seat" type="radio" value="C6"/>
											<input class="form-check-input" name="seat" type="radio" value="C7"/>
											<input class="form-check-input" name="seat" type="radio" value="C8"/>
											<input class="form-check-input" name="seat" type="radio" value="C9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="D2"/>
											<input class="form-check-input" name="seat" type="radio" value="D3"/>
											<input class="form-check-input" name="seat" type="radio" value="D4"/>
											<input class="form-check-input" name="seat" type="radio" value="D5"/>
											<input class="form-check-input" name="seat" type="radio" value="D6"/>
											<input class="form-check-input" name="seat" type="radio" value="D7"/>
											<input class="form-check-input" name="seat" type="radio" value="D8"/>
											<input class="form-check-input" name="seat" type="radio" value="D9"/><br />										
										</div>
										<div class="col-3">
											<input class="form-check-input" name="seat" type="radio" value="A10" />
											<input class="form-check-input" name="seat" type="radio" value="A11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="B10"/>
											<input class="form-check-input" name="seat" type="radio" value="B11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="C10"/>
											<input class="form-check-input" name="seat" type="radio" value="C11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="D10"/>
											<input class="form-check-input" name="seat" type="radio" value="D11"/><br />
										</div>
									</div>
									<div class="row">
										<div class="col-3">
											<input class="form-check-input" name="seat" type="radio" value="E0" />
											<input class="form-check-input" name="seat" type="radio" value="E1"/><br />
											<input class="form-check-input" name="seat" type="radio" value="F0"/>
											<input class="form-check-input" name="seat" type="radio" value="F1"/><br />
											<input class="form-check-input" name="seat" type="radio" value="G0"/>
											<input class="form-check-input" name="seat" type="radio" value="G1"/><br />
											<input class="form-check-input" name="seat" type="radio" value="H0"/>
											<input class="form-check-input" name="seat" type="radio" value="H1"/><br />
										</div>
										<div class="col-6">
											<input class="form-check-input" name="seat" type="radio" value="E2"/>
											<input class="form-check-input" name="seat" type="radio" value="E3"/>
											<input class="form-check-input" name="seat" type="radio" value="E4"/>
											<input class="form-check-input" name="seat" type="radio" value="E5"/>
											<input class="form-check-input" name="seat" type="radio" value="E6"/>
											<input class="form-check-input" name="seat" type="radio" value="E7"/>
											<input class="form-check-input" name="seat" type="radio" value="E8"/>
											<input class="form-check-input" name="seat" type="radio" value="E9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="F2"/>
											<input class="form-check-input" name="seat" type="radio" value="F3"/>
											<input class="form-check-input" name="seat" type="radio" value="F4"/>
											<input class="form-check-input" name="seat" type="radio" value="F5"/>
											<input class="form-check-input" name="seat" type="radio" value="F6"/>
											<input class="form-check-input" name="seat" type="radio" value="F7"/>
											<input class="form-check-input" name="seat" type="radio" value="F8"/>
											<input class="form-check-input" name="seat" type="radio" value="F9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="G2"/>
											<input class="form-check-input" name="seat" type="radio" value="G3"/>
											<input class="form-check-input" name="seat" type="radio" value="G4"/>
											<input class="form-check-input" name="seat" type="radio" value="G5"/>
											<input class="form-check-input" name="seat" type="radio" value="G6"/>
											<input class="form-check-input" name="seat" type="radio" value="G7"/>
											<input class="form-check-input" name="seat" type="radio" value="G8"/>
											<input class="form-check-input" name="seat" type="radio" value="G9"/><br />
											<input class="form-check-input" name="seat" type="radio" value="H2"/>
											<input class="form-check-input" name="seat" type="radio" value="H3"/>
											<input class="form-check-input" name="seat" type="radio" value="H4"/>
											<input class="form-check-input" name="seat" type="radio" value="H5"/>
											<input class="form-check-input" name="seat" type="radio" value="H6"/>
											<input class="form-check-input" name="seat" type="radio" value="H7"/>
											<input class="form-check-input" name="seat" type="radio" value="H8"/>
											<input class="form-check-input" name="seat" type="radio" value="H9"/><br />										
										</div>
										<div class="col-3">
											<input class="form-check-input" name="seat" type="radio" value="E10" />
											<input class="form-check-input" name="seat" type="radio" value="E11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="F10"/>
											<input class="form-check-input" name="seat" type="radio" value="F11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="G10"/>
											<input class="form-check-input" name="seat" type="radio" value="G11"/><br />
											<input class="form-check-input" name="seat" type="radio" value="H10"/>
											<input class="form-check-input" name="seat" type="radio" value="H11"/><br />
										</div>
									</div>
								</div>
							</div>
							<div class="col-2"></div>
						</div>
					</div>
			</section>
		</form>
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