<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
						 
	int startYear = 1921;
	
	int endYear = 2121;
	
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
	<%=startYear %><br><br><%=endYear %>
	 <%
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
	%> 
</body>
</html>