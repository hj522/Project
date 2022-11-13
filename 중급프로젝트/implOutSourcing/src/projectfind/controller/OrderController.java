package projectfind.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import projectfind.service.ProjectFindService;
import projectfind.vo.ProjectFindVO;

/**
 * Servlet implementation class ProgCheckedController
 */
@WebServlet("/order.do")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Thread.sleep(750);
		} catch (Exception e) {} 
		String eqs = request.getParameter("eqs");
		 ProjectFindService pfService = ProjectFindService.getInstance();
	     Gson gson = new Gson();
	     if(eqs.equals("")) {
	    	 List<ProjectFindVO> list = pfService.Allprint();	    	 
		     response.getWriter().print(gson.toJson(list));
	     } else if(eqs.equals("0")) {
	    	 List<ProjectFindVO> list = pfService.Allprint();	    	 
		     response.getWriter().print(gson.toJson(list));
	     } else if(eqs.equals("1")) {
	    	 List<ProjectFindVO> list = pfService.AllBud();    	 
		     response.getWriter().print(gson.toJson(list));
	     } else if(eqs.equals("2")) {
	    	 List<ProjectFindVO> list = pfService.AllRegDt();	 
		     response.getWriter().print(gson.toJson(list));
	     }
	     
	    	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
