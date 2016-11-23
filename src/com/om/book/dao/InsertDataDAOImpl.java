package com.om.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.om.book.model.NewBook;
import com.om.book.model.UserSignUp;
import com.om.book.util.DBUtil;


public class InsertDataDAOImpl implements InsertDataDAO {
	private Connection conn;
	public int status=0;
	public int book_id;
	public int user_id;
	public String flag = "Active";
	
	public InsertDataDAOImpl(){
		 conn = DBUtil.getConnection();
		 System.out.println("DB Connection done");
	}
	@Override
	public int addBook(NewBook books) {
		// TODO Auto-generated method stub
		
		for(book_id=2;book_id<100;book_id++){
			
		}
		
		try{
			 String query = "insert into book(book_Id,book_name,isbn,price,author_name,flag) values (?,?,?,?,?,?)";
			 PreparedStatement preparedStatement = conn.prepareStatement( query );
			 preparedStatement.setInt(1,book_id);
			 preparedStatement.setString(2,books.getBookName());
			 preparedStatement.setString(3,books.getIsbn());
			 preparedStatement.setString(4,books.getPrice());
			 preparedStatement.setString(5,books.getAuthorName());
			 preparedStatement.setString(6,flag);
		
			
			status=preparedStatement.executeUpdate();
			
			conn.close();
		}catch(Exception ex){
			ex.printStackTrace();
			}
		return status;
		
	}
	@Override
	public int addUser(UserSignUp newUser) {
		// TODO Auto-generated method stub
		for(user_id=2; user_id <100;user_id++){
		}
		try{
			 String query = "insert into REGISTRED_USER(USER_ID,FIRSTNAME,LASTNAME,USERNAME,EMAILID,PASSWORD,DOB,ADDRESS,MEMBERSHIP_TYPE,FLAG) values (?,?,?,?,?,?,?,?,?,?)";
			 PreparedStatement preparedStatement = conn.prepareStatement( query );
			 preparedStatement.setInt(1,user_id);
			 preparedStatement.setString(2,newUser.getFirstName());
			 preparedStatement.setString(3,newUser.getLastName());
			 preparedStatement.setString(4,newUser.getUsername());
			 preparedStatement.setString(5,newUser.getEmail());
			 preparedStatement.setString(6,newUser.getPassword());
			 preparedStatement.setString(7,newUser.getDob());
			 preparedStatement.setString(8,newUser.getAddress());
			 preparedStatement.setString(9,newUser.getMembershipType());
			 preparedStatement.setString(10,flag);
			 
			 status=preparedStatement.executeUpdate();
			// conn.close();
			 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	@Override
	public int signIn(UserSignUp signIn) {
		// TODO Auto-generated method stub
		 String username = signIn.getUsername();    
	      String password = signIn.getPassword();   
		try{
			String query =
		            "select * from REGISTRED_USER where username='"
		                     + username
		                     + "' AND password='"
		                     + password
		                     + "'";
			 PreparedStatement preparedStatement = conn.prepareStatement( query ); 
			 status=preparedStatement.executeUpdate();
			
			 
		   System.out.println("Your user name is " + username);          
		   System.out.println("Your password is " + password);
		   System.out.println("Query: "+query);
		 
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return status;
	}
	@Override
	public UserSignUp getUserById(int userId) {
		// TODO Auto-generated method stub
		UserSignUp user = new UserSignUp();
		try {
            String query = "select * from REGISTRED_USER where USER_ID=?";
            PreparedStatement preparedStatement = conn.prepareStatement( query );
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while( resultSet.next() ) {
            	user.setuId( resultSet.getInt( "USER_ID" ) );
            	user.setFirstName( resultSet.getString( "FIRSTNAME" ) );
            	user.setLastName( resultSet.getString( "LASTNAME" ) );
            	user.setUsername(resultSet.getString("USERNAME"));
            	user.setEmail(resultSet.getString("EMAILID"));
            	user.setPassword(resultSet.getString("PASSWORD"));
            	user.setDob(resultSet.getString("DOB"));
            	user.setAddress(resultSet.getString("ADDRESS"));
            	user.setMembershipType(resultSet.getString("MEMBERSHIP_TYPE"));
               
            }
           
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
	}
	@Override
	public int userDelete(int userId) {
		// TODO Auto-generated method stub
			int status=0;
			try{
				PreparedStatement ps=conn.prepareStatement("delete from REGISTRED_USER where USER_ID=?");
				ps.setInt(1,userId);
				status=ps.executeUpdate();
			}catch(Exception e){e.printStackTrace();}
			
			return status;
		}
}
	

