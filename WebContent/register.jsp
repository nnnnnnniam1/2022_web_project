<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="./css/register.css">
    
    <!-- js 파일 import -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="./js/register.js"></script>
    <title>회원가입</title>
  </head>
  <body>
    <!-- 헤더부분  -->
    <%@ include file="./header.jsp" %>
    
    <!--메인 부분-->
    <main>
    <!-- 회원가입 -->
      <section id="register">
        <div>
          <h2 class="display-6 py-3">회원가입</h2>
          <div class="border border-3" id="mainborder">
            <form action="MemberJoin.do" method="post">
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">이름</label>
                <div class="col-sm-8"><input name="memName" type="text" class="form-control" placeholder="이름" /></div>
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">아이디</label>
                <div class="col-sm-8"><input name="memId" id="memId" type="text" class="form-control" placeholder="중복체크 해주세요" /></div>
              </div>
              <div class="mb-3 row">
                <input class="btn btn-primary" type="button" id="checkId" onclick="checkId()" value="아이디 중복 확인" />
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">비밀번호</label>
                <div class="col-sm-8"><input name="memPw" id="pw1" type="password" onchange="checkPw()" class="form-control password" placeholder="영문자 + 숫자" /></div>
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">비밀번호 확인</label>
                <div class="col-sm-8"><input type="password" id="pw2" class="form-control password" onchange="checkPw()" placeholder="비밀번호 확인" /></div>
              </div>
              <div class="mb-3 row">
              	<font id="checkPw" size="2" id="check_pw"></font>
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">이메일 주소</label>
                <div class="col-sm-4"><input name="email" type="text" class="form-control" placeholder="example" /></div>
                <div class="col-sm-4">
                  <select class="form-select" aria-label="Default select example" name="address">
                    <option selected>선택</option>
                    <option value="@gmail.com">@gmail.com</option>
                    <option value="@naver.com">@naver.com</option>
                    <option value="@daum.net">@daum.net</option>
                  </select>
                </div>
              </div>
              <div class="mb-3 row">
                <label class="col-sm-4 col-form-label">생년월일</label>
                <div class="col-sm-8"><input name="birth" type="text" class="form-control" placeholder="생년월일 8자리" /></div>
              </div>
              <div class="mb-5 row">
                <label class="col-sm-4 col-form-label">핸드폰 번호</label>
                <div class="col-sm-8"><input name="phone" type="text" class="form-control" placeholder="'-'없이 입력" /></div>
              </div>
              <div class="mb-3 row"><input class="btn btn-primary" type="submit" value="회원가입"></div>
            </form>
          </div>
        </div>
      </section>
    </main>


	<!-- 푸터부분 -->
    <%@ include file="./footer.jsp" %>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>
