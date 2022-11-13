package inquery.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquery.service.IInqueryService;
import inquery.service.InqueryServiceImpl;
import inquery.vo.InqueryVO;

@WebServlet(value = "/mypageInqueryP.do")
public class ListInqueryPtController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String partId = (String) session.getAttribute("loginIdP");
		
		List<InqueryVO> inList = new ArrayList<InqueryVO>();
		
//		System.out.println("아이디:"+partId);
		if(partId == null) {
			inList = inService.getAllInqueryList();
		} else {
			inList = inService.getMyInqueryP(partId);
		}
		
		req.setAttribute("inList", inList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/mypageInqueryP.jsp");
		
		dispatcher.forward(req, resp);
		
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
