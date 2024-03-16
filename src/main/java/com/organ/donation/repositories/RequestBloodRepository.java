package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.RequestBlood;


public interface RequestBloodRepository extends JpaRepository<RequestBlood, String> {
	
	public RequestBlood findByEmail(String email);

}
