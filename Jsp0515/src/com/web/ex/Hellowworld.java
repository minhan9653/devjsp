package com.web.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hellowworld
 */
@WebServlet("/Hellowworld")
public class Hellowworld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hellowworld() {
        super();
        // TODO Auto-generated constructor stub
    }

//검색하고자 하는 내용이 검색창에 함께들어간 경우    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	System.out.println("run doget");
	
	response.setContentType("text/html ; charset=utf-8") ;
	PrintWriter writer = response.getWriter();
	
	writer.println("<html>");
	writer.println("<head>");
	writer.println("</head>");
	writer.println("<body>");
	writer.println("<h1>Hello World  -  TEST  doGet ,  doPost</h1>");
	writer.println("</body>");
	writer.println("</html>");
	
	writer.close();
	
	}

//
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("do post");
	}

}
