package com.minhan.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx
 */
@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		System.out.println("doPost");
		
		
		
		String name = request.getParameter("name") ;
		String id = request.getParameter("id") ;
		String pw = request.getParameter("pw") ;
		
		String[] hobbys =request.getParameterValues("hobby") ;
		String major = request.getParameter("major") ;
		String protocol = request.getParameter("protocol") ;
		
		//받아오는것
		
		
		//아래는 html형식으로 만들어서 받아주기
		response.setContentType("text/html; charset=utf-8") ;
		PrintWriter writer = response.getWriter() ;
		
		writer.println("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"UTF-8\">\r\n"
				+ "<title>Insert title here</title>\r\n"
				+ "</head>\r\n");

		writer.println("<body>");
		writer.println("이름 : " + name + "</br>");
		writer.println("아이디 : " + id + "</br>");
		writer.println("비밀번호 : " + pw + "</br>");
		writer.println("취미 : " + Arrays.toString(hobbys) + "</br>");
		writer.println("전공 : " + major + "</br>");
		writer.println("전송방법 : " + protocol + "</br>");
		
		
		
		
		writer.println("</body>");
			
		
		writer.println("</html>");
		
		
	}

}
