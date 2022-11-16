package theSpot.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
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
	public List<Entree> getAllEntrees() throws SQLException {
		String sql = "SELECT * FROM entrees";

		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Entree> entrees = new ArrayList<>();
		while (rs.next()) {
			Entree entree = new Entree();
			entree.setId(rs.getInt(1));
			entree.setName(rs.getString(2));
			entree.setDescription(rs.getString(3));
			entree.setPrice(rs.getDouble(4));
			
			entrees.add(entree);
		}
		return entrees;
	}

	@Override
	public Entree getEntreeByID(int id) throws SQLException {
		String sql = "SELECT * FROM entrees WHERE id = (?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Entree entree = new Entree();
		if (rs.next()) {
			entree.setId(rs.getInt(1));
			entree.setName(rs.getString(2));
			entree.setDescription(rs.getString(3));
			entree.setPrice(rs.getDouble(4));
		}
		return entree;
	}
	
	@Override
	public void addEntree(Entree entree) throws SQLException {
		String sql = "INSERT INTO entrees (name, description, price) VALUES (?,?,CAST(? as Numeric))";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, entree.getName());
		ps.setString(2, entree.getDescription());
		ps.setDouble(3, entree.getPrice());
		ps.executeUpdate();
		System.out.println("You have succefully added a entree to the database.");
 	}
	
	@Override
	public void updateEntreeByID(int id, String name, String description, double price) throws SQLException {
		String sql = "UPDATE entrees SET name = (?), description = (?), price = CAST(? as Numeric) WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, description);
		ps.setDouble(3, price);
		ps.setInt(4, id);
		ps.executeUpdate();
		System.out.println("You have succefully updated a entree with id: " + id + " to the database.");
		
	}
	
	@Override
	public void removeEntreeByID(int id) throws SQLException {
		String sql = "DELETE FROM entrees WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		System.out.println("You have succefully deleted a entree with id: " + id + " from the database.");

	}

	//The following are the CRUD operations for the Sides table
	public List<Side> getAllSides() throws SQLException {
		String sql = "SELECT * FROM sides";

		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Side> sides = new ArrayList<>();
		while (rs.next()) {
			Side side = new Side();
			side.setId(rs.getInt(1));
			side.setName(rs.getString(2));
			side.setDescription(rs.getString(3));
			side.setPrice(rs.getDouble(4));
			
			sides.add(side);
		}
		return sides;
	}
	@Override
	public Side getSideByID(int id) throws SQLException {
		String sql = "SELECT * FROM sides WHERE id = (?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Side side = new Side();
		if (rs.next()) {
			side.setId(rs.getInt(1));
			side.setName(rs.getString(2));
			side.setDescription(rs.getString(3));
			side.setPrice(rs.getDouble(4));
		}
		return side;
	}
	@Override
	public void addSide(Side side) throws SQLException {
		String sql = "INSERT INTO sides (name, description, price) VALUES (?,?,CAST(? as Numeric))";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, side.getName());
		ps.setString(2, side.getDescription());
		ps.setDouble(3, side.getPrice());
		ps.executeUpdate();
		System.out.println("You have succefully added a side to the database.");
	}
	
	@Override
	public void updateSideByID(int id, String name, String description, double price) throws SQLException {
		String sql = "UPDATE sides SET name = (?), description = (?), price = CAST(? as Numeric) WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, description);
		ps.setDouble(3, price);
		ps.setInt(4, id);
		ps.executeUpdate();
		System.out.println("You have succefully updated a side with id: " + id + " to the database.");		
	}
	
	@Override
	public void removeSideByID(int id) throws SQLException {
		String sql = "DELETE FROM sides WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		System.out.println("You have succefully deleted a side with id: " + id + " from the database.");
	}

	//CRUD operations for the Drinks table
	public List<Drink> getAllDrinks() throws SQLException{
		String sql = "SELECT * FROM drinks";

		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Drink> drinks = new ArrayList<>();
		while (rs.next()) {
			Drink drink = new Drink();
			drink.setId(rs.getInt(1));
			drink.setName(rs.getString(2));
			drink.setDescription(rs.getString(3));
			drink.setPrice(rs.getDouble(4));
			
			drinks.add(drink);
		}
		return drinks;
		
	}

	@Override
	public Drink getDrinkByID(int id) throws SQLException {
		String sql = "SELECT * FROM Drinks WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Drink drink = new Drink();
		while (rs.next()) {
			drink.setId(rs.getInt(1));
			drink.setName(rs.getString(2));
			drink.setDescription(rs.getString(3));
			drink.setPrice(rs.getDouble(4));
			
			}
		return drink;	
		}
	
	@Override
	public void addDrink(Drink drink) throws SQLException {
		String sql = "INSERT INTO drinks (name, description, price) VALUES (?,?,CAST(? as Numeric))";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, drink.getName());
		ps.setString(2, drink.getDescription());
		ps.setDouble(3, drink.getPrice());
		ps.executeUpdate();
		System.out.println("You have succefully added a drink to the database.");		
	}

	@Override
	public void removeDrinkByID(int id) throws SQLException {
		String sql = "DELETE FROM drinks WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		System.out.println("You have succefully deleted a drink with id: " + id + " from the database.");		
	}

	@Override
	public void updateDrinkByID(int id, String name, String description, double price) throws SQLException {
		String sql = "UPDATE drinks SET name = (?), description = (?), price = CAST(? as Numeric) WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, description);
		ps.setDouble(3, price);
		ps.setInt(4, id);
		ps.executeUpdate();
		System.out.println("You have succefully updated a side with id: " + id + " to the database.");				
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

	/*
	 Im not sure how we want to go about updating the users data. So I'm not going to implement this yet.
	@Override
	public void updateCustomerByID(int id, String name, String email, String password, String type) {
		String sql = "UPDATE user SET name = (?), description = (?), price = CAST(? as Numeric) WHERE id = (?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, description);
		ps.setDouble(3, price);
		ps.setInt(4, id);
		ps.executeUpdate();
		System.out.println("You have succefully updated a user with id: " + id + " to the database.");		
	}
	*/

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
		String sql = "INSERT INTO orders (user_id, status, created_at) VALUES (?,?,?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, order.getUser_id());
		ps.setString(2, order.getStatus());
		Timestamp timestamp = Timestamp.valueOf(order.getCreatedAt());
		ps.setTimestamp(3, timestamp);
		ps.executeUpdate();
		System.out.println("You have succefully added a order to the database.");		
	}

	@Override
	public void updateOrderByID(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCustomerByID(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}



}
