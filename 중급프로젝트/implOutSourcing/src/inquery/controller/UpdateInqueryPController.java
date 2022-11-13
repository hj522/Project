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

@WebServlet("/updateInqP.do")
public class UpdateInqueryPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int inNum = Integer.parseInt(req.getParameter("inNum"));
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		InqueryVO iv = inService.getInquery(inNum);
		
		req.setAttribute("iv", iv);
		req.getRequestDispatcher("/mypageInqUpdateP.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int inNum = Integer.parseInt(req.getParameter("inNum"));
		String inTit = req.getParameter("inTit");
		String inCon = req.getParameter("inCon");
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		InqueryVO iv = new InqueryVO();
		iv.setInNum(inNum);
		iv.setInTit(inTit);
		iv.setInCon(inCon);
		
		int cnt = inService.modifyInquery(iv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/mypageInqueryP.do";
		
		resp.sendRedirect(redirectUrl);
		
	}

}
