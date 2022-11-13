package projectfind.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import projectfind.service.ProjectFindService;
import projectfind.vo.ProjectFindVO;

/**
 * Servlet implementation class ProjectFindController
 */
@WebServlet("/projectFind.do")
public class ProjectFindController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectFindController() {
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
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("loginIdC");
		String id2 = (String) session.getAttribute("loginIdD");
		String id3 = (String) session.getAttribute("loginID");
		
		ProjectFindService pjService = ProjectFindService.getInstance();
		List<ProjectFindVO> pjList = pjService.Allprint();
		request.setAttribute("pjList", pjList);
		RequestDispatcher rd = request.getRequestDispatcher("/projectFind.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
