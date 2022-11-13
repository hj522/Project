package inspection.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inspection.service.ISelectInspectionService;
import inspection.service.SelectInspectionServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/inspectionComplete2.do")
public class InspectionComplete2Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		ISelectInspectionService insService = SelectInspectionServiceImpl.getInstance();
		
		String pjId = req.getParameter("pjId");
		
		ProjectInsertVO pVO = new ProjectInsertVO();
		pVO.setPjId(pjId);
		int result = insService.UpdateInspectionF(pVO);
		
		req.setAttribute("result", result);
		session.setAttribute("msg", "F");
		
		RequestDispatcher rd = req.getRequestDispatcher("/inspection.do");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
