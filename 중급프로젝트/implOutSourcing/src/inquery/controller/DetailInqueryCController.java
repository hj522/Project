package inquery.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/inqDetailMemC.do")
public class DetailInqueryCController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int inNum = Integer.parseInt(req.getParameter("inNum"));
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		InqueryVO iv = inService.getInquery(inNum);
		
		req.setAttribute("iv", iv);

		IReplyService repService = ReplyServiceImpl.getInstance();
		ReplyVO rv = new ReplyVO();
		
		rv.setInNum(inNum);
		
		// 답글 띄우기
		List<ReplyVO> repList = repService.getRepList(rv);
		System.out.println("list 체크: " + repList);
		
		req.setAttribute("repList", repList);
		
		req.getRequestDispatcher("/mypageInqDetailC.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		super.doPost(req, resp);
	}
}
