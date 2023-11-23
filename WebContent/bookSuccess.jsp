<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- 본고딕 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--css-->
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/book.css">

<title>예매 확인</title>
</head>
<body>
 <!-- 헤더부분  -->
 <%@ include file="./header.jsp" %>
    
    <!--메인 부분-->
    <main>
	  <!-- 로그인 -->
	  <form action="BookInfo1.do" method="get">
      <section id="movie">
        <div class="top d-flex justify-content-between mt-5">
          <h2 class="display-5"> 결제완료 </h2>
        </div>
        <hr />
        <br>
       <div align="center">
        <div class="card border-dark mb-3" style="max-width: 50rem; height: 30rem;" align="left">
 			<div class="card-header" >Check reservation  </div>
  			<div class="card-body text-dark">
  			<br>
   				<h1 class="card-title" style="color: rgb(81, 39, 114); font-weight: bold;">&nbsp; ${movName}</h1>
   				<br>
   				<br>
   				<h4 style="color: rgb(81, 39, 114);">&nbsp; &nbsp; &nbsp; &nbsp; ${region} &nbsp; 
   				<c:if test='${ cinema=="lotte"}'>
					롯데시네마
				</c:if>
				<c:if test='${ cinema=="megabox"}'>
					메가박스 
				</c:if>
				<c:if test='${ cinema=="cgv"}'>
					CGV
				</c:if>
				</h4>
				<h4 style="color: rgb(81, 39, 114);" >&nbsp; &nbsp; &nbsp; &nbsp; 2022년 ${fn:substring(date, 0, 2)}월 ${fn:substring(date, 2,5)}일 </h4>
				<h4 style="color: rgb(81, 39, 114);">&nbsp; &nbsp; &nbsp; &nbsp; ${fn:substring(startTime, 0, 2)} : ${fn:substring(startTime, 2,5)} 
																		~ ${fn:substring(startTime, 0, 2)+2} : ${fn:substring(startTime, 2,5)}</h4>
				<h4 style="color: rgb(81, 39, 114);" >&nbsp; &nbsp; &nbsp; &nbsp; 좌석 ${seat}  </h4>
				<h4 style="color: rgb(81, 39, 114);" >&nbsp; &nbsp; &nbsp; &nbsp; 성인 1명  </h4>
  			</div>
  			<div class="d-grid gap-2 d-md-block">
  			<div style="text-align:center" >
  				<button onclick="location.href='./index.jsp'" type="button" class="btn btn-primary btn-lg" style="border:none;">&nbsp; &nbsp; &nbsp; HOME &nbsp; &nbsp; &nbsp;</button>
				&nbsp;&nbsp;
				<button onclick="location.href='ShowMyBookList.do'" type="button" class="btn btn-secondary btn-lg" style="background-color: lightgray; border:none;"> &nbsp; &nbsp; My Page &nbsp; &nbsp;</button>
				
  			</div>
  			<br>
</div>
		</div>
		<br>
		</div>
      </section>
      </form>
    
 <!-- 푸터부분 -->
 <%@ include file="./footer.jsp" %>
</body>
</html>