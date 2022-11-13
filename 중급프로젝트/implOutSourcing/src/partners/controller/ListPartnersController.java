package partners.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.service.ClientServiceImpl;
import client.service.IClientService;
import client.vo.ClientVO;
import partners.service.IPartnersService;
import partners.service.PartnersServiceImpl;
import partners.vo.PartnersVO;

@WebServlet(value="/managerInfoPt.do")
public class ListPartnersController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IPartnersService ptService = PartnersServiceImpl.getInstance();
		
		List<PartnersVO> ptList = ptService.getAllPartnersList();
		
		req.setAttribute("ptList", ptList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/managerInfoPt.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);

	}

}
