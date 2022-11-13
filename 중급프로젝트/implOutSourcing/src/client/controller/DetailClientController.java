package client.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import client.service.ClientServiceImpl;
import client.service.IClientService;
import client.vo.ClientVO;

@WebServlet("/managerInfoClDetail.do")
public class DetailClientController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String clId = req.getParameter("clId");
		
		IClientService clService = ClientServiceImpl.getInstance();
		ClientVO cv = clService.getClient(clId);
		
		req.setAttribute("cv", cv);
		req.getRequestDispatcher("/managerInfoClDetail.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
