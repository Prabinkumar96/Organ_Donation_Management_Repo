package com.organ.donation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.organ.donation.entities.User;

public interface UserRepository extends JpaRepository<User, String> {

	public User findByEmail(String email);
	
	public User findByPassword(String password);

}
