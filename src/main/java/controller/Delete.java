package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MenuItem;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Delete() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		@SuppressWarnings("unchecked")
		List<MenuItem> order = (List<MenuItem>) getServletContext()
	            .getAttribute( "order" );	
		String itemName = request.getParameter("itemName");
		
		//Deleting item from cart 
		for(int i = 0; i < order.size(); i++) {
			if(order.get(i).getName().equals(itemName)) {
					order.remove(i);
			}
		}
		
		response.sendRedirect("Cart");	
	}

}
