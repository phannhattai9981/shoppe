package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.Connect;
import entity.Items;
import entity.Orders;
import entity.Product;
import entity.Users;

public class UserActionList {
	static PreparedStatement ps = null;
	static ResultSet rs = null;

	public static Orders inserToCart(Orders order) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement("insert into orders(`userName`, `productID`) values (?,?)");
			statement.setString(1, order.getUserName());
			statement.setInt(2, order.getProductID());
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order;
	}
	
	public static List<Items> getCart(String username) {
		List<Items> item = new ArrayList<Items>();
		try {
			Connection connection = Connect.openConnect(); // mo ket noi
			PreparedStatement statements = connection
					.prepareStatement("SELECT userlog.username, users.id, users.name, users.price, users.image, users.describe FROM userlog INNER JOIN orders ON userlog.username = orders.userName inner join users on orders.productID = users.id having userlog.username = ?");
			statements.setString(1, username);
			rs = statements.executeQuery();
			while (rs.next()) {
				item.add(new Items(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
			}
		} catch (Exception e) {

		}
		return item;
	}
	
	public static Orders deleteOders(String username, String id) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement("delete from orders where userName = ? and productID = ?");
			System.out.println(statement);
			statement.setString(1, username);
			statement.setString(2, id);
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static int oderCount(String id, String username) {
		Connection connection = Connect.openConnect();
		try {
			PreparedStatement statement = connection.prepareStatement("select count(*) from orders where productID = ? and userName = ?");
			System.out.println(statement);
			statement.setString(1, id);
			statement.setString(2, username);
			statement.execute();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {

		}
		return 0;
	}
	
	
}