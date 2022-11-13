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

@WebServlet("/projectInsert5.do")
public class UpdateProjectInsertController5 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("projectRegister5.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pjMm = req.getParameter("preMeetingMethod");
		String pjMc = req.getParameter("meetingCycle");
		String pjClLo = req.getParameter("pjClLo") ;
		String[] split = pjClLo.split(" ");
		pjClLo = split[0] + " > " + split[1];
		
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		pfv.setPjMm(pjMm);
		pfv.setPjMc(pjMc);
		pfv.setPjClLo(pjClLo);

		pjService.modifyProjectInsert5(pfv);
		
		String redirectUrl = req.getContextPath() + "/projectRegister6.jsp";
		
		resp.sendRedirect(redirectUrl);
	}
}
