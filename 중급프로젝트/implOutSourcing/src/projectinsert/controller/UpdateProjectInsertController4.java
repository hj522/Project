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

@WebServlet("/projectInsert4.do")
public class UpdateProjectInsertController4 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("projectRegister4.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pjBud = Integer.parseInt(req.getParameter("budget"));
		String pjSta = req.getParameter("class1");
		int pjProgDt = Integer.parseInt(req.getParameter("projectPlanning"));
		System.out.println(pjBud);
		System.out.println(pjSta);
		System.out.println(pjProgDt);
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		pfv.setPjBud(pjBud);
		pfv.setPjSta(pjSta);
		pfv.setPjProgDt(pjProgDt);
		
		pjService.modifyProjectInsert4(pfv);
		
		String redirectUrl = req.getContextPath() + "/projectRegister5.jsp";
		
		resp.sendRedirect(redirectUrl);
		
	}
}
