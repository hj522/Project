package reply.controller;

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
import reply.service.IReplyService;
import reply.service.ReplyServiceImpl;
import reply.vo.ReplyVO;

@WebServlet("/updateRep.do")
public class UpdateReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int repNum = Integer.parseInt(req.getParameter("repNum"));
		
		IReplyService reService = ReplyServiceImpl.getInstance();
		ReplyVO rv = reService.getReply(repNum);
		
		req.setAttribute("rv", rv);
		req.getRequestDispatcher("/managerReplyUpdate.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int repNum = Integer.parseInt(req.getParameter("repNum"));
		String repCon = req.getParameter("repCon");
		
		IReplyService reService = ReplyServiceImpl.getInstance();
		
		ReplyVO rv = new ReplyVO();
		rv.setRepNum(repNum);
		rv.setRepCon(repCon);
		
		int cnt = reService.modifyReply(rv);
		
		String msg = "";
		
		if(cnt > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/managerInqDetail.do";
		
		resp.sendRedirect(redirectUrl);
				
	}

}
