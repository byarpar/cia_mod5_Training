package Utility;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MyMail {

	public static void sendMail(String username, String password, String to, String sub, String detail) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");

		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.debug", "true");
		props.put("mail.smtp.sockfactory.fallback", "false");

		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		};

		Session session = Session.getDefaultInstance(props, auth);

		try {
			MimeMessage message = new MimeMessage(session);
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			message.setSubject(sub);
			message.setText(detail);
			

			// send message
			Transport.send(message);

			System.out.println("Sent successfully");

		} catch (Exception e) {
			System.out.println("Mail Exception occur ...");
			throw new RuntimeException(e);
		}
	}
}