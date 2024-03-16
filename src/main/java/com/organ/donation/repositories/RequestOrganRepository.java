package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.RequestOrgan;

public interface RequestOrganRepository extends JpaRepository<RequestOrgan, String> {
	
	public RequestOrgan findByEmail(String email);

}
