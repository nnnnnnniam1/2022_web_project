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
    <link rel="stylesheet" href="./css/book.css">

    <title>영화선택</title>
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
          <h2 class="display-5">바로예매</h2>
          <button type="submit" class="px-4 btn btn-primary">예매하기</button>
        </div>
        <hr />
        <div class="container">
          <div class="row row-cols-4">
            <h5 class="col display-6">영화 선택</h5>
            <h5 class="col display-6">지역 선택</h5>
            <h5 class="col display-6">영화관</h5>
            <h5 class="col display-6">날짜</h5>
            <div class="col">
	            <select class="form-select" size="10" name="movie">
	            <c:if test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList }">
				<c:forEach items="${ dailyResult.boxOfficeResult.dailyBoxOfficeList }" var="boxoffice">
					
					<option value="${boxoffice.movieNm}" selected>
						<c:out value="${boxoffice.movieNm}"/>
					</option>
				</c:forEach>
				</c:if>
	            </select>
            </div>
            <div class="d-flex">
              <h4 class="col-6 text-center">
         	       서울
              </h4>
              <div class="col-6">
                <select class="form-select" size="10" name="region">
                  <option value="송파구" selected>송파구</option>
                  <option value="강서구">강서구</option>
                  <option value="강남구">강남구</option>
                  <option value="강남구">노원구</option>
                  <option value="관악구">관악구</option>
                  <option value="은평구">은평구</option>
                  <option value="양천구">양천구</option>
                  <option value="강동구">강동구</option>
                  <option value="성북구">성북구</option>
                  <option value="서초구">서초구</option>
                  <option value="구로구">구로구</option>
                  <option value="중랑구">중랑구</option>
                  <option value="동작구">동작구</option>
                  <option value="마포구">마포구</option>
                  <option value="영등포구">영등포구</option>
                  <option value="광진구">광진구</option>
                  <option value="동대문구">동대문구</option>
                  <option value="도봉구">도봉구</option>
                  <option value="서대문구">서대문구</option>
                  <option value="강북구">강북구</option>
                  <option value="성동구">성동구</option>
                  <option value="금천구">금천구</option>
                  <option value="용산구">용산구</option>
                  <option value="종로구">종로구</option>
                  <option value="중구">중구</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-check">
                <input class="form-check-input" type="radio" name="theater" id="CGV" value="cgv">
                <label class="form-check-label" for="CGV">
                  CGV
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="theater" id="megabox" value="megabox" checked>
                <label class="form-check-label" for="megabox">
             	    메가박스
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="theater" id="lotte" value="lotte">
                <label class="form-check-label" for="lotte">
            	     롯데시네마
                </label>
              </div>
            </div>
            <div class="d-flex">
              <div class="col-6">
         	     <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1217" value="12/17">
                <label class="form-check-label" for="1217">
                  12 / 17
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1218" value="12/18" checked>
                <label class="form-check-label" for="1218">
             	  12 / 18
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1219" value="12/19">
                <label class="form-check-label" for="1219">
            	  12 / 19
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1220" value="12/20">
                <label class="form-check-label" for="1220">
            	  12 / 20
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1221" value="12/21">
                <label class="form-check-label" for="12/21">
            	  12 / 21
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1222" value="12/22">
                <label class="form-check-label" for="1222">
            	  12 / 22
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1223" value="12/23">
                <label class="form-check-label" for="1223">
            	  12 / 23
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1224" value="12/24">
                <label class="form-check-label" for="1224">
            	  12 / 24
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="date" id="1225" value="12/25">
                <label class="form-check-label" for="1225">
            	  12 / 25
                </label>
              </div>
              </div>
              <div class="col-6">
                <div class="form-check">
                <input class="form-check-input" type="radio" name="time" id="1100" value="11:00">
                <label class="form-check-label" for="1100">
              	   11 : 00
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="time" id="1300" value="13:00">
                <label class="form-check-label" for="1300">
             	   13 : 00
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="time" id="1500" value="15:00" checked>
                <label class="form-check-label" for="1500">
            	   15 : 00
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="time" id="1700" value="17:00">
                <label class="form-check-label" for="1700">
            	   17 : 00
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="time" id="1900" value="19:00">
                <label class="form-check-label" for="1900">
            	   19 : 00
                </label>
              </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      </form>
    </main>


	<!-- 푸터부분 -->
    <%@ include file="./footer.jsp" %>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>