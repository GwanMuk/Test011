<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<header>
		<div id="head">
			<div class="logo">
				<a href="hihi.jsp"><img
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
					<li class="subList"><a href="#"><img
						src="https://bicycleplayingcards.co.kr/web/images/ic01.png"></a>
						<div>
							<ul>						
								<li>
									<%
									if (session != null && session.getAttribute("loginUser") != null) {
									%>
									<form action="logout.do" method="post">
										<input type="submit" value="Logout">
									</form> <%
									 } else {
									 %>
									<p>
										<a href="login.do">login</a>
									</p> <%
									 }
									 %>
								</li>
								<li><a href="#">내 정보</a>
								</li>
							</ul>
						</div>
					</li>
					<li class="icon"><a href="#"><img
							src="https://bicycleplayingcards.co.kr/web/images/ic02.png"></a></li>
					<li class="icon"><a href="#"><img
							src="https://bicycleplayingcards.co.kr/web/images/ic03.png"></a></li>
				</ul>
			</div>
		</div>
	</header>
<h2>회원 가입</h2>
      '*' 표시 항목은 필수 입력 항목입니다.
      <form action="join.do" method="post" name="frm">
        <table>
          <tr>
            <td>이름</td>
            <td><input type="text" name="username" size="20">*</td>
          </tr>
          <tr>
            <td>아이디</td>
            <td>
              <input type="text" name="userid" size="20" id="userid">*
              <input type="hidden" name="reid" size="20"> 
              <input type="button" value="중복 체크" onclick="idCheck()">
            </td>
          </tr>
          <tr>
            <td>암 호</td>
            <td><input type="password" name="pwd" size="20">*</td>
          </tr>
          <tr height="30">
            <td width="80">암호 확인</td>
            <td><input type="password" name="pwd_check" size="20">*</td>
          </tr>
          <tr>
            <td>이메일</td>
            <td><input type="text" name="email" size="20"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" size="20"></td>
          </tr>
          <tr>
            <td>등급</td>
            <td>
               <input type="radio" name="admin" value="0" checked="checked"> 일반회원 
               <input type="radio" name="admin" value="1"> 관리자
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
               <input type="submit" value="확인" onclick="return joinCheck()"> 
               <input type="reset" value="취소">
            </td>
          </tr>
          <tr>
            <td colspan="2">${message}</td>
          </tr>
        </table>
      </form>
      <footer>
		<div class="footer">
			<div class="footer_div">
				<p>ABOUT COMPANY</p>
				<p>────</p>
				<p>일어나~~~~</p>
				<p>일어나~~~~</p>
				<p>다시 한번 해보는거야</p>
				<p>────</p>
				<p>일어나~~~~</p>
				<p>일어나~~~~</p>
				<p>봄의 새싹들 처럼~</p>

			</div>
			<div class="footer_div1">
				<p>ABOUT COMPANY</p>
				<p>────</p>
				<p>일어나~~~~</p>
				<p>일어나~~~~</p>
				<p>다시 한번 해보는거야</p>
				<p>────</p>
				<p>일어나~~~~</p>
				<p>일어나~~~~</p>
				<p>봄의 새싹들 처럼~</p>
			</div>
		</div>
	</footer>
      
</body>
</html>