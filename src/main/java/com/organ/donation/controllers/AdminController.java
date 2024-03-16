package com.organ.donation.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organ.donation.entities.Admin;
import com.organ.donation.entities.Doctor;
import com.organ.donation.entities.DonateBlood;
import com.organ.donation.entities.DonateOrgan;
import com.organ.donation.entities.RequestBlood;
import com.organ.donation.entities.RequestOrgan;
import com.organ.donation.entities.User;
import com.organ.donation.repositories.AdminRepository;
import com.organ.donation.repositories.DoctorRepository;
import com.organ.donation.repositories.DonateBloodRepository;
import com.organ.donation.repositories.DonateOrganRepository;
import com.organ.donation.repositories.RequestBloodRepository;
import com.organ.donation.repositories.RequestOrganRepository;
import com.organ.donation.repositories.UserRepository;

@Controller
public class AdminController {
	
	//localhost:8080/homePage
	
	//===========================================Admin Login Page===============================================
	//localhost:8080/homePage/admin_login_page
	@RequestMapping("/admin_login_page")
	public String adminLoginPage() {
		return "1.0.0 Admin Login Page";
	}
	
	//===========================================Verify Admin Login===============================================
	@Autowired
	private AdminRepository adminRepo;
	
	//localhost:8080/homePage/admin_login
	@RequestMapping("/admin_login")
	public String verifyAdminLogin(@RequestParam("email") String email, @RequestParam("password") String password,ModelMap model) {
		
		Admin byEmail = adminRepo.findByEmail(email);
		
		if(byEmail.getEmail().equals(email) && byEmail.getPassword().equals(password)) {
			model.addAttribute("msg", "Successfully User Registered !!!");
			return "1.0.1 Admin Home";
		}else {
			model.addAttribute("error", "Invalid username/password");
			return "1.0.0 Admin Login Page";
		}
	}
	
	//===========================================Admin-Home Organ Request==========================================
	@Autowired
	private RequestOrganRepository reqOrgRepo;
	
	//localhost:8080/homePage/admin_organ_request
	@RequestMapping("/admin_organ_request")
	public String adminOrganRequest(Model model) {
		
		List<RequestOrgan> list = reqOrgRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.2.0 Admin Organ Request";
	}
	
	//===========================================Admin-Home Organ Donate==========================================
	@Autowired
	private DonateOrganRepository donOrgRepo;
	
	//localhost:8080/homePage/admin_organ_collection
	@RequestMapping("/admin_organ_collection")
	public String adminOrganCollection(Model model) {
		
		List<DonateOrgan> list = donOrgRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.2.1 Admin Organ Collection";
	}
	
	//===========================================Admin-Home Add Doctor==========================================
	//localhost:8080/homePage/admin_add_doctor_page
	@RequestMapping("/admin_add_doctor_page")
	public String adminAddDoctorPage() {
		return "1.0.3.1 Admin Add Doctor Register Page";
	}
	
	@Autowired
	private DoctorRepository doctorRepo;
	
	@RequestMapping("/admin_add_doctor")
	public String adminAddDoctor(Doctor doctor, Model model) {
		doctorRepo.save(doctor);
		
		List<Doctor> list = doctorRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.4.1 Admin View Doctor";
	}
	
	//===========================================Admin-Home View Doctor==========================================
	//localhost:8080/homePage/admin_view_doctor
	@RequestMapping("/admin_view_doctor")
	public String adminViewDoctor(Doctor doctor, Model model) {
		
		List<Doctor> list = doctorRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.4.1 Admin View Doctor";
	}
	
//	//=================================Admin-Home Create Hospital & Lists=========================================
//	@Autowired
//	private HospitalRepository hospitalRepo;
//	
//	//localhost:8080/homePage/admin_add_location
//	@RequestMapping("/admin_add_location")
//	public String adminAddLocation(Hospital hospital, Model model) {
//		
//		List<Hospital> list = hospitalRepo.findAll();
//		model.addAttribute("list", list);
//		
//		return "1.0.5.1 Admin Add Location Hospital List";
//	}
//	
//	//localhost:8080/homePage/create_hospital
//	@RequestMapping("/create_hospital")
//	public String createHospital() {
//		return "1.0.5.2 Admin Add Location Hospital Create";
//	}
//	
//	private String generateHospitalId() {
//		String hospitalId = UUID.randomUUID().toString();
//		return hospitalId.substring(hospitalId.length() - 6);
//	}
//	@RequestMapping("/create_hospital_page")
//	public String createHospitalPage(Hospital hospital, Model model) {
//		
////		hospital.setHospitalId(generateHospitalId());
//		
//		hospitalRepo.save(hospital);
//		
//		List<Hospital> list = hospitalRepo.findAll();
//		model.addAttribute("list", list);
//		
//		return "1.0.5.1 Admin Add Location Hospital List";
//	}
	
	//===========================================Admin-Home All Users==========================================
	@Autowired
	private UserRepository userRepo;
	
	//localhost:8080/homePage/admin_all_user
	@RequestMapping("/admin_all_user")
	public String adminAllUser(User user, Model model) {
		List<User> list = userRepo.findAll();
		model.addAttribute("list", list);
		return "1.0.6.0 Admin All User Page";
	}
	
//	//===========================================Admin-Home Organ Status==========================================
//	@Autowired
//	private OrganRepository organRepo;
//	
//	//localhost:8080/homePage/admin_add_status
//	@RequestMapping("/admin_add_status")
//	public String adminAddStatus(Model model) {
//		
//		List<Organ> list = organRepo.findAll();
//		model.addAttribute("list", list);
//		
//		return "1.0.7.0 Admin Add Status Page";
//	}
//	
//	//localhost:8080/homePage/create_organ
//	@RequestMapping("/create_organ")
//	public String createOrgan() {
//		return "1.0.7.1 Admin Add Status Organ Create";
//	}
//	
//	@RequestMapping("/create_organ_page")
//	public String createOrganPage(Organ organ, Model model) {
//		
//		organRepo.save(organ);
//		
//		List<Organ> list = organRepo.findAll();
//		model.addAttribute("list", list);
//		
//		return "1.0.7.0 Admin Add Status Page";
//	}
	
	//===============================Admin-Home BLOOD REQUEST=========================================
	
	@Autowired
	private RequestBloodRepository reqBldRepo;
	
	@RequestMapping("/admin_blood_request")
	public String admin_blood_request(Model model) {
		
		List<RequestBlood> list = reqBldRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.8.0 Admin Request Blood Table";
	}
	
	//=============================Admin-Home BLOOD COLLECTION========================================
	
	@Autowired
	private DonateBloodRepository donBldRepo;
	
	@RequestMapping("/admin_blood_collection")
	public String admin_blood_collection(Model model) {
		
		List<DonateBlood> list = donBldRepo.findAll();
		model.addAttribute("list", list);
		
		return "1.0.9.0 Admin Donate Blood Collection Table";
	}
	
	//=============================================DELETE=====================================================
	//==========================================REQUEST ORGAN=========================================
	@RequestMapping("/delete_request_organ")
	public String delete_request_organ(@RequestParam("id") String id) {
		reqOrgRepo.deleteById(id);
		return "1.0.1 Admin Home";
	}
	//===========================================DONATE ORGAN=========================================
	@RequestMapping("/delete_donte_organs")
	public String delete_donte_organ(@RequestParam("id") String id) {
		donOrgRepo.deleteById(id);
		return "1.0.1 Admin Home";
	}
	//===========================================REQUEST BLOOD=========================================
	@RequestMapping("/delete_request_blood")
	public String delete_request_blood(@RequestParam("id") String id) {
		reqBldRepo.deleteById(id);
		return "1.0.1 Admin Home";
	}
	//===========================================DONATE BLOOD=========================================
	@RequestMapping("/delete_donte_bloodd")
	public String delete_donte_blood(@RequestParam("id") String id) {
		donBldRepo.deleteById(id);
		return "1.0.1 Admin Home";
	}
}
