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
@WebServlet("/dat1.do")
public class Dat1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static int dat1 = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dat1Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dat1 = Integer.parseInt(request.getParameter("dat1"));
		 int dat2 = Dat2Controller.dat2;

	     ProjectFindService pfService = ProjectFindService.getInstance();
	     HashMap<String, Integer> map = new HashMap<String, Integer>();
	     
	     map.put("dat1", dat1);
	     map.put("dat2", dat2);
	     Gson gson = new Gson();

	    	 List<ProjectFindVO> list2 = pfService.checkDat(map);	    	 
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
