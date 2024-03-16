package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.DonateOrgan;

public interface DonateOrganRepository extends JpaRepository<DonateOrgan, String> {
	
	public DonateOrgan findByEmail(String email);

}
