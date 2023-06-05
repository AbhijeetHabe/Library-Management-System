package com.librarymanagement.daoImpl;

import java.sql.*;

import com.librarymanagement.connection.DbConnection;
import com.librarymanagement.dao.UserDao;
import com.librarymanagement.pojo.User;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean addNewUser(User user) {
		try (Connection con = DbConnection.getDbConnection()){
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO"
					+ " userdata VALUES(?,?,?,?,?,?,?,?)");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getName());
			pst.setString(3, user.getEmail());
			pst.setInt(4, user.getContact_no());
			pst.setString(5, user.getPassword());
			pst.setString(6, user.getAddress());
			pst.setString(7, user.getCity());
			pst.setString(8, user.getMembership());
			
			int count = pst.executeUpdate();
			
			if(count > 0)
				return true;
			else
				return false;
			
		} catch (NullPointerException e) {
			System.out.println("connection with database is not"
					+ " available");
			return false;
		}
		catch(SQLException exc) {
			exc.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkUserCredentials(User user) {
		try (Connection con = DbConnection.getDbConnection()){
			
			PreparedStatement pst = con.prepareStatement("SELECT * FROM"
					+ " userdata WHERE username = ? AND password = ?");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst())
				return true;
			else
				return false;
			
		} catch (NullPointerException e) {
			System.out.println("connection with database is not"
					+ " available");
			return false;
		}
		catch(SQLException exc) {
			exc.printStackTrace();
			return false;
		}
	}
}
