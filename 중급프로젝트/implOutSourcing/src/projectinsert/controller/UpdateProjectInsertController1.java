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

@WebServlet("/projectInsert1.do")
public class UpdateProjectInsertController1 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/projectRegister1.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pjTit = req.getParameter("title");
		String pjCat = req.getParameter("cate");
		String pjFi = req.getParameter("fi");
		String pjId = req.getParameter("id");
		
		
		IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
		
		ProjectInsertVO pfv = new ProjectInsertVO();
		
		pfv.setPjTit(pjTit);
		pfv.setPjCat(pjCat);
		pfv.setPjFi(pjFi);
		pfv.setPjId(pjId);
		
		pjService.modifyProjectInsert1(pfv);
		
		String redirectUrl = req.getContextPath() + "/projectRegister2.jsp";
		
		resp.sendRedirect(redirectUrl);
	}

}
