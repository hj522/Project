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

@WebServlet("/projectInsert7.do")
public class UpdateProjectInsertController7 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("projectRegister7.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pjManSi = req.getParameter("man");
		String pjManCom = req.getParameter("fi");
		String pjManaEx = req.getParameter("requ");
		String pjPrif = req.getParameter("selectBox1");
		String pjPris = req.getParameter("selectBox2");
		String pjPrit = req.getParameter("selectBox3");
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		pfv.setPjManSi(pjManSi);
		pfv.setPjManCom(pjManCom);
		pfv.setPjManaEx(pjManaEx);
		pfv.setPjPrif(pjPrif);
		pfv.setPjPris(pjPris);
		pfv.setPjPrit(pjPrit);
		
		pjService.modifyProjectInsert7(pfv);
		
		pjService.updateIng();
		
		
		String redirectUrl = req.getContextPath() + "/";
		
		resp.sendRedirect(redirectUrl);
	}
}
