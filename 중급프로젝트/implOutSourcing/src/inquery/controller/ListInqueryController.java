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

@WebServlet(value = "/managerInqList.do")
public class ListInqueryController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IInqueryService inService = InqueryServiceImpl.getInstance();
		
		List<InqueryVO> inList = inService.getAllInqueryList();
		req.setAttribute("inList", inList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/managerInqList.jsp");
		
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
