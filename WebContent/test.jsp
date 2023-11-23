<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<td>순위</td>
			<td>영화명</td>
			<td>개봉일</td>
			<td>매출액</td>
			<td>매출액점유율</td>
			<td>매출액증감(전일대비)</td>
			<td>누적매출액</td>
			<td>관객수</td>		
			<td>관객수증감(전일대비)</td>
			<td>누적관객수</td>
			<td>스크린수</td>
			<td>상영횟수</td>
	<c:if test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList }">
		<c:forEach items="${ dailyResult.boxOfficeResult.dailyBoxOfficeList }" var="boxoffice">
			<tr>
				<td><c:out value="${boxoffice.rank}"/></td>
				<td><c:out value="${boxoffice.movieNm}"/></td>
				<td><c:out value="${boxoffice.openDt}"/></td>
				<td><c:out value="${boxoffice.salesAmt}"/></td>
				<td><c:out value="${boxoffice.salesShare}"/></td>
				<td><c:out value="${boxoffice.salesInten}"/>/<c:out value="${boxoffice.salesChange}"/></td>
				<td><c:out value="${boxoffice.salesAcc}"/></td>
				<td><c:out value="${boxoffice.audiCnt}"/></td>
				<td><c:out value="${boxoffice.audiInten}"/>/<c:out value="${boxoffice.audiChange}"/></td>
				<td><c:out value="${boxoffice.audiAcc}"/></td>
				<td><c:out value="${boxoffice.scrnCnt}"/></td>
				<td><c:out value="${boxoffice.showCnt}"/></td>
			</tr>
		</c:forEach>
	</c:if>
	</table>
</body>
</html>