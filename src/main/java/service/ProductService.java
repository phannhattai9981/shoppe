package service;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import config.Connect;
import entity.Login;
import entity.Product;



public class ProductService {
//	public static Product findProductById(int id) {
//		Product product = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		
//		String query = "select * from users where id = ?";
//		try {
//			Connection connection = Connect.openConnect(); 
//			ps = connection.prepareStatement(query);
//			ps.setLong(1, id);
//			rs = ps.executeQuery(); 
//			while(rs.next()) {
//				return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4));
//			}
//		} catch (Exception e) {
//			
//		}
//		return product;		
//	}
//}

//	public static Login findUsersnameAndPassword(String username, String password ) {
//		Login login = null;
//		Connection connection = Connect.openConnect();
//		Statement stmt;
//		try {
//			stmt = connection.createStatement();
//			ResultSet rs = stmt.executeQuery("select *from users ");
//			
//			if(rs.next()) {
//				
//				user = new User(rs.getInt(1),rs.getString(2),rs.getString(3));
//				
//			}
//			
//		}catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return user;
//		
//	}
	

}
