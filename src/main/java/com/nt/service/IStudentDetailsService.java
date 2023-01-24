package com.nt.service;


import org.springframework.data.domain.Pageable;

import com.nt.custom.StudentPageableMap;
import com.nt.model.StudentDetails;

public interface IStudentDetailsService {

	public String regisgerStudentDetails(StudentDetails student);
	public StudentPageableMap getAllStudentDetails(Pageable pageable);
	
}
