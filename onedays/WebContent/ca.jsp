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
String today = year + ":" +(month+1)+ ":"+date; // ���� ��¥
// 1�Ϻ��� �����ϴ� �޷��� ����� ���� ������ ����,���� �����ϰ� �Ϻκ��� 1�� �����Ѵ�.
cr.set(year, month, 1);
 
// ������ ��¥�� ���� �Ʒ� ������ ����
 
// �ش� ���� ù���� ����
int startDate = cr.getMinimum(Calendar.DATE);
 
// �ش� ���� ������ ���� ����
int endDate = cr.getActualMaximum(Calendar.DATE);
 
// 1���� ������ ����
int startDay = cr.get(Calendar.DAY_OF_WEEK);
int count = 0;
%>

<table width="400" cellpadding="2" cellspacing="0" border="1" align="center">
<tr height="30">
<td><font size="2">��</font></td>
<td><font size="2">��</font></td>
<td><font size="2">ȭ</font></td>
<td><font size="2">��</font></td>
<td><font size="2">��</font></td>
<td><font size="2">��</font></td>
<td><font size="2">��</font></td>
</tr>
<tr height="30">
<%
for (int i=1;i<startDay;i++){
count++;
%>
<td>&nbsp;</td>
<%
}
for (int i=startDate;i<=endDate;i++){
String bgcolor = (today.equals(year+":"+(month+1)+":"+i))? "#CCCCCC" : "#FFFFFF";
String color = (count%7 == 0 || count%7 == 6)? "red" : "black";
count++;
%>
<td bgcolor="<%=bgcolor %>"><font size="2" color=<%=color %>><%=i %></font></td>
<%
if(count%7 == 0 && i < endDate){
%>
</tr>
<tr height="30">
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



</body>
</html>