package inspectionCl.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inspection.service.SelectInspectionServiceImpl;
import inspectionCl.service.ISelectInspectionClService;
import inspectionCl.service.SelectInspectionClServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/inspectionViewCl.do")
public class ViewInspectionControllerCl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ISelectInspectionClService insService = SelectInspectionClServiceImpl.getInstance();
		
		String pjId = req.getParameter("pjId");
		
		ProjectInsertVO pVO = new ProjectInsertVO();
		pVO.setPjId(pjId);
		
		pVO = insService.getSelectInspectionCl(pVO);
		req.setAttribute("pVO", pVO);
		
		RequestDispatcher rd = req.getRequestDispatcher("/");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
