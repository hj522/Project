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
@WebServlet("/cate.do")
public class CateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CateController() {
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
		String cate = request.getParameter("cate");
	     ProjectFindService pfService = ProjectFindService.getInstance();
	     Gson gson = new Gson();
	     if(cate.equals("")) {
	    	 List<ProjectFindVO> pjlist = pfService.Allprint();
	    	 response.getWriter().print(gson.toJson(pjlist));
	     } else {
	    	 List<ProjectFindVO> list2 = pfService.checkCate(cate);	    	 
	    	 response.getWriter().print(gson.toJson(list2));
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
