package com.masglobal.testmasglobal.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.masglobal.testmasglobal.models.User;


public interface UserRepositorio  extends MongoRepository<User, Integer> {
	
		
	}

