<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! 
String id,pw ;
%>


<%
id=request.getParameter("id") ;  //abcd
pw=request.getParameter("pw") ;  //1234

	if(id.equals("abcd") && pw.equals("1234")){
	
		Cookie cookie =new Cookie("id",id) ;
		cookie.setMaxAge(60);
		response.addCookie(cookie) ;
		response.sendRedirect("welcome.jsp") ;		
	
	
	}else{
		response.sendRedirect("login.html") ;
	}


%>



</body>
</html>