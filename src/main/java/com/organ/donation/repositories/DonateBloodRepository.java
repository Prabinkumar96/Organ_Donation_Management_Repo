package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.DonateBlood;

public interface DonateBloodRepository extends JpaRepository<DonateBlood, String> {
	
	public DonateBlood findByEmail(String email);

}
