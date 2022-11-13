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

@WebServlet("/projectInsert2.do")
public class UpdateProjectInsertController2 extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.getRequestDispatcher("projectRegister2.jsp").forward(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      String pjClass = req.getParameter("class");
      String pjPlan = req.getParameter("plan");
      String pjDeplan = req.getParameter("deplan");
      
      IProjectInsertService pjService = ProjectInsertServiceImpl.getInstance();
      
      ProjectInsertVO pfv = new ProjectInsertVO();
      
      pfv.setPjClass(pjClass);
      pfv.setPjPlan(pjPlan);
      pfv.setPjDeplan(pjDeplan);
      
      pjService.modifyProjectInsert2(pfv);

      String redirectUrl = req.getContextPath() + "/projectRegister3.jsp";
      
      resp.sendRedirect(redirectUrl);
   }
}