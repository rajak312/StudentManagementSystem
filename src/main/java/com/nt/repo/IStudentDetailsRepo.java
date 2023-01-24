package com.nt.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.model.StudentDetails;

public interface IStudentDetailsRepo extends JpaRepository<StudentDetails, String> {

}
