package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import config.Connect;
import entity.Login;
import entity.Product;

import entity.Users;

public class ProductList {
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	static Connection conn = null;


	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product";
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			ps = connection.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	public static Product getProductByID(String id) {
		String query = "select * from product where id = ?";
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			ps = connection.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4));
			}
		} catch (Exception e) {

		}
		return null;
	}

	public static Product insertProduct(Product product) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection
					.prepareStatement("insert into product (`name`, `price`, `image`) values (?, ?, ?)"); // 3 dau hoi
																										// cham moi
																										// dung, 2
																										// la sai
			statement.setString(1, product.getName());
			statement.setDouble(2, product.getPrice());
			statement.setString(3, product.getImage());

			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

	public static Product updateProduct(Product product) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement(
					"update product" + " set name = ?," + " price = ?," + " image = ?" + " where id = ?");
			System.out.println(statement);
			
			statement.setString(1, product.getName());
			statement.setDouble(2, product.getPrice());
			statement.setString(3, product.getImage());
			statement.setInt(4, product.getId());
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}
//	public static Login findUserNameAndPassword(String username, String password) {
//		Login login = new Login();
//		Connection connection = Connect.openConnect();
//		Statement stmt;
//		try {
//			stmt = connection.createStatement();
//			ResultSet rs = stmt.executeQuery("select username, password from userlog where username ='" + username
//					+ "' and password ='" + password + "'");
//			if (rs.next()) {
//				login = new Login(rs.getInt(1),rs.getString(2), rs.getString(3));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return login;
//	}
//
//	public static Login updateLogin(Users users) {
//		Connection connection = Connect.openConnect();
//		try {
//			PreparedStatement statement = connection
//					.prepareStatement("update Users" + " set Users = `1`" + " where id = ?");
////			statement.setBoolean(1, true);
//			statement.setInt(1, users.getId());
//			statement.execute();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return users;
//	}

	public static Product deleteProductByID(String id) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement("delete from product where id = ?");
			System.out.println(statement);
			statement.setString(1, id);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<Product> searchByName(String txtname) {
		List<Product> list = new ArrayList();
		Connection connection = Connect.openConnect(); // mo ket noi
		try {
			PreparedStatement ps = connection.prepareStatement("select * from product where name like ?");
			ps.setString(1, "%" + txtname + "%");
			System.out.println(ps);

			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	public static Users insertUser(Users users) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection
					.prepareStatement("insert into product(`username`,`password`) values(?,?)");
			statement.setString(1, users.getUsername());
			statement.setString(2, users.getPassword());
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	public static int getAllCount() {
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			PreparedStatement statements = connection.prepareStatement("select count(*) from product");
			rs = statements.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {

		}
		return 0;
	}

	public static List<Product> listCount(int index) {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			PreparedStatement statements = connection.prepareStatement("SELECT * FROM product LIMIT ? OFFSET ?");// limit
																												// giới
																												// hạn
			statements.setInt(1, 6);
			statements.setInt(2, (index - 1) * 6);
			rs = statements.executeQuery();
			System.out.println(rs);
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	public static List<Product> getProduct() {
		List<Product> list = new ArrayList<Product>();
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			PreparedStatement statements = connection.prepareStatement("SELECT * FROM product LIMIT 6 OFFSET 0");
			rs = statements.executeQuery();
			System.out.println(rs);
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
			}
		} catch (Exception e) {

		}
		return list;
	}

//	private void main(String [] args) {
//		ProductList productList = new ProductList();
//		List<Product> list = productList.getAllProduct();
//		for (Product product : list) {
//		System.out.println(product);
//		}
//	}
//	public static Login findUsersnameAndPassword(String username, String password) {
//		Connection connection = Connect.openConnect();
//		Statement stmt;
//		try {
//			stmt = connection.createStatement();
//
//			PreparedStatement statements = connection.prepareStatement(
//					"SELECT `id`,`username`, `password`, `role` FROM login where `username` = ? AND `password` = ? ");
//			statements.setString(1, username);
//			statements.setString(2, password);
//
//			rs = statements.executeQuery();
//
//			if (rs.next()) {
//				System.out.println(rs.getInt(1));
//				return new Login(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4));
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return null;
//
//	}
	public Users findUserNameAndPassword(String username, String password) {
		Users users = new Users();
		Connection connection = Connect.openConnect();
		Statement stmt;
		try {
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select username, password,role from users where username ='" + username
					+ "' and password ='" + password + "'");
			if (rs.next()) {
				users = new Users(rs.getString(1), rs.getString(2), rs.getBoolean(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;

	}
}