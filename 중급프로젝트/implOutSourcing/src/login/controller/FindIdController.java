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
@WebServlet("/idFound.do")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		LoginService login = LoginService.getInstance();
		
		HttpSession session = request.getSession();
		
		LoginVO logVO = new LoginVO();
		logVO.setName(name);
		logVO.setTel(tel);
		String cid = login.cfindId(logVO);
		String pid = login.pfindId(logVO);
		
		try {
			if(cid != null) {
				session.setAttribute("findId", cid);
			}			
		}catch(Exception e) {}
		try {
			if(pid != null) {
				session.setAttribute("findId", pid);
			}
		}catch(Exception e) {}
		
		String redirectURL = request.getContextPath() + "/idFound_pro.jsp";
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
