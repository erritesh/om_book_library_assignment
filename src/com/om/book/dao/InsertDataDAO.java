package com.om.book.dao;

import com.om.book.model.NewBook;
import com.om.book.model.UserSignUp;

public interface InsertDataDAO {
	
	public int addBook( NewBook books );
	
	public int addUser(UserSignUp newUser);
	
	public int signIn(UserSignUp signIn);
	
	 public UserSignUp getUserById( int userId );
	 
	 public  int userDelete(int userId);
	
}
