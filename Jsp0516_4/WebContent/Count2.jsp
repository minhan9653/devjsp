<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Page Count2.1 is :


<%-- 
<% out.print(myMethod(0)); %>
--%>
<%=myMethod(0) %>

<%!
 public int myMethod(int count){
return ++count ;
}
%>

</body>
</html>