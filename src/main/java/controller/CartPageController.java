package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MenuItem;

@WebServlet("/Cart")
public class CartPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartPageController() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		List<MenuItem> order = (List<MenuItem>) getServletContext()
	            .getAttribute( "order" );
		request.setAttribute("size", order.size());
		int size = 0;
		double subTotal = 0;
		
		//Getting the quantity of each item in the cart 
		for(int i = 0; i < order.size()-1; i++) {
			for(int j = i+1; j < order.size(); j++) {
				if(order.get(i).getName().equals(order.get(j).getName())) {
					order.get(i).setQuantity(+1);
					order.remove(j);
				}
			}
		}
		//Getting the amount of items in the cart
		for(int i = 0; i < order.size(); i++) {
			size += order.get(i).getQuantity();
		}
		request.setAttribute("size", size);
		
		//Getting the total price of the current order 
		for(int i = 0; i < order.size(); i++) {
			subTotal += order.get(i).getPrice() * order.get(i).getQuantity();
		}
		DecimalFormat df = new DecimalFormat("0.00");
		String tax = df.format(subTotal * .12);
		String total = df.format(subTotal + Double.parseDouble(tax));
		getServletContext().setAttribute( "subtotal", String.valueOf(subTotal) );
		getServletContext().setAttribute( "total", total );
		getServletContext().setAttribute( "tax", tax );
		
		//Formatting total to show as a dollar amount 
		NumberFormat formatter = NumberFormat.getCurrencyInstance();
		String totalString = formatter.format(subTotal);
		request.setAttribute("totalInUSD", totalString);
		
		request.getRequestDispatcher( "/WEB-INF/CartPage.jsp" )
		.forward( request, response );
	}
}
