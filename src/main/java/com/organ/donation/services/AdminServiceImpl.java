package com.organ.donation.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organ.donation.entities.Doctor;
import com.organ.donation.repositories.DoctorRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private DoctorRepository doctorRepo;

	@Override
	public List<Doctor> getAllLeads() {
		doctorRepo.findAll();
		return null;
	}

}
