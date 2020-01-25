package com.yoga.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.yoga.bean.UserBean;
import com.yoga.util.Utility;

public class UserDao {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public void connect() throws ClassNotFoundException, SQLException
	{
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Yoga", "postgres", "root");
		
		System.out.println("Connection Value :: "+con);
		
		if(con != null)
		{
			System.out.println("DB Connected");
		}
		else
		{
			System.out.println("DB Connection failed");
		}
		
	}
	
	
	public void getUserByEmailId(String emailid)
	{
		
	}
	
	public boolean getUserByUserId(String userid, String password)
	{
		boolean loginCheck = false;
		
		try 
		{
			stmt = con.createStatement();
			String query = "select userid , u_password from userdetail where userid ='"+userid+"'";
			rs = stmt.executeQuery(query);
			int count = rs.getRow();
			System.out.println("row count :: "+count +" | Query :: "+query);
			
			while (rs.next()) 
			{
				if(rs.getString("userid").equals(userid) && rs.getString("u_password").equals(password))
				{
					loginCheck=true;
				}
				else
				{
					loginCheck=false;
				}
				break;
			}
				
			
			return loginCheck;
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally
		{
			Utility.disconnectConnection(con, pstmt, rs, stmt);
		}
		
		return loginCheck;
	}
	
	
	public int saveUser(UserBean user)
	{
		int row = 0;
		
		try 
		{
			pstmt = con.prepareStatement("insert into userdetail(userid,email,u_password) values(?,?,?)");
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			
			row = pstmt.executeUpdate();
			
			if(row == 1)
			{
				System.out.println("New User Successfully Registered!");
			}
			
			return row;
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			Utility.disconnectConnection(con, pstmt, rs, stmt);
		}
		
		return row;
	}
	
}
