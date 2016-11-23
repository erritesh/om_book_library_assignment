package com.om.book.controller;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.om.book.dao.InsertDataDAOImpl;
import com.om.book.model.UserSignUp;



/**
 * Servlet implementation class LoginServlet
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	    public LoginController() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, java.io.IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
UserSignUp user = new UserSignUp();
InsertDataDAOImpl impl = new InsertDataDAOImpl();
user.setUsername(request.getParameter("username"));
user.setPassword(request.getParameter("password"));
int status=impl.signIn(user);

System.out.println("-------------------");
System.out.println(impl.getUserById(1));
System.out.println("-------------");

if(status>0){
	/*HttpSession session = request.getSession(true);       
    session.setAttribute("currentSessionUser",user); 
    response.sendRedirect("userHome.jsp"); //logged-in page      
*/	
	 request.getRequestDispatcher("userHome.jsp").include(request, response);
}else{
	request.getRequestDispatcher("userSignIn.jsp").include(request, response);
	out.println("Sorry! unable to save record");
}


/*
        
if (user.isValid())
{
   
  HttpSession session = request.getSession(true);       
  session.setAttribute("currentSessionUser",user); 
  response.sendRedirect("userLogged.jsp"); //logged-in page            
}
   
else 
  response.sendRedirect("invalidLogin.jsp"); //error page 
} */



}
}