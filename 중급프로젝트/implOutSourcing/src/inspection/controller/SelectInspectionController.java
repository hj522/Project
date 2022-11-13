package inspection.controller;

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

@WebServlet("/inspection.do")
public class SelectInspectionController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ISelectInspectionService insService =  SelectInspectionServiceImpl.getInstance();
		
		List<ProjectInsertVO> pro2 = insService.getAllSelectInspection();
		req.setAttribute("pjList", pro2);		
		
		RequestDispatcher rd = req.getRequestDispatcher("/inspection.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
