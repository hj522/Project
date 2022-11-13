package client.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;

@WebServlet("/IdCheckController")
public class IdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IdCheckController() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   	SqlSession sqlSession= MyBatisUtil.getInstance();
	   	
	   	int cnt = sqlSession.selectOne("client.checkClient", req.getParameter("check"));
	   	
	   	if(cnt == 0) {
			resp.getWriter().write("OK");	   		
	   	}else {
			resp.getWriter().write("NG");	   			   		
	   	}
	   	
	}
}
