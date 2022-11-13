package notification.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flexjson.JSONSerializer;
import notification.service.INotificationService;
import notification.service.NotificationServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/selectInspecNotification.do")
public class selectInspecNotificationController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public selectInspecNotificationController() {
		super();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/message.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String clId = req.getParameter("clId");
		
		INotificationService notiService = NotificationServiceImpl.getInstance();
		
		ProjectInsertVO pv = new ProjectInsertVO();
		pv.setClId(clId);
		
		List<ProjectInsertVO> inspecNotilist= notiService.selectInspecNotification(pv);
		req.setAttribute("inspecNotilist", inspecNotilist);
		
		// json 타입으로 parse
		JSONSerializer jsn = new JSONSerializer();
		resp.getWriter().print(jsn.serialize(inspecNotilist));
		
	}
}
