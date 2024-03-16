package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {

	public Admin findByEmail(String email);

}
