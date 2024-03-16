package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, String> {

	public Doctor findByEmail(String email);

}
