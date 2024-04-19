<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" type="text/css" href="css/product.css">
      </head>
      <body>
      <header>
		<div id="head">
			<div class="logo">
				<a href="index.html"><img
					src="https://bicycleplayingcards.co.kr/web/images/logo.png"
					alt="로고이미지"></a>
			</div>
			<div class="nav">
				<ul>
					<li><a href="#">ALL</a></li>
					<li><a href="#">BEST</a></li>
					<li><a href="productList.do">NEW</a></li>
					<li><a href="#">SPECIAL</a></li>
					<li><a href="#">STORIES</a></li>
					<li><a href="#">EVENT</a></li>
					<li><a href="boardgo.jsp">Q&A</a></li>
				</ul>
			</div>
			<div class="login">
				<ul>
					<li class="icon"><a href="login.do"><img
							src="https://bicycleplayingcards.co.kr/web/images/ic01.png"></a></li>
					<li class="icon"><a href="#"><img
							src="https://bicycleplayingcards.co.kr/web/images/ic02.png"></a></li>
					<li class="icon"><a href="#"><img
							src="https://bicycleplayingcards.co.kr/web/images/ic03.png"></a></li>
				</ul>
			</div>
		</div>
	</header>
	<br><br><br>
        <div id="wrap" align="center">
          <h1>상품 리스트 - 관리자 페이지</h1>
          <hr>
          <table class="list">
            <tr>
              <td colspan="5" style="border: white; text-align: right"><a href="productWrite.do">상품 등록</a></td>
            </tr>
            <tr>
              <th>번호</th>
              <th>이름</th>
              <th>가격</th>
              <th>수정</th>
              <th>삭제</th>
            </tr>
            <c:forEach var="product" items="${productList}">
              <tr class="record">
                <td>${product.code}</td>
                <td>${product.productName}</td>
                <td>${product.price} 원</td>
                <td><a href="productUpdate.do?code=${product.code}">상품 수정</a>
                </td>
                <td><a href="productDelete.do?code=${product.code}">상품 삭제</a>
                </td>
              </tr>
            </c:forEach>
          </table>
        </div>
        <footer>
	<footer id="footer">
		<div class="inner">
		<div class="foot_left">
			<h5>ABOUT COMPANY<h5>
			<span></span>
			<ul>
				<li>TEL 070-4880-0686<br/>MON-FRI 10:00 - 19:00<br/>SAT SUN HOLIDAY OFF</li>
				<li>BANK INFO</li>
				<li>기업 036-109027-04-034<br/>예금주 : (주)나무온</li>
			</ul>
		</h5></h5></div>
		<!-- <div class="foot_center">
			<span><h5>CS CENTER</h5></span>
			<span></span>
			<span><h6>TEL 070-4880-0686<br/>MON-FRI 10:00 - 19:00<br/>SAT SUN HOLIDAY OFF</h6></span>
			<span><h5>BANK INFO</h5></span>
			<span></span>
			<h6>기업 036-109027-04-034<br/>예금주 : (주)나무온</h6>
		</div> -->
		<div class="foot_right">
			<div class="xans-element- xans-layout xans-layout-footer "><p class="address">
                <span><span class="medium">COMPANY </span> 주식회사 나무온 </span><br/>
                <span><span class="medium"><b>[바이시클카드 한국 온라인 공식 파트너]<b><br/>
                <br/>   
                <span><span class="medium">CEO</span> 조영주</span><br/>
                <span><span class="medium">BUSINESS LICENSE</span> 129-86-54290</span><br/>
                <span><span class="medium">MALL ORDER LICENSE</span> 	2021-서울동작-0437</span><br/>
                 <span><span class="medium">ADDRESS </span> 서울특별시 동작구 사당로 261 (사당동) 나무온스퀘어</span><br/>
            </b></b></span></span></p>
		</div>
		</div>
		</div>
		</footer>
      </body>
    </html>