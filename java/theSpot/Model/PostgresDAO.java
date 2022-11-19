package theSpot.Model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface PostgresDAO extends DAO {
	
	
	//CRUD operations for Menu table
	public List<MenuItem> getAllMenuItems() throws SQLException;
	public MenuItem getMenuItemByID(int id) throws SQLException;
	public void addMenuItem(MenuItem menuItem) throws SQLException;
	public void removeMenuItemByID(int id) throws SQLException;
	public void updateMenuItemByID(int id, String name, String description, double price) throws SQLException;
	
	//CRUD operations for Customer table
	public Customer getCustomerByID(int id) throws SQLException;
	public void addCustomer(Customer customer) throws SQLException;
	public void removeCustomerByID(int id) throws SQLException;
	public void updateCustomerByID(int id) throws SQLException;
	
	/*CRUD operations for Order table. We are not going to be able to 
	delete Orders since there isn't a point in deleting them. 
	*/
	public Order getOrderByID(int id) throws SQLException;
	public void addOrder(Order order) throws SQLException;
	public void updateOrderByID(int id) throws SQLException;
	
	
}
