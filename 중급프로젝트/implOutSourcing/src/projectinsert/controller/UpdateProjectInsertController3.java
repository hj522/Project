package projectinsert.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectinsert.service.IProjectInsertService;
import projectinsert.service.ProjectInsertServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/projectInsert3.do")
public class UpdateProjectInsertController3 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("projectRegister3.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pjWork = req.getParameter("dework");
		String pjRel = req.getParameter("rel");
		
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		pfv.setPjWork(pjWork);
		pfv.setPjRel(pjRel);
		
		pjService.modifyProjectInsert3(pfv);
		
		String redirectUrl = req.getContextPath() + "/projectRegister4.jsp";
		
		resp.sendRedirect(redirectUrl);
	}
}
