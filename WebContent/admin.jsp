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

    <title>관리자-회원관리 </title>
  </head>
  <body>
    <!-- 헤더부분  -->
    <%@ include file="./header.jsp" %>
    <%@ include file="./adHeader.jsp" %>
    
    <!--메인 부분-->
    <main>
    <br>
	<h2>회원관리 </h2>
	</br>
	
	<div class="input-group">
	  	<input type="text" class="form-control" aria-label="Text input with segmented dropdown button">
	  	<button type="button" class="btn btn-outline-secondary">Search</button>
	  	<button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
	    	<span class="visually-hidden">Toggle Dropdown</span>
	  	</button>
	  	<ul class="dropdown-menu dropdown-menu-end">
	    	<li><a class="dropdown-item" href="#">이름 </a></li>
	    	<li><a class="dropdown-item" href="#">아이디  </a></li>
	    	<li><hr class="dropdown-divider"></li>
	    	<li><a class="dropdown-item" href="#">전체 </a></li>
	  	</ul>
	</div>
	<br>
	<form action = "DeleteMember.do">
		<table class="table">
	  		<thead>
	    		<tr class="table-light">
	      			<!-- <th scope="col">번호 </th> -->
	      			<th scope="col">이름 </th>
	      			<th scope="col">생년월일 </th>
	      			<th scope="col">아이디 </th>
	      			<th scope="col">전화번호 </th>
	      			<th scope="col">등록일자 </th>
	      			<th scope="col">선택 </th>
	    		</tr>
	  		</thead>
	  		<tbody class="table-group-divider">
	    		<c:forEach items="${memberList}" var="mem">
	  				<tr>
	  					<td>${mem.memName}</td>
	  					<td>${mem.birth}</td>
	  					<td>${mem.memId}</td>
	  					<td>${mem.phone}</td>
	  					<td>${mem.joinDate}</td>
	   					<td><button name="dMem" value="${mem.memId}">삭제</button></td>
	    			</tr>
	    		</c:forEach>
	  		</tbody>	
		</table>
	</form>
	<br>
    </main>
	<!-- 푸터부분 -->
    <%@ include file="./footer.jsp" %>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>