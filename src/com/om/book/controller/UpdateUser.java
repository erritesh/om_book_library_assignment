package com.om.book.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.om.book.util.DBUtil;

/**
 * Servlet implementation class UpdateUser
 */
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	    PreparedStatement pst = null;
	    Connection con = null;
	    ResultSet rst = null;
	    String userId = null;
	    String firstName = null;
		String lastName = null;
		String username = null;
		String emailId = null;
		String membershipType = null;
	    int i = 0;

    public UpdateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(true);
        PrintWriter out = response.getWriter();
        
        userId = request.getParameter("txtUId");
        firstName = request.getParameter("txtFirstName");
        lastName = request.getParameter("txtLastName");
        username = request.getParameter("txtUsername");
        emailId = request.getParameter("txtEmailId");
        membershipType = request.getParameter("txtMembershipType");
        
        
        if (userId != null) {
            try {
                con = DBUtil.getConnection();

                String query = "update REGISTRED_USER set FIRSTNAME=?,LASTNAME=?,USERNAME=?,EMAILID=?,PASSWORD=?,DOB=?,ADDRESS=?,MEMBERSHIP_TYPE=? where USER_ID='" + userId + "'";
                pst = con.prepareStatement(query);
                pst.setString(1, firstName);
                pst.setString(2, lastName);
                pst.setString(3, username);
                pst.setString(4, emailId);
                pst.setString(8, membershipType);

                i = pst.executeUpdate();

                if (i > 0) {
                    session.setAttribute("MSG", "Data Updated Successfully.");
                    response.sendRedirect("adminUpdateUser.jsp");
                } else {
                    session.setAttribute("MSG", "Data not Update !");
                    response.sendRedirect("adminUpdateUser.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }


        }   // if

    }

}
