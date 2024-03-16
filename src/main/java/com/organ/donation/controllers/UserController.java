package com.organ.donation.controllers;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.organ.donation.entities.DonateBlood;
import com.organ.donation.entities.DonateOrgan;
import com.organ.donation.entities.RequestBlood;
import com.organ.donation.entities.RequestOrgan;
import com.organ.donation.entities.User;
import com.organ.donation.repositories.DonateBloodRepository;
import com.organ.donation.repositories.DonateOrganRepository;
import com.organ.donation.repositories.RequestBloodRepository;
import com.organ.donation.repositories.RequestOrganRepository;
import com.organ.donation.repositories.UserRepository;
import com.organ.donation.services.UserService;
import com.organ.donation.utils.EmailService;

@Controller
public class UserController {
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	//localhost:8080/homePage
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	
	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}
	
	@RequestMapping("/about")
	public String aboutPage() {
		return "about_page";
	}
	
	@RequestMapping("/contact")
	public String contactPage() {
		return "contact_page";
	}
	
	@RequestMapping("/logout")
	public String logoutPage() {
		return "home";
	}
	
	
	//3.0.0 User Register Page
//===================================================================================================================
	//localhost:8080/homePage/user_reg
	@RequestMapping("/user_reg")
	public String userReg() {
		return "3.0.0 User Register Page";
	}
	//....................................
	@Autowired
	private UserService userSer;
	
	//localhost:8080/user_created
	@RequestMapping("/user_created")
	public String userCreated(User user, Model model) {
		userSer.saveUser(user);
		model.addAttribute("msg", "Successfully User Registered !!!");
		return "home";
	}
	
	//2.0.0 User Login Page
//===================================================================================================================
	
	//localhost:8080/homePage/user_login_page
	@RequestMapping("/user_login_page")
	public String userLoginPage() {
		return "2.0.0 User Login Page";
	}
	//..................................
	
	@Autowired
	private UserRepository userRepo;
	
	@RequestMapping("/user_login")
	public String verifyUserLogin(@RequestParam("email") String email, @RequestParam("password") String password,ModelMap model) {
		User byEmail = userRepo.findByEmail(email);
//		User byPass = userRepo.findByPassword(password);
		
		if(byEmail.getEmail().equals(email) && byEmail.getPassword().equals(password)) {
			model.addAttribute("byEmail", byEmail);
			model.addAttribute("msg", "Successfully User Registered !!!");
			return "2.0.1 User Home";
		}else {
			model.addAttribute("error", "Invalid username/password");
			return "2.0.0 User Login Page";
		}
	}
	
	//==================================FORGET PASSWORD===============================================
	//localhost:8080/homePage/forget_user_password_page
	@RequestMapping("/forget_user_password_page")
	public String forget_user_password_page() {
		return "2.0.0 User Forget Password Page";
	}
	
	@Autowired
	private EmailService emailser;
	
	@RequestMapping("/user_forget_verify_email")
	public String user_forget_verify_email(@RequestParam("email") String email, User user, Model model) {
		
		User byEmail = userRepo.findByEmail(email);
		
		if(byEmail.getEmail().equals(email)==true) {
			
			String pass = byEmail.getPassword();
			
			emailser.sendEmail(email, "ORGAN DONATION MANAGEMENT PASSWORD", "YOUR PASSWORD IS:" + pass);
//			emailser.sendEmail(email, pass);
			
			return "2.0.0 User Login Page";
			
		}else {
			model.addAttribute("msg", "Invalid");
			return "2.0.0 User Forget Password Page";
		}
	}
	
//================================USER MY PROFILE==================================================
	@RequestMapping("/user_my_profile_page")
	public String user_my_profile_page(@RequestParam("email") String email, Model model) {
		User byEmail = userRepo.findByEmail(email);
		model.addAttribute("byEmail", byEmail);
		return "2.0.1 User Profile Page";
	}
//===================================================================================================================
	
	//localhost:8080/homePage/user_request_organ_pagee
	@RequestMapping("/user_request_organ_pagee")
	public String userRequestOrganPage() {
		return "2.0.5 User Request Organ Page";
	}
	
	//
	@Autowired
	private RequestOrganRepository reqOrganRepository;
	
	private String requestOrganId() {
		String reqId = UUID.randomUUID().toString();
		return reqId.substring(reqId.length() - 6);
	}
	
	@RequestMapping("/user_request_organ")
	public String userRequestOrg(RequestOrgan reqOrg, Model model) {
		
		reqOrg.setId(requestOrganId());
		
		reqOrganRepository.save(reqOrg);
		
//		List<RequestOrgan> list = reqOrganRepository.findAll();
//		model.addAttribute("list", list);
		
		return "2.0.1 User Home";
	}
	

//===================================================================================================================
	
	//localhost:8080/homePage/user_my_statuss_page
	@RequestMapping("/user_my_statuss_page")
	public String userMyStatussPage() {
		return "2.0.7 User My Status";
	}
	
	//localhost:8080/homePage/user_my_status_page
	@RequestMapping("/user_my_status_page")
	public String userMyStatusPage(Model model) {
		
		List<RequestOrgan> list = reqOrganRepository.findAll();
		model.addAttribute("list", list);
		
		return "2.0.5 User My Status Table";
	}
//===================================================================================================================
	
	//localhost:8080/homePage/user_donate_organ_page
	@RequestMapping("/user_donate_organ_page")
	public String userDonateOrganPage() {
		return "2.0.2 User Organ Donte Page";
	}
	
	@Autowired
	private DonateOrganRepository donOrgRepo;

	private String genrateDonateId() {
		String donateId = UUID.randomUUID().toString();
		return donateId.substring(donateId.length() - 6);
	}
	
	//localhost:8080/homePage/user_donate_organ
	@RequestMapping("/user_donate_organ")
	public String userOrganDonate(DonateOrgan donOrgan, Model model) {
		
		donOrgan.setId(genrateDonateId());
		
		donOrgRepo.save(donOrgan);
		
//		List<DonateOrgan> list = donOrgRepo.findAll();
//		model.addAttribute("list", list);
		
		return "2.0.1 User Home";
	}
	
	@Autowired
	private DonateOrganRepository donateOrganRepo;
	
//	@RequestMapping("/delete")
//	public String user_organ_delete(@RequestParam("email") String email) {
////		DonateOrgan byEmail = donateOrganRepo.findByEmail(email);
//		donateOrganRepo.deleteById(email);
//		
////		return "2.0.3 User Donate Organ Table";
//		
//		return "2.0.1 User Home";
//	}
	
	//===================================User Donate Page(organ,blood)===============================================
	
	//localhost:8080/homePage/user_donation_page
	@RequestMapping("/user_donation_page")
	public String userDonationPage() {
		return "2.0.6.0 User My Donation";
	}
	
	//1.//localhost:8080/homePage/user_donation_table
	@RequestMapping("/user_donation_table")
	public String userDonation(DonateOrgan donOrgan, Model model) {
		
		List<DonateOrgan> list = donOrgRepo.findAll();
		model.addAttribute("list", list);
		
		return "2.0.3 User Donate Organ Table";
	}
	
//	//2.//localhost:8080/homePage/user_blood_donation_table
//	@RequestMapping("/user_blood_donation_table")
//	public String userBloodDonationTable() {
//		return "";
//	}
//====================================User Donate Blood & Table=======================================
	
	//localhost:8080/homePage/user_donate_blood_page
	@RequestMapping("/user_donate_blood_page")
	public String userDonateBloodPage() {
		return "2.0.4.1 User Donate Blood Page";
	}
	
	//
	@Autowired
	private DonateBloodRepository donateBloodRepo;
	
	private String donateBloodId() {
		String reqId = UUID.randomUUID().toString();
		return reqId.substring(reqId.length() - 6);
	}
	
	//localhost:8080/homePage/user_donate_blood
	@RequestMapping("/user_donate_blood")
	public String userDonateBlood(DonateBlood donateBlood, Model model) {
		
		donateBlood.setId(donateBloodId());
		
		donateBloodRepo.save(donateBlood);
		
//		List<DonateBlood> list = donateBloodRepo.findAll();
//		model.addAttribute("list", list);
		
		return "2.0.1 User Home";
	}
	
	//localhost:8080/homePage/user_blood_donation_ta
	@RequestMapping("/user_blood_donation_ta")
	public String userBloodDonationTablee(Model model) {
		
		List<DonateBlood> list = donateBloodRepo.findAll();
		model.addAttribute("list", list);
		
		return "2.0.4.2 User Donate Blood Table";
	}
	
//===============================User Blood Request & Table==============================================
	
	//localhost:8080/homePage/user_my_statuss_pagee
	@RequestMapping("/user_my_statuss_pagee")
	public String userMyStatussPagee() {
		return "2.0.7 User My Status";
	}
	
	//localhost:8080/homePage/user_blood_status
	@RequestMapping("/user_blood_status")
	public String userBloodStatus(Model model) {
		List<RequestBlood> list = requestBloodRepo.findAll();
		model.addAttribute("list", list);
		
		return "2.0.5.2 User Request Blood Table";
	}
	
	@Autowired
	private RequestBloodRepository requestBloodRepo;
	
	private String requestBloodId() {
		String reqId = UUID.randomUUID().toString();
		return reqId.substring(reqId.length() - 6);
	}
	
	//localhost:8080/homePage/user_blood_request
	@RequestMapping("/user_blood_request")
	public String userRequestBlood(RequestBlood requestBlood, Model model) {
		
		requestBlood.setId(requestBloodId());
		
		requestBloodRepo.save(requestBlood);
		
//		List<RequestBlood> list = requestBloodRepo.findAll();
//		model.addAttribute("list", list);
		
		return "2.0.1 User Home";
	}
	
	//localhost:8080/homePage/user_request_blood_page
	@RequestMapping("/user_request_blood_page")
	public String userRequestBloodPage() {
		return "2.0.5.1 User Request Blood Page";
	}
	//===========================================Delete Organ Row===============================================
	@RequestMapping("/delete_donte_organ")
	public String delete_donte_organ(@RequestParam("id") String id) {
		donateOrganRepo.deleteById(id);
		return "2.0.1 User Home";
	}
	//==========================================Delete Blood Row================================================
	@RequestMapping("/delete_donte_blood")
	public String delete_donte_blood(@RequestParam("id") String id) {
		donateBloodRepo.deleteById(id);
		return "2.0.1 User Home";
	}
}
