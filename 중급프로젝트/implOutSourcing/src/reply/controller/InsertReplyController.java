package reply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import reply.service.IReplyService;
import reply.service.ReplyServiceImpl;
import reply.vo.ReplyVO;


@MultipartConfig
@WebServlet("/insertReply.do")
public class InsertReplyController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int inNum = Integer.parseInt(req.getParameter("innum"));
		String repCon = req.getParameter("con");
		String manaId = req.getParameter("id");
		
		ReplyVO rv = new ReplyVO();
		
		rv.setInNum(inNum);
		rv.setManaId(manaId);
		rv.setRepCon(repCon);
		
//		System.out.println("rv:" + rv);
		
		IReplyService reService = ReplyServiceImpl.getInstance();
		
		int reply = reService.RegisterReply(rv);

		if(reply > 0) {
			resp.getWriter().write("success");			
		}else {
			resp.getWriter().write("fail");						
		}
		

		
		//System.out.println("reply:" + reply);
		
	//	ReplyVO vo = reService.getSelectOne();
	//	Gson gson = new Gson();
	//	resp.getWriter().print(gson.toJson(vo));
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

	}
}
