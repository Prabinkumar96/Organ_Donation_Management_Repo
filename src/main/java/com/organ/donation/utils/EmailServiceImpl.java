package com.organ.donation.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	private JavaMailSender javaMail;

	@Override
	public void sendEmail(String to, String sub, String msg) {
		
		SimpleMailMessage mailMsg= new SimpleMailMessage();
		mailMsg.setTo(to);
		mailMsg.setSubject(sub);
		mailMsg.setText(msg);
		
		javaMail.send(mailMsg);
		
	}

}
