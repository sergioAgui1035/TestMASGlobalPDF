package com.masglobal.testmasglobal.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.masglobal.testmasglobal.models.Employee;


public interface EmployeeRepository  extends MongoRepository<Employee, String> {
	
	public Employee findById(Integer id);
	
	}

