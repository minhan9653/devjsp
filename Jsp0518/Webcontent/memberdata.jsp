<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.sql.Connection" %>
  <%@ page import="java.sql.ResultSet" %>
  <%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
  
  <%!
	Connection connection;
	Statement statement;
	ResultSet resultSet;
	
	
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url = "jdbc:oracle:thin:@localhost:1521:xe" ;
	String uid ="test1";
	String upd ="test1";
	String query = "select * from member" ;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
try{
		Class.forName(driver) ;
	connection = DriverManager.getConnection(url,uid,upd) ;
	statement = connection.createStatement() ;
	resultSet = statement.executeQuery(query);
	
	while(resultSet.next()){
		String id =resultSet.getString("id") ;
		String pw =resultSet.getString("pw") ;
		String name =resultSet.getString("name") ;
		String phone =resultSet.getString("phone") ;
	
		out.println("아이디 :" + id + "비밀번호 :" + pw + "이름 :" +  name + "전화번호 :" + phone + "<br/>") ;
		
	}
	
} catch(Exception  e){
	
	
} finally{
	try{
		if(resultSet != null) resultSet.close();
		if(statement != null) statement.close();
		if(connection != null) connection.close();
		
	}catch(Exception e){}
	
}


%>
</body>
</html>