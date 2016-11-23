package com.om.book.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.om.book.dao.InsertDataDAOImpl;
import com.om.book.model.UserSignUp;

/**
 * Servlet implementation class AddUserController
 */
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserController() {
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
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String firstname=request.getParameter("firstName").toString();
		String lastname=request.getParameter("lastName").toString();
		String username=request.getParameter("userName").toString();
		String email=request.getParameter("emailId").toString();
		String password=request.getParameter("password").toString();
		String dob=request.getParameter("dob").toString();
		String address=request.getParameter("address").toString();
		String membershipType=request.getParameter("membershipType").toString();
		
		UserSignUp userSignup = new UserSignUp();
		InsertDataDAOImpl impl = new InsertDataDAOImpl();
		userSignup.setFirstName(firstname);
		userSignup.setLastName(lastname);
		userSignup.setUsername(username);
		userSignup.setEmail(email);
		userSignup.setPassword(password);
		userSignup.setDob(dob);
		userSignup.setAddress(address);
		userSignup.setMembershipType(membershipType);
		
		int status=impl.addUser(userSignup);
		if(status>0){
			out.print("<p>Record saved successfully!</p>");
			request.getRequestDispatcher("userSignIn.jsp").include(request, response);
		}else{
			out.println("Sorry! unable to save record");
		}
		
	}

}
