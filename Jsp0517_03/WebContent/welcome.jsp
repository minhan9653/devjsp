<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Cookie[] cookies = request.getCookies() ;

	for (int i=0 ; i<cookies.length ; i++){
		
		String id = cookies[i].getValue();
		if(id.equals("abcd")){
			out.println(id +"님반갑습니다." + "<br/>") ;
	}
		}
	%>

<a href ="Logout.jsp">로그아웃</a>
</body>
</html>