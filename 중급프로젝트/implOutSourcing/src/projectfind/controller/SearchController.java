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
 * Servlet implementation class SearchController
 */
@WebServlet("/search.do")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
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
		
		
		String select = request.getParameter("select");
		String search1 = request.getParameter("search");
		
		ProjectFindService pfService = ProjectFindService.getInstance();
		
		HashMap<String, String> map = new HashMap<>();
	     
	     map.put("search1", search1);
	     map.put("search2", search1);
	     Gson gson = new Gson();
	     if(select == null) {
	    	 select = "";
	     } else if(select.equals("전체")) {
	    	 List<ProjectFindVO> list2 = pfService.pjSearchAll(map);
	    	 response.getWriter().print(gson.toJson(list2));
	     } else if(select.equals("제목")) {
	    	 List<ProjectFindVO> list2 = pfService.pjSearchTit(search1);
	    	 response.getWriter().print(gson.toJson(list2)); 
	     } else if(select.equals("프로젝트 내용")) {
	    	 List<ProjectFindVO> list2 = pfService.pjSearchWork(search1);
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
