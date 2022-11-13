package inspection.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/inspectionView.do")
public class ViewInspectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ViewInspectionController() {
        super();
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ISelectInspectionService insService = SelectInspectionServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("loginID");
		
		String pjId = req.getParameter("pjId");
		
		ProjectInsertVO pVO = new ProjectInsertVO();
		pVO.setPjId(pjId);
		
		pVO = insService.getSelectInspection(pVO);
		req.setAttribute("pVO", pVO);		
		
		RequestDispatcher rd = req.getRequestDispatcher("/preview.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
}
