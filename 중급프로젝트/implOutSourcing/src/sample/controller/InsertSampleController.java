package sample.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample.service.ISampleService;
import sample.service.SampleService;
import sample.vo.SampleVO;

/**
 * Servlet implementation class InsertSampleController
 */
@WebServlet("/sampleinsert.do")
public class InsertSampleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertSampleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/sample.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		ISampleService samService = SampleService.getInstance();
		
		SampleVO samVO = new SampleVO();
		samVO.setId(id);
		samVO.setPw(pw);
		int row = samService.registerSample(samVO);
		
		String redirectURL = request.getContextPath() + "/sample.jsp";
		response.sendRedirect(redirectURL);
	}

}
