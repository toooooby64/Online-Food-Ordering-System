package cs3337.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = "/MenuController", loadOnStartup = 1)
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MenuController() {
        super();

    }
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher( "/WEB-INF/Menu.jsp" )
		.forward( request, response );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

}
