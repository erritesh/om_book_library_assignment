package com.om.book.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.om.book.dao.InsertDataDAOImpl;

/**
 * Servlet implementation class DeleteUser
 */
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uid=request.getParameter("txtUId");
		int id=Integer.parseInt(uid);
		InsertDataDAOImpl impDataDao = new InsertDataDAOImpl();
		impDataDao.userDelete(id);
		response.sendRedirect("adminManageMembership.jsp");
	}

}
