package com.librarymanagement.dao;

import com.librarymanagement.pojo.User;

public interface UserDao {

	boolean addNewUser(User user);
	boolean checkUserCredentials(User user);
}
