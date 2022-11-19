package theSpot;

import java.util.HashMap;

import theSpot.Model.Order;
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
		
		Order order = new Order(1);
		HashMap <Integer, Integer> map = new HashMap<>();
		map.put(3, 2);
		map.put(2, 1);
		map.put(6, 15);
		order.setItemsInCart(map);
		dao.addOrder(order);
		dao.close();
		
	}
}


