package partners.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.service.ClientServiceImpl;
import client.service.IClientService;
import client.vo.ClientVO;
import partners.service.IPartnersService;
import partners.service.PartnersServiceImpl;
import partners.vo.PartnersVO;

@MultipartConfig
@WebServlet("/pinsert.do")
public class SignUpPartnersController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/registerMember.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String partId = req.getParameter("id");
		String partPw = req.getParameter("pw");
		String partNm = req.getParameter("nm");
		String partPh = req.getParameter("ph");
		String partEm = req.getParameter("em");
		String partAddr = req.getParameter("addr");
		
		IPartnersService partService = PartnersServiceImpl.getInstance();
		
		PartnersVO pv = new PartnersVO();
		pv.setPartId(partId);
		pv.setPartPw(partPw);
		pv.setPartNm(partNm);
		pv.setPartPh(partPh);
		pv.setPartEm(partEm);
		pv.setPartAddr(partAddr);
		
		int cnt = partService.SignUpPartners(pv);
		
		String redirectURL = req.getContextPath() + "/login.jsp";
		resp.sendRedirect(redirectURL);
		
	}
}
