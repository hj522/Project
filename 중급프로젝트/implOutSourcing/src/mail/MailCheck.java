package mail;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MailUtil;


@WebServlet("/MailCheck")
public class MailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cMail = request.getParameter("MailCk");
//		System.out.println("고객이 입력한 이메일:"+cMail);
		Random random = new Random();
		String fst = Integer.toString(random.nextInt(9));
		String fend = Integer.toString(random.nextInt(9));
		String code = fst + fend;
	
		MailUtil.sendMail("kalety@naver.com", "java1234", cMail, code);
		response.getWriter().write(code);  // 아작스 요청에 응답
	}
 
}
