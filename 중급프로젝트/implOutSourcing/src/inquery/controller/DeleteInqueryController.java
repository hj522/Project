package inquery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;

@WebServlet("/inqDelete.do")
public class DeleteInqueryController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int inNum = Integer.parseInt(req.getParameter("inNum"));
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		int cnt = inService.removeInquery(inNum);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/managerInqList.do";
		
		resp.sendRedirect(redirectUrl);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
