package projectinsert.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectinsert.service.IProjectInsertService;
import projectinsert.service.ProjectInsertServiceImpl;
import projectinsert.vo.ProjectInsertVO;

@WebServlet("/projectInsert.do")
public class InsertProjectInsertController extends HttpServlet{
   
   public InsertProjectInsertController() {
      super();
   }
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.getRequestDispatcher("/projectRegister.jsp").forward(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String pjProg = req.getParameter("rad");
      String id = req.getParameter("id");
      
      IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
      
      ProjectInsertVO pfv = new ProjectInsertVO();
      pfv.setPjProg(pjProg);
      pfv.setClId(id);

      
      int cnt = pjService.registerProjectInsert(pfv);
      
      String redirectURL = req.getContextPath() + "/projectRegister1.jsp";
      
      resp.sendRedirect(redirectURL);
      
   }

}