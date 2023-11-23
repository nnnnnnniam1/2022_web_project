<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="./css/login.css">

    <title>로그인</title>
  </head>
  <body>
<%--   <% String checked = (String)session.getAttribute("checked"); %>> --%>
    <!-- 헤더부분  -->
    <%@ include file="./header.jsp" %>
    
    <!--메인 부분-->
    <main>
      <!-- 로그인 -->
      <section id="login">
        <h1 class="display-6 py-4">로그인</h1>
        <form action="Login.do" method="post">
          <div class="mb-3">
            <div class="col-sm-12">
              <input name="memId" type="text" class="form-control" placeholder="아이디" value="${ memId }" />
            </div>
          </div>
          <div class="row">
            <div class="col-sm-12">
              <input name="memPw" type="password" class="form-control" placeholder="비밀번호" value="${ memPw }" />
            </div>
          </div>
          <div class="form-check my-3">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" name="save" ${checked} />
            <label class="form-check-label" for="flexCheckDefault" >아이디/비밀번호 저장</label>
          </div>
          <div class="mb-3 row">
            <input class="btn btn-primary" type="submit" value="로그인" />
          </div>
          <div class="mb-3 row">
            <button class="btn btn-primary" type="button">구글 로그인</button>
          </div>
          <div class="row text-center text-white pb-3">
            <div class="col-sm">
              <a href="">ID / PW 찾기</a>
            </div>
            <div class="col-sm">
              <a href="./register.jsp">회원가입</a>
            </div>
          </div>
        </form>
      </section>
    </main>


	<!-- 푸터부분 -->
    <%@ include file="./footer.jsp" %>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>