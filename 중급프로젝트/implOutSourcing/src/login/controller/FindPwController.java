package login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.service.LoginService;
import login.vo.LoginVO;

/**
 * Servlet implementation class FindIdController
 */
@WebServlet("/pwFound.do")
public class FindPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		LoginService login = LoginService.getInstance();
		
		HttpSession session = request.getSession();
		
		LoginVO logVO = new LoginVO();
		logVO.setId(id);
		logVO.setEmail(email);
		String cpw = login.cfindPw(logVO);
		String ppw = login.pfindPw(logVO);
		
		try {
			if(cpw != null) {
				session.setAttribute("findPw", cpw);
			}			
		}catch(Exception e) {}
		try {
			if(ppw != null) {
				session.setAttribute("findPw", ppw);
			}
		}catch(Exception e) {}
		
		System.out.println(session.getAttribute("findPw"));
		String redirectURL = request.getContextPath() + "/pwFound_pro.jsp";
		response.sendRedirect(redirectURL);			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
