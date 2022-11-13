package login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.vo.ClientVO;
import login.service.LoginService;
import login.vo.LoginVO;
import partners.vo.PartnersVO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		int cCheck = 0;
		int pCheck = 0;
		int mCheck = 0;
		
		LoginService login = LoginService.getInstance();
		
		HttpSession session = request.getSession();
		
		LoginVO logVO = new LoginVO();
		logVO.setId(id);
		logVO.setPass(pw);
		PartnersVO pInfo = login.pInfo(logVO);
		ClientVO cInfo = login.cInfo(logVO);
		String client = login.cLogin(logVO);
		String partners = login.pLogin(logVO);
		String manager = login.mLogin(logVO);
		
		try {
			if(client.equals(id)) {
				cCheck = 1;
				session.setAttribute("loginIdC", client);
				session.setAttribute("cInfo", cInfo);
			}			
		} catch(Exception e) {}
		
		try {
			if(partners.equals(id)) {
				pCheck = 1;
				session.setAttribute("loginIdP", partners);
				session.setAttribute("pInfo", pInfo);
			}
			
		}catch(Exception e) {}
		
		try {
			if(manager.equals(id)) {
				mCheck = 1;
				session.setAttribute("loginId", manager);
			}
			
		}catch(Exception e) {}
		
		if(cCheck == 1 || pCheck == 1) {
			String redirectURL = request.getContextPath() + "/index.jsp";
			response.sendRedirect(redirectURL);	
			
		} else if(mCheck == 1) {
			String redirectURL = request.getContextPath() + "/managerIndex.jsp";
			response.sendRedirect(redirectURL);	
			
		} else {
			String redirectURL = request.getContextPath() + "/login_pro.jsp";
			response.sendRedirect(redirectURL);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
