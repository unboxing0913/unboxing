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
	String today = year + "." +(month+1)+ "."+date; // ���� ��¥
	// 1�Ϻ��� �����ϴ� �޷��� ����� ���� ������ ����,���� �����ϰ� �Ϻκ��� 1�� �����Ѵ�.
	cr.set(year, month, 1);
						 
	// ������ ��¥�� ���� �Ʒ� ������ ����
						 
	int startYear = 1921;
	
	int endYear = 2121;
	
	// �ش� ���� ù���� ����
	int startDate = cr.getMinimum(Calendar.DATE);
						 
	// �ش� ���� ������ ���� ����
	int endDate = cr.getActualMaximum(Calendar.DATE);
						 
	// 1���� ������ ����
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
	 			<p class="medium_txt"><%=month+1 %>��</p>
			<div class="week_box">
	 		<p class="sub_tit"><%=yo %>
	 		<span class="day"><%=date %>��</span></p>
	 		<div class="list_box">
	  		<p class="mini_tit">���ƺ���</p>
	  				<div class="section1">
	  					<p>java����</p>
	  					<p>jsp����</p>
	  					<p>sql����</p>
	  				</div>
	  		<p class="mini_tit">������ ��ȹ</p>
	  				<div class="section2">
	  					<p>������ī���� �⼮���� �����</p>
	  					<p>�и� �����ϱ�</p>
	  				</div>
	  		<p class="mini_tit">�����ϱ�</p>
	  				<div class="section3">
	  					<p>������ ���� ���� ���ȴ�</p>
	  					<p>������ ������ �ߴ�</p>
	  					<p>���� ���</p>
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