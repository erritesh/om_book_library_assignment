package com.om.book.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.om.book.dao.InsertDataDAOImpl;
import com.om.book.model.NewBook;

/**
 * Servlet implementation class AddBookController
 */

public class AddBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookController() {
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
		String bookName=request.getParameter("bookName");
		String isbn=request.getParameter("isbn");
		String price=request.getParameter("price");
		String authorName=request.getParameter("authorName");
		
		NewBook books=new NewBook();
		InsertDataDAOImpl impl = new InsertDataDAOImpl();
		books.setBookName(bookName);
		books.setIsbn(isbn);
		books.setPrice(price);
		books.setAuthorName(authorName);
		int status=impl.addBook(books);
		if(status>0){
			out.print("<p>Record saved successfully!</p>");
			request.getRequestDispatcher("adminMain.jsp").include(request, response);
		}else{
			out.println("Sorry! unable to save record");
		}
		
		out.close();
	}

}
