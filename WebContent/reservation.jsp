<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- 본고딕 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--임시 css-->
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/reservation.css">

    <title>영화예매</title>
  </head>
  <body>
    <!-- 헤더부분  -->
    <%@ include file="./header.jsp" %>
    
    <!--메인 부분-->
    <main>
    <br>
	<h2>빠른 예매 </h2>
	</br>
	<div class="row" style="font-family: 'GmarketSansMedium';">
		<div class="col-lg-12">
			<!-- 날짜 출력 -->
			<div class="col-lg-4">
				<div class="card shadow mb-4">
					<div class="card-header bg-success">
						<h6 class="m-0 text-white">날짜선택</h6>
					</div>
					<div class="list-group list-group-flush samll">
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.12">12.12</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.13">12.13</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.14">12.14</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.15">12.15</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.16">12.16</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.17">12.17</a>
						<a class="list-group-item list-grop-item-action" href="SelectDate.do?date=12.18">12.18</a>
					</div>
				</div>
			</div>
			<!-- 영화 목록 출력  -->
			<div class="col-lg-4">
				<div class="card shadow mb-4">
					<div class="card-header bg-primary">
						<h6 class="m-0 text-white">영화선택</h6>
					</div>
					<div class="list-group list-group-flush samll" id="movieListArea" >
						<c:forEach items="${movList}" var="movie">
							<a class="list-group-item list-grop-item-action" id="movTitle"
							 href="SelectMovie.do?movie='${movie.movName}'&movieId='${movie.movId}'">
							${movie.movName}
							</a>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 영화관 목록 출력 -->
			<div class="col-lg-4">
				<div class="card shadow mb-4">
					<div class="card-header bg-success">
						<h6 class="m-0 text-white">지역선택</h6>
					</div>
					<div class="list-group list-group-flush samll" id="movieListArea" >
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=서울">서울</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=경기">경기</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=인천">인천</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=대전">대전</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=충청">충청</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=세종">세종</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=부산">부산</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=대구">대구</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=경상">경상</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=광주">광주</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=전라">전라</a>
						<a class="list-group-item list-grop-item-action" href="SelectCinema.do?area1=강원">강원</a>
					</div>
				</div>
			</div>
			<c:if test="${areaCheck != null}">
				<div class="col-lg-4">
				<div class="card shadow mb-4">
					<div class="card-header bg-success">
						<h6 class="m-0 text-white">영화관선택</h6>
					</div>
					<div class="list-group list-group-flush samll">
						<c:forEach items="${cList}" var="cinema">
							<a class="list-group-item list-grop-item-action"
							 href="SelectSchedule.do?cinemaId='${cinema.cinemaId}'">
							${cinema.cinemaName}
							</a>
						</c:forEach>
					</div>
				</div>
			</div>
			</c:if>
			<!-- 상영 목록 출력 -->
			<div class="col-lg-4">
				<div class="card shadow mb-4">
					<div class="card-header bg-success">
						<h6 class="m-0 text-white">상영표</h6>
					</div>
					<c:if test="${cinemaCheck != null}">
						<div class="list-group list-group-flush samll" id="movieListArea" >
							<c:forEach items="${sList}" var="schedule">
								<a class="list-group-item list-grop-item-action"
								 href="SelectSchedule.do?scheduleId='${schedule.scheduleId}'">
								${schedule.startTime}
								</a>
							</c:forEach>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<div class="mb-3 row"><input class="btn btn-primary" type="submit" onclick="location.href='Reservation.do'" value="예매하기"></div>
	</div>

    </main>


	<!-- 푸터부분 -->
    <%@ include file="./footer.jsp" %>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
  </body>
</html>