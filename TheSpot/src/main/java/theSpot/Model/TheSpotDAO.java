package theSpot.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class TheSpotDAO implements PostgresDAO{
	
	private Connection connection;
	private final String url = "jdbc:postgresql://localhost/The_Spot";
	private final String user = "postgres";
	private final String password = "1973";

	@Override
	public void connect() throws Exception {
        try {
        	connection = DriverManager.getConnection(url, user, password);
            System.out.println("Successfully connected to The Spot's database");
        } catch (SQLException e) {
            System.out.println("Failed to connect to The Spot's database");
        }
	}

	@Override
	public void close() throws Exception {
		connection.close();
		System.out.println("Connection to server is closed.");		
	}
	
	
	//The following are the CRUD operations for the Entrees table
	@Override
	public List<MenuItem> getAllMenuItems() throws SQLException {
		String sql = "SELECT * FROM menu";

		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<MenuItem> items = new ArrayList<>();
		while (rs.next()) {
			MenuItem item = new MenuItem();
			item.setId(rs.getInt(1));
			item.setName(rs.getString(2));
			item.setDescription(rs.getString(3));
			item.setPrice(rs.getDouble(4));
			item.setImage(rs.getString(5));
			
			items.add(item);
		}
		return items;
	}

	@Override
	public MenuItem getMenuItemByID(int id) throws SQLException {
		String sql = "SELECT * FROM menu WHERE id = (?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		MenuItem item = new MenuItem();
		if (rs.next()) {
			item.setId(rs.getInt(1));
			item.setName(rs.getString(2));
			item.setDescription(rs.getString(3));
			item.setPrice(rs.getDouble(4));
		}
		return item;
	}
	
	@Override
	public void addMenuItem(MenuItem entree) throws SQLException {
		String sql = "INSERT INTO menu (name, description, price) VALUES (?,?,CAST(? as Numeric))";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, entree.getName());
		ps.setString(2, entree.getDescription());
		ps.setDouble(3, entree.getPrice());
		ps.executeUpdate();
		System.out.println("You have succefully added a entree to the database.");
 	}
	
	@Override
	public void updateMenuItemByID(int id, String name, String description, double price) throws SQLException {
		String sql = "UPDATE menu SET name = (?), description = (?), price = CAST(? as Numeric) WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, description);
		ps.setDouble(3, price);
		ps.setInt(4, id);
		ps.executeUpdate();
		System.out.println("You have succefully updated a entree with id: " + id + " to the database.");
		
	}
	
	@Override
	public void removeMenuItemByID(int id) throws SQLException {
		String sql = "DELETE FROM entrees WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		System.out.println("You have succefully deleted a entree with id: " + id + " from the database.");

	}

	@Override
	public Customer getCustomerByID(int id) throws SQLException {
		String sql = "SELECT * FROM users WHERE user_id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Customer customer = new Customer();
		while (rs.next()) {
			customer.setId(rs.getInt("user_id"));
			customer.setName(rs.getString("full_name"));
			customer.setEmail(rs.getString("email"));
			customer.setPassword(rs.getString("password"));
			customer.setType(rs.getString("type"));
			
			}
		return customer;	
	}
	
	@Override
	public void addCustomer(Customer customer) throws SQLException {
		String sql = "INSERT INTO users (full_name, email, password, type) VALUES (?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, customer.getName());
		ps.setString(2, customer.getEmail());
		ps.setString(3, customer.getPassword());
		ps.setString(4, customer.getType());
		ps.executeUpdate();
		System.out.println("You have succefully added a user to the database.");			
	}

	@Override
	public void removeCustomerByID(int id) throws SQLException {
		String sql = "DELETE FROM users WHERE user_id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		System.out.println("You have succefully deleted a user with id: " + id + " from the database.");				
	}

	@Override
	public void updateCustomerByID(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Order getOrderByID(int id) throws SQLException {
		String sql = "SELECT * FROM orders WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Order order = new Order();
		while (rs.next()) {
			order.setId(rs.getInt("id"));
			order.setUserID(rs.getInt("user_id"));
			order.setStatus(rs.getString("status"));
			order.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());
			
			}
		return order;	
	}
	
	
	
	
	@Override
	public void addOrder(Order order) throws SQLException {
		String orderSql = "INSERT INTO orders (user_id, status, created_at) VALUES (?,?,?)";
		PreparedStatement ps = connection.prepareStatement(orderSql, Statement.RETURN_GENERATED_KEYS);
		ps.setInt(1, order.getUser_id());
		ps.setString(2, order.getStatus());
		Timestamp timestamp = Timestamp.valueOf(order.getCreatedAt());
		ps.setTimestamp(3, timestamp);
		ps.executeUpdate();
		addOrderItems(ps,order);
		}
	
	private void addOrderItems(PreparedStatement ps, Order order) throws SQLException {
		ResultSet generatedKey = ps.getGeneratedKeys();
		String orderItemSQL = "INSERT INTO order_items (order_id,menu_id,quantity) VALUES (?,?,?) ";
		PreparedStatement orderItemPS = connection.prepareStatement(orderItemSQL);
		HashMap<Integer,Integer> items = order.getItemsInCart();
		
		int orderID = -1;
		if(generatedKey.next()) {
			
			orderID = ps.getGeneratedKeys().getInt(1);
			System.out.println(orderID);
		}

		for (int itemID : items.keySet()) {
			System.out.println(orderID);
			System.out.println(itemID);
			System.out.println(items.get(itemID));
			orderItemPS.setInt(1, orderID);
			orderItemPS.setInt(2, itemID);
			orderItemPS.setInt(3, items.get(itemID));
			orderItemPS.executeUpdate();
		}
		
		System.out.println("You have succefully added a order to the database.");		
	}

	@Override
	public void updateOrderByID(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}




}
