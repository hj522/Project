package inquery.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;
import inquery.vo.InqueryVO;
import reply.service.IReplyService;
import reply.service.ReplyServiceImpl;
import reply.vo.ReplyVO;

@WebServlet("/inqDetail.do")
public class DetailInqueryController extends HttpServlet {	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int inNum = Integer.parseInt(req.getParameter("inNum"));
		System.out.println(inNum);
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		IReplyService reService = ReplyServiceImpl.getInstance();
		
		InqueryVO iv = inService.getInquery(inNum);
		ReplyVO rvo = reService.getSelectOne(inNum);
		
		req.setAttribute("iv", iv);
		req.setAttribute("rvo", rvo);
		
		RequestDispatcher rd = req.getRequestDispatcher("/managerInqDetail.jsp");
		rd.forward(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
}

