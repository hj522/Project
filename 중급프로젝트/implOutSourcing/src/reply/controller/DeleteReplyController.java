package reply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;
import reply.service.IReplyService;
import reply.service.ReplyServiceImpl;

@WebServlet("/ManagerRepDelete.do")
public class DeleteReplyController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int repNum = Integer.parseInt(req.getParameter("repNum"));
		
		IReplyService reService = ReplyServiceImpl.getInstance();
		
		int cnt = reService.removeReply(repNum);
		
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
