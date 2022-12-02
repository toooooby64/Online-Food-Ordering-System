package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paypal.base.rest.PayPalRESTException;

import model.PaymentServices;
import model.MenuItem;
import model.OrderDetail;

/**
 * Servlet implementation class CheckoutController
 */
@WebServlet("/CheckoutController")
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MenuItem> order = (List<MenuItem>) getServletContext().getAttribute( "order" );
	    DecimalFormat df = new DecimalFormat("0.00");
		double subTotal = 0;
		
		for(MenuItem item : order) {
			subTotal += item.getPrice();
		}
		String tax = df.format(subTotal * .12);
		String total = df.format(subTotal + Double.parseDouble(tax));
		getServletContext().setAttribute( "subtotal", String.valueOf(subTotal) );
		getServletContext().setAttribute( "total", total );
		getServletContext().setAttribute( "tax", tax );
 		request.getRequestDispatcher( "/WEB-INF/Checkout.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tax = (String) getServletContext().getAttribute( "tax" );
		String total = (String) getServletContext().getAttribute( "total" );
		String subTotal = (String) getServletContext().getAttribute( "subtotal" );
		OrderDetail orderDetail = new OrderDetail("Your Order", subTotal, tax, total);

		 try {
	            PaymentServices paymentServices = new PaymentServices();
	            String approvalLink = paymentServices.authorizePayment(orderDetail);
	 
	            response.sendRedirect(approvalLink);
	             
	        } catch (PayPalRESTException ex) {
	            request.setAttribute("errorMessage", ex.getMessage());
	            ex.printStackTrace();
	            request.getRequestDispatcher("error.jsp").forward(request, response);
	        }
	}

}
