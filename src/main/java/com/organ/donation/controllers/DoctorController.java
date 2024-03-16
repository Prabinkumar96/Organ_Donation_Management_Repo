package com.organ.donation.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organ.donation.entities.Doctor;
import com.organ.donation.entities.DonateBlood;
import com.organ.donation.entities.DonateOrgan;
import com.organ.donation.entities.RequestBlood;
import com.organ.donation.entities.RequestOrgan;
import com.organ.donation.repositories.DoctorRepository;
import com.organ.donation.repositories.DonateBloodRepository;
import com.organ.donation.repositories.DonateOrganRepository;
import com.organ.donation.repositories.RequestBloodRepository;
import com.organ.donation.repositories.RequestOrganRepository;

@Controller
public class DoctorController {
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	//localhost:8080/homePage
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	//localhost:8080/homePage/doctor_login_page
	@RequestMapping("/doctor_login_page")
	public String doctorLoginPage() {
		return "4.0.0 Doctor Login Page";
	}
	//..................................
	
	@Autowired
	private DoctorRepository doctorRepo;
	
	@RequestMapping("/doctor_login")
	public String verifyUserLogin(@RequestParam("email") String email,
									@RequestParam("password") String password,ModelMap model) {
		
		Doctor byEmail = doctorRepo.findByEmail(email);
		
		if(byEmail.getEmail().equals(email) && byEmail.getPassword().equals(password)) {
			model.addAttribute("msg", "Successfully User Registered !!!");
			return "4.0.1 Doctor Home";
		}else {
			model.addAttribute("error", "Invalid username/password");
			return "4.0.0 Doctor Login Page";
		}
	}
	//..........................................................................................
	
	//=================================3.0 Doctor View ORGAN REQUESTS==================================
	@Autowired
	private RequestOrganRepository reqOrganRepository;
	
	//localhost:8080/homePage/doctor_organ_requests
	@RequestMapping("/doctor_organ_requests")
	public String newOrganRequestPage(Model model) {
		
		List<RequestOrgan> list = reqOrganRepository.findAll();
		model.addAttribute("list", list);
		
		return "4.0.2.0 New Organ Request Table";
	}
	
//	//localhost:8080/homePage/update_organ_status
	@RequestMapping("/update_organ_status")
	public String doctorStatusUpdate(@RequestParam("email") String email,
									@RequestParam("status") String status, Model model) {
		
		RequestOrgan byEmail = reqOrganRepository.findByEmail(email);
		
		byEmail.setStatus(status);
		
		reqOrganRepository.save(byEmail);
		
//		List<RequestOrgan> list = reqOrganRepository.findAll();
//		model.addAttribute("list", list);
		
//		return "4.0.2.0 New Organ Request Table";
		return "4.0.1 Doctor Home";
	}
	//.........................................
	
//===============================Doctor view DONATE ORGAN COLLECTIONS========================================
	@Autowired
	private DonateOrganRepository donOrgRepo;
	
	//localhost:8080/homePage/doctor_organ_collections
	@RequestMapping("/doctor_organ_collections")
	public String organCollectionPage(Model model) {
		
		List<DonateOrgan> list = donOrgRepo.findAll();
		model.addAttribute("list", list);
		
		return "4.0.3 Organ Collection";
	}
	
//===============================Doctor view BLOOD REQUESTS========================================
	@Autowired
	private RequestBloodRepository requestBloodRepo;
	
	//localhost:8080/homePage/doctor_blood_requests
	@RequestMapping("/doctor_blood_requests")
	public String doctorBloodRequests(ModelMap model) {
		List<RequestBlood> list = requestBloodRepo.findAll();
		model.addAttribute("list", list);
		
		return "4.0.4.2 Doctor Request Blood Table";
	}
	
	//================================Doctor UPDATE BLOOD STATUS======================================
	@RequestMapping("/update_blood_status")
	public String update_blood_status(@RequestParam("email") String email,
										@RequestParam("status") String status, Model model) {
		
		RequestBlood byEmail = requestBloodRepo.findByEmail(email);
		
		byEmail.setStatus(status);
		
		requestBloodRepo.save(byEmail);
		
//		List<RequestBlood> list = requestBloodRepo.findAll();
//		model.addAttribute("list", list);
//		
//		return "4.0.4.2 Doctor Request Blood Table";
		return "4.0.1 Doctor Home";
	}
	
//=================================Doctor view DONATE BLOOD collection=================================
	@Autowired
	private DonateBloodRepository donateBloodRepo;
	
	//localhost:8080/homePage/doctor_blood_collections
	@RequestMapping("/doctor_blood_collections")
	public String doctorBloodCollections(Model model) {
		
		List<DonateBlood> list = donateBloodRepo.findAll();
		model.addAttribute("list", list);
		
		return "4.0.5.1 Doctor Blood Collection Table";
	}
	
//================================Doctor UPDATE BLOOD STATUS======================================
	
//	private String requestOrganId() {
//		String reqId = UUID.randomUUID().toString();
//		return reqId.substring(reqId.length() - 6);
//	}
	
}
