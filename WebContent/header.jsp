<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <nav class="navbar navbar-expand navbar-light" id="top">
      <div class="container-fluid">
        <a class="navbar-brand" href="/WebSite"><img class="fit-picture" src="img/페어링.png" width="130" height="100"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="flex-row-reverse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <ul class="navbar-nav">
              <li class="px-2 nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">메인</a>
              </li>
              <li class="px-2 nav-item">
                <a class="nav-link" href="MovieInfo.do">영화예매</a>
              </li>
              <li class="px-2 nav-item">
                <a class="nav-link" href="#">영화리뷰</a>
              </li>
              <li class="px-2 nav-item">
                <a class="nav-link" href="#">스토어</a>
              </li>
              <li class="px-2 nav-item">
                <a class="nav-link" href="#">고객센터</a>
              </li>
              <c:if test="${loginCheck!=null}">
					<li class="px-2 nav-item">
                		<a class="nav-link" href="ShowMyBookList.do">마이페이지</a>
              		</li>
                </c:if>
              <li class="nav-item">
                <c:if test="${loginCheck==null}">
                	<a class='nav-link' href='./login.jsp'>로그인</a>
                </c:if>
				<c:if test="${loginCheck!=null}">
					<a class='nav-link' href='Logout.do'>로그아웃</a>
                </c:if>
              </li>

            </ul>
          </div>
        </div>
      </div>
    </nav>