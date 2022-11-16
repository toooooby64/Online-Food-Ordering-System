package theSpot.Model;

import java.sql.SQLException;
import java.util.List;

public interface PostgresDAO extends DAO {
	
	
	//CRUD operations for Entree table
	public List<Entree> getAllEntrees() throws SQLException;
	public Entree getEntreeByID(int id) throws SQLException;
	public void addEntree(Entree entree) throws SQLException;
	public void removeEntreeByID(int id) throws SQLException;
	public void updateEntreeByID(int id, String name, String description, double price) throws SQLException;
	
	//CRUD operations for Side table
	public List<Side> getAllSides() throws SQLException;
	public Side getSideByID(int id) throws SQLException;
	public void addSide(Side side) throws SQLException;
	public void removeSideByID(int id) throws SQLException;
	public void updateSideByID(int id, String name, String description, double price) throws SQLException;
	
	//CRUD operations for Drink table
	public List<Drink> getAllDrinks() throws SQLException;
	public Drink getDrinkByID(int id) throws SQLException;
	public void addDrink(Drink drink) throws SQLException;
	public void removeDrinkByID(int id) throws SQLException;
	public void updateDrinkByID(int id, String name, String description, double price) throws SQLException;
	
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
