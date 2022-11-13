package mail;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MailUtil;

@WebServlet("/PwMailCheck")
public class PwMailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cMail2 = req.getParameter("pwMailCk");
		System.out.println("입력된 이메일 확인용: " + cMail2);
		Random random = new Random();
		String pwCode = Integer.toString(random.nextInt(99999));
		
		MailUtil.sendPwMail("kalety@naver.com", "java1234", cMail2, pwCode);
		resp.getWriter().write(pwCode);
		
	}
}
