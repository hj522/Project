package inquery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;
import inquery.vo.InqueryVO;


@WebServlet("/insertInquery.do")
public class InsertInqueryController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/qna.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inTit = req.getParameter("inTit");
		String inCon = req.getParameter("inCon");
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		InqueryVO iv = new InqueryVO();
		iv.setInTit(inTit);
		iv.setInCon(inCon);
		
		Object obj = req.getSession().getAttribute("loginIdP");
		
		if(obj == null) {
			iv.setClId((String)req.getSession().getAttribute("loginIdC"));
			iv.setPartId("");
		} else {
			iv.setPartId((String)req.getSession().getAttribute("loginIdP"));
			iv.setClId("");
		}
		
		int cnt = inService.RegisterInquery(iv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/qna.jsp";
		
		resp.sendRedirect(redirectUrl);
		
	}
}
