package cs3337.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs3337.model.MenuItem;
import cs3337.model.TheSpotDAO;



@WebServlet(urlPatterns = "/MenuController", loadOnStartup = 1)
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MenuController() {
        super();
    }
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
    	
		ArrayList<MenuItem> order = new ArrayList<>();
		
		getServletContext().setAttribute( "order", order );
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TheSpotDAO dao = new TheSpotDAO();
		
		try {
			dao.connect();
			request.setAttribute("menuItems", dao.getAllMenuItems());
			dao.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher( "/WEB-INF/Menu.jsp" )
		.forward( request, response );
	}


	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String menuName = request.getParameter("menuName");
		String menuDescription = request.getParameter("menuDescription");
		String menuPrice = request.getParameter("menuPrice");
		MenuItem item = new MenuItem(menuName, menuDescription, Double.parseDouble(menuPrice));
		List<MenuItem> order = (List<MenuItem>) getServletContext()
	            .getAttribute( "order" );
		order.add(item);
		doGet( request, response );
	}

}
