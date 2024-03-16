package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.Organ;

public interface OrganRepository extends JpaRepository<Organ, Integer> {

}
