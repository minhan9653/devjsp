<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
	Enumeration enumeration = session.getAttributeNames() ;
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = (String)session.getAttribute(sName) ;
		
		if (sValue.equals("abcd")) session.removeAttribute(sName);
	}

	
	
	%>
	
	<a href="Login.html">초기화면</a>
	<a href="sessiontest.jsp">sessionTest</a>

</body>
</html>