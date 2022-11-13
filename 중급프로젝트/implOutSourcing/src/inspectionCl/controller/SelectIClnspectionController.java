package inspectionCl.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inspection.service.ISelectInspectionService;
import inspection.service.SelectInspectionServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/inspectionCl.do")
public class SelectIClnspectionController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ISelectInspectionService insService = SelectInspectionServiceImpl.getInstance();
		
		ProjectInsertVO pvo = new ProjectInsertVO();
		String clId = (String) req.getParameter("clId");
		pvo.setClId(clId);
		
		List<ProjectInsertVO> pjList = insService.getAllSelectInspectionCl(pvo);
		req.setAttribute("pjList", pjList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/inspectionCl.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
