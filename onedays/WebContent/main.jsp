<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OneDays main</title>
<!-- bxSlider JavaScript file -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="bxsliderJs/jquery.bxslider.js"></script>
<!-- bxSlider CSS file -->
<link href="bxsliderCss/jquery.bxslider.css" rel="stylesheet" /> 
<script type="text/javascript" src="js/main.js"></script>
<link href="css/main.css" rel="stylesheet" />

</head>
<body>
	<%  
	Calendar cr = Calendar.getInstance();
	int year = cr.get(Calendar.YEAR);
	int month = cr.get(Calendar.MONTH);
	int date = cr.get(Calendar.DATE);
	int week = cr.get(Calendar.DAY_OF_WEEK );
	String today = year + "." +(month+1)+ "."+date; // 오늘 날짜
	// 1일부터 시작하는 달력을 만들기 위해 오늘의 연도,월을 셋팅하고 일부분은 1을 셋팅한다.
	cr.set(year, month, 1);
						 
	// 셋팅한 날짜로 부터 아래 내용을 구함
						 
	// 해당 월의 첫날를 구함
	int startDate = cr.getMinimum(Calendar.DATE);
						 
	// 해당 월의 마지막 날을 구함
	int endDate = cr.getActualMaximum(Calendar.DATE);
						 
	// 1일의 요일을 구함
	int startDay = cr.get(Calendar.DAY_OF_WEEK);
	int count = 0;
	String yo=null;
	%>
	<%	 
	 switch(week){
	 	case 1:
	 		yo="Sunday";
	 		break;
		case 2:
			yo="Monday";
			break;
		case 3:
	 		yo="Tuesday";
			break;
	 	case 4:
	 		yo="Wednesday";
	 		break;
	 	case 5:
	 		yo="Thursday";
			break;
		case 6:
	 		yo="Friday";
	 		break;
	 	case 7:
	 		yo="Saturday";
	 		break;
	 	}	 			
	%>
	<header id=top>
	  <div class="centerBox">
		<div class="logobox">   
				<img src="image/logo.png" width="100%"/>
		</div>
		<div class="rightBox">		
			<div class="navi">
				<ul>
					<li>
						<a href="#">ABOUT US</a>
						<ul>
							<li><a href="#">프로젝트 소개</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">오시는 길</a><!-- google ifram --></li>
						</ul>
					</li>	
					<li>
						<a href="#">SUPPORT</a>
						<ul>
							<li><a href="#">Calendar</a></li>
							<li><a href="#">Plan table</a></li>
							<li><a href="#">Diary</a></li>
							<li><a href="#">Memory</a></li>
						</ul>
					</li>	
					<li>
						<a href="#">CONTENT US</a>
						<ul>
							<li><a href="#">문의사항</a></li>
							<li><a href="#">마이메뉴</a></li>
						</ul>	
					</li>							
				</ul>	
				<ul>
					<li class="jbtn"><a href="#">Login</a></li>
					<li class="jbtn"><a href="#">Join</a></li>
		   		</ul>		
		   </div>	  	
	   </div>
	</div>	
	</header>
	<div id=body1>
		<ul class="bxslider">
			<li>
			<img src="image/mainbnr.jpg" width="100%"/>
			</li>
		    <li>
			<img src="image/mainbnr2.png" width="100%"/>
			</li>
			<li>
			<img src="image/mainbnr3.png" width="100%"/>
			</li> 
		</ul>
	</div>
	
<%-- 	 <%
	for (int i=startDate;i<=endDate;i++){
	%>
	<input type="radio" name="slide" id=slide<%=i %>>
	<ul>
		<li>
		  <div class="double">
			<div class="wrap_box">
	 			<p class="small_txt"><%=year %></p>
	 			<p class="medium_txt"><%=month+1 %>월</p>
			<div class="week_box">
	 		<p class="sub_tit"><%=yo %>
	 		<span class="day"><%=date %>일</span></p>
	 		<div class="list_box">
	  		<p class="mini_tit">돌아보기</p>
	  				<div class="section1">
	  					<p>java복습</p>
	  					<p>jsp복습</p>
	  					<p>sql복습</p>
	  				</div>
	  		<p class="mini_tit">오늘의 계획</p>
	  				<div class="section2">
	  					<p>이젠아카데미 출석여부 물어보기</p>
	  					<p>밀린 빨래하기</p>
	  				</div>
	  		<p class="mini_tit">한줄일기</p>
	  				<div class="section3">
	  					<p>오늘은 눈이 많이 내렸다</p>
	  					<p>오늘은 복습을 했다</p>
	  					<p>밖은 춥다</p>
	  				</div>
	 		</div>
			</div><!-- week_box -->
			</div><!-- wrap_box -->
			</div><!-- double -->
		</li>
	  </ul>
	<%
	}
	%>  --%>
		<div class="double">
			<div class="wrap_box">
	 			<p class="small_txt"><%=year %></p>
	 			<p class="medium_txt"><%=month+1 %>월</p>
			<div class="week_box">
	 		<p class="sub_tit"><%=yo %>
	 		<span class="day"><%=date %>일</span></p>
	 		<div class="list_box">
	  		<p class="mini_tit">돌아보기</p>
	  				<div class="section1">
	  					<p>java복습</p>
	  					<p>jsp복습</p>
	  					<p>sql복습</p>
	  				</div>
	  		<p class="mini_tit">오늘의 계획</p>
	  				<div class="section2">
	  					<p>이젠아카데미 출석여부 물어보기</p>
	  					<p>밀린 빨래하기</p>
	  				</div>
	  		<p class="mini_tit">한줄일기</p>
	  				<div class="section3">
	  					<p>오늘은 눈이 많이 내렸다</p>
	  					<p>오늘은 복습을 했다</p>
	  					<p>밖은 춥다</p>
	  				</div>
	 		</div>
			</div><!-- week_box -->
			</div><!-- wrap_box -->
	</div><!-- double -->
	<div class="double">
		<div class="calender">
			<div name="calendar">
				<h3><%=today %></h3>
				<br>
				<table>
				<tr height="80">
				<td><font size="4" color="#FE2E2E">Sunday</font></td>
				<td><font size="4" color="#6E6E6E">Monday</font></td>
				<td><font size="4" color="#6E6E6E">Tuesday</font></td>
				<td><font size="4" color="#6E6E6E">Wednesday</font></td>
				<td><font size="4" color="#6E6E6E">Thursday</font></td>
				<td><font size="4" color="#6E6E6E">Friday</font></td>
				<td><font size="4" color="#0040FF">Saturday</font></td>
				</tr>
				<tr height="80">
				<%
				for (int i=1;i<startDay;i++){
					count++;
				%>
				<td>&nbsp;</td>
				<%
				}
				for (int i=startDate;i<=endDate;i++){
					String bgcolor
					= (today.equals(year+"."+(month+1)+"."+i))? "#CCCCCC" : "#FFFFFF";
					String color;
					
					if(count%7==0){
							color="red";
					}else if(count%7==6){
							color="blue";
					}else{
							color="#6E6E6E";
					}
							count++;
				
				%>
				<td bgcolor="<%=bgcolor %>"><font size="5" color=<%=color%>><%=i%>
			</font></td>
				<%
				if(count%7 == 0 && i < endDate){
				%>
				</tr>
				<tr height="80">
				<%
					}
			    }
				while(count%7 != 0){
				%>
				<td>&nbsp;</td>
				<%
				count++;
				}
				%>
				</tr> 
				</table>
			</div>	
		</div>
		</div>
    <div style="clear:both;"></div>
	<div class="btnList">
		<p class="btn"><a href="#">Calendar</a></p>
		<p class="btn"><a href="#">Plan table</a></p>
		<p class="btn"><a href="#">Diary</a></p>
		<p class="btn"><a href="#">Memory</a></p>
		<p class="btn"><a href="#">My menu</a></p>
	</div>
		<!--버튼5개 밑으로 가야함  -->
		<div style="clear:both;"></div> <!-- footer가 올라가는거 막아줌 -->
	
	
	
	
	<footer id=footer>
		<div class=footerText>
		<p>Ezen Academy Teem Project OneDays</p>
		<p>OneDays Calendar</p>
		<p>김민수<br>
		이준복<br>
		황태욱<br>
		이소율</p>
		<small>&copy;2021 ONEDAY</small>
	    </div>
	    <div class=footerText>
		<p>Phone. 02-761-7615</p>
		<p>Fax. 02-780-7615</p>
		<p>Email. kaa0913@naver.com</p>
		</div>
		<div class=footerText>
		<p>Address  서울시 노원구 상계로 64</p>
		<p>화랑빌딩 7F 이젠컴퓨터아카데미</p>
		</div>
	
	</footer> 
</body>
</html>