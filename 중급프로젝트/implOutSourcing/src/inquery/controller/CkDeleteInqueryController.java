package inquery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;
import inquery.vo.InqueryVO;

@WebServlet("/inqDeleteCk.do")
public class CkDeleteInqueryController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String[] inNums = req.getParameterValues("inNum");
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		for(String inNum : inNums) {
			InqueryVO iv = inService.getInquery(Integer.parseInt(inNum));
			int cnt = inService.removeInquery(Integer.parseInt(inNum));
		}
		
		resp.getWriter().write("OK");
	}
}
