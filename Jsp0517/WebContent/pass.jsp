<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%! int age; %>
<%String str = request.getParameter("age") ;
age = Integer.parseInt(str);
%>
<%=age %>
살의 성인입니다. 주류구매 가능합니다.

<br/>
<a href="requestex.html">초기화면으로 이동</a>

</body>
</html>