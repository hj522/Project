package client.controller;

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

@WebServlet(value="/managerInfoCl.do")
public class ListClientController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IClientService clService = ClientServiceImpl.getInstance();
		
		List<ClientVO> clList = clService.getAllClientList();
		
		req.setAttribute("clList", clList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/managerInfoCl.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);

	}

}
