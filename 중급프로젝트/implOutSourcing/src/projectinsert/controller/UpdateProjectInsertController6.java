package projectinsert.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectinsert.service.IProjectInsertService;
import projectinsert.service.ProjectInsertServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/projectInsert6.do")
public class UpdateProjectInsertController6 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("projectRegister6.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pjPartRd = req.getParameter("launchDate");
		String pjApp = req.getParameter("requirements");
		
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		pfv.setPjPartRd(pjPartRd);
		pfv.setPjApp(pjApp);
		
		
		pjService.modifyProjectInsert6(pfv);
		
		String redirectUrl = req.getContextPath() + "/projectRegister7.jsp";
		
		resp.sendRedirect(redirectUrl);
	}
}
