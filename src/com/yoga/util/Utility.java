package com.yoga.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Utility {

	public static void disconnectConnection(Connection con, PreparedStatement pstmt, ResultSet rs, Statement stmt)
	{
		try {
			
			if(con != null)
			{
				con.close();
			}
			
			if(pstmt != null)
			{
				pstmt.close();
			}
			
			if(rs != null)
			{
				rs.close();
			}
			
			if(stmt != null)
			{
				stmt.close();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
		
	}
	
}
