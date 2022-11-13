//package inspectionCl.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import inspectionCl.service.ISelectInspectionClService;
//import inspectionCl.service.SelectInspectionClServiceImpl;
//import projectinsert.vo.ProjectInsertVO;
//
//@WebServlet("/inspectionCl.do")
//public class SelectInspectionControllerCl extends HttpServlet {
//	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		ISelectInspectionClService insService = SelectInspectionClServiceImpl.getInstance();
//		
//		List<ProjectInsertVO> pro2 = insService.getAllSelectInspectionCl();
//		req.setAttribute("pjList", pro2);
//		
//		RequestDispatcher rd = req.getRequestDispatcher("/");
//		rd.forward(req, resp);
//	}
//	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//	}
//}
