package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.Hospital;


public interface HospitalRepository extends JpaRepository<Hospital, String> {

}
