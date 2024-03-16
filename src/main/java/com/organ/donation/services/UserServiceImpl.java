package com.organ.donation.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organ.donation.entities.User;
import com.organ.donation.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepo;

	@Override
	public void saveUser(User user) {
		userRepo.save(user);
	}
}
