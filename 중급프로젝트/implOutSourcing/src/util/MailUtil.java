package util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

public class MailUtil {
	
	// 회원가입용 인증 메일 발송
	public static void sendMail(String _email, String _password, String _cMail, String _code) {
	    System.out.println("Start Mail API Test!");

	    String subject = "임플 회원가입을 위한 인증번호 발송";
	    String fromMail = "kalety@naver.com";
	    String fromName = "(주)imp!";
	    String toMail = _cMail; // 입력받은 회원 이메일 주소

	    // 메일 내용
	    StringBuffer contents = new StringBuffer();
	    contents.append("<h1>imp! 회원가입 인증번호는 '" + _code +"' 입니다. </h1>\n");

	    // mail properties
	    Properties props = new Properties();
	    props.put("mail.smtp.host", "smtp.naver.com"); // 네이버 메일 이용
	    props.put("mail.smtp.port", "465"); // set port
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true"); // use TLS
	    props.put("mail.smtps.ssl.checkserveridentity", "true");
//	    props.put("mail.debug", "true");
	    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    

	    Session mailSession = Session.getInstance(props,
	            new javax.mail.Authenticator() { // set authenticator
	                protected PasswordAuthentication getPasswordAuthentication() {
	                    return new PasswordAuthentication(_email, _password);
	                }
	            });

	    try {
	        MimeMessage message = new MimeMessage(mailSession);

	        message.setFrom(new InternetAddress(fromMail, MimeUtility.encodeText(fromName, "UTF-8", "B"))); // 한글의 경우 encoding 필요
	        message.setRecipients(
	            Message.RecipientType.TO, 
	            InternetAddress.parse(toMail)
	        );
	        message.setSubject(subject);
	        message.setContent(contents.toString(), "text/html;charset=UTF-8");
	        message.setSentDate(new java.util.Date());

	        Transport t = mailSession.getTransport("smtp");
	        t.connect(_email, _password);
	        t.sendMessage(message, message.getAllRecipients());
	        t.close();

	        System.out.println("*** 메일 발송 완료 ***");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	
	// 비밀번호 찾기용 인증 메일 발송
	public static void sendPwMail(String _email2, String _password2, String _cMail2, String _code2) {
	    System.out.println("Start Mail API Test!");

	    String subject = "임플 비밀번호 찾기를 위한 인증번호 발송";
	    String fromMail = "kalety@naver.com";
	    String fromName = "(주)imp!";
	    String toMail = _cMail2; // 입력받은 회원 이메일 주소

	    // 메일 내용
	    StringBuffer contents = new StringBuffer();
	    contents.append("<h1>imp! 비밀번호 찾기를 위한 인증번호는 '" + _code2 +"' 입니다. </h1>\n");

	    // mail properties
	    Properties props = new Properties();
	    props.put("mail.smtp.host", "smtp.naver.com"); // 네이버 메일 이용
	    props.put("mail.smtp.port", "465"); // set port
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true"); // use TLS
	    props.put("mail.smtps.ssl.checkserveridentity", "true");
	    props.put("mail.debug", "true");
	    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    

	    Session mailSession = Session.getInstance(props,
	            new javax.mail.Authenticator() { // set authenticator
	                protected PasswordAuthentication getPasswordAuthentication() {
	                    return new PasswordAuthentication(_email2, _password2);
	                }
	            });

	    try {
	        MimeMessage message = new MimeMessage(mailSession);

	        message.setFrom(new InternetAddress(fromMail, MimeUtility.encodeText(fromName, "UTF-8", "B"))); // 한글의 경우 encoding 필요
	        message.setRecipients(
	            Message.RecipientType.TO, 
	            InternetAddress.parse(toMail)
	        );
	        message.setSubject(subject);
	        message.setContent(contents.toString(), "text/html;charset=UTF-8");
	        message.setSentDate(new java.util.Date());

	        Transport t = mailSession.getTransport("smtp");
	        t.connect(_email2, _password2);
	        t.sendMessage(message, message.getAllRecipients());
	        t.close();

	        System.out.println("*** 메일 발송 완료 ***");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}
