package com.hcl.devops.service;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class EmailService {

	public static boolean sendEmail(String message, String subject, String to, String from) {
		System.out.println("EmailWebAPiApplication.sendEmail()");
		// get the system properties
		Properties props = System.getProperties();
		System.out.println("Properties " + props);
		// setting important information to properties object
		// set host
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.auth", "true");
		// step1: to get the session object
		// Session
		Session session = Session.getInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, "7054702937");
			}

		});

		session.setDebug(true);
		// step2: compose the message [text, multi-media]
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.setHeader("Name", "Sundram Dubey");
			// from mail 'from'
			msg.setFrom(from);
			// adding recipient to message
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			// Adding subject to message
			msg.setSubject(subject);
			// adding text to message
			msg.setText(message);
			//System.out.println("-".repeat(200));
			System.out.println(msg.getContent());
			//System.out.println("-".repeat(200));
			// send
			// Step3: send the message using transport class
			Transport.send(msg);
			//System.out.println("-".repeat(200));
			System.out.println("message sent successfully....");
			//System.out.println("-".repeat(200));
		} catch (MessagingException | IOException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return true;
	}
}
