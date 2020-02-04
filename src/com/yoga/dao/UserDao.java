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
	
	
	public int saveSignUpDetail(UserBean user)
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
	
	public int addCompleteUserDetail(UserBean user)
	{
		int row = 0;
		
		try 
		{
			pstmt = con.prepareStatement("update userdetail set firstname = ?, lastname = ?, mobile = ?, address = ?, u_comment = ?, suitable_time = ?, dob =?, gender = ? where userid = ?");
			pstmt.setString(1, user.getFirstname());
			pstmt.setString(2, user.getLastname());
			pstmt.setString(3, user.getMobile());
			pstmt.setString(4, user.getAddress());
			pstmt.setString(5, user.getComment());
			pstmt.setString(6, user.getSuitableTime());
			pstmt.setString(7, user.getDob());
			pstmt.setString(8, user.getGender());
			pstmt.setString(9, user.getUserid());
			
			
			row = pstmt.executeUpdate();
			
			if(row == 1)
			{
				System.out.println("User Successfully Updated!");
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
	
	public UserBean getRegisteredUserData(String userid) throws SQLException
	{
		System.out.println(" getRegisteredUserData ---------------- 1 ");
		String query = "select firstname, lastname, mobile, address, u_comment, suitable_time, dob, gender from userdetail where userid = ?";
		System.out.println(" getRegisteredUserData ---------------- 2 "+query);
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		
		UserBean ub = new UserBean();
		while (rs.next()) {
			
			System.out.println(" getRegisteredUserData ---------------- 3 ");
			ub.setFirstname(rs.getString("firstname"));
			ub.setLastname(rs.getString("lastname"));
			ub.setSuitableTime(rs.getString("suitable_time"));
			ub.setMobile(rs.getString("mobile"));
			ub.setDob(rs.getString("dob"));
			ub.setGender(rs.getString("gender"));
			ub.setAddress(rs.getString("address"));
			ub.setComment(rs.getString("u_comment"));
		}
		return ub;
		
	}
	
}
