package theSpot;

import theSpot.Model.Customer;
import theSpot.Model.Drink;
import theSpot.Model.Entree;
import theSpot.Model.Order;
import theSpot.Model.Side;
import theSpot.Model.TheSpotDAO;

public class Test {

	public static void main(String[] args) throws Exception {
		
		TheSpotDAO dao = new TheSpotDAO();
		try {
			dao.connect();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(dao.getOrderByID(1));
		
		dao.close();
		
	}
}


