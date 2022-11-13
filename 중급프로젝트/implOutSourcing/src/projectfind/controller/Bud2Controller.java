package projectfind.controller;

import java.io.IOException;
import java.util.HashMap;
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
@WebServlet("/bud2.do")
public class Bud2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static int bud2 = 2147483646;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bud2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bud1 = Bud1Controller.bud1;
		 bud2 = Integer.parseInt(request.getParameter("bud2"));
	     ProjectFindService pfService = ProjectFindService.getInstance();
	     HashMap<String, Integer> map = new HashMap<String, Integer>();
	     map.put("bud1", bud1);
	     map.put("bud2", bud2);
	     Gson gson = new Gson();

	    	 List<ProjectFindVO> list2 = pfService.checkBud(map);	    	 
	    	 response.getWriter().print(gson.toJson(list2));

	    	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
