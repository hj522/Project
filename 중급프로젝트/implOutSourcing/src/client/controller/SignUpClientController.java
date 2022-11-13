package client.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import client.service.ClientServiceImpl;
import client.service.IClientService;
import client.vo.ClientVO;

@MultipartConfig
@WebServlet("/cinsert.do")
public class SignUpClientController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/registerMember.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String clId = req.getParameter("id");
		String clPw = req.getParameter("pw");
		String clNm = req.getParameter("nm");
		String clPh = req.getParameter("ph");
		String clEm = req.getParameter("em");
		String clAddr = req.getParameter("addr");
		
		IClientService clService = ClientServiceImpl.getInstance();
		
		ClientVO cv = new ClientVO();
		cv.setClId(clId);
		cv.setClPw(clPw);
		cv.setClNm(clNm);
		cv.setClPh(clPh);
		cv.setClEm(clEm);
		cv.setClAddr(clAddr);
		
		int cnt = clService.SignUpClient(cv);
		
		String redirectURL = req.getContextPath() + "/login.jsp";
		resp.sendRedirect(redirectURL);


				
//		String msg = "";
//		
//		if(cnt > 0) {
//			// 성공
//			msg = "성공";
//		} else {
//			// 실패
//			msg = "실패";
//		}
//		
//		HttpSession session = req.getSession();
//		session.setAttribute("msg", msg);
	
	}
	
//	public static void naverMailSend() {
//		String host = "smtp.naver.com"; 
//		String user = "kalety@naver.com"; // 발신자 계정(네이버)
//		String password = "java1234"; // 발신자 패스워드
//		
//		// SMTP 서버 정보를 설정
//		Properties props = new Properties();
//		props.put("mail.smtp.host", host);
//		props.put("mail.smtp.port", 587);
//		props.put("mail.smtp.auth", "true");
//		
//		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(user, password);
//			}
//		});
//		
//		// 인증번호용 6자리 난수
//		Random random = new Random();
//		int checkNum = random.nextInt(888888) + 111111;
//		
//		try {
//			MimeMessage message = new MimeMessage(session);
//			message.setFrom(new InternetAddress(user));
//			message.addRecipient(Message.RecipientType.TO, new InternetAddress(ClientVO.getClId()));
//			
//			// 메일 제목
//			message.setSubject("imp! 회원가입을 위한 인증 번호 발송");
//			
//			// 메일 내용
//			message.setText("귀하의 이메일 인증번호는 " + checkNum + " 입니다.");
//			
//			// 메일 보내기
//			Transport.send(message);
//			System.out.println("메일 전송 성공");
//			
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		}
//	}
//	
}

