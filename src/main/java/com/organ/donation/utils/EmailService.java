package com.organ.donation.utils;

public interface EmailService {
	public void sendEmail(String to, String sub, String msg);
}
