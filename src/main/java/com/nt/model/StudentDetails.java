package com.nt.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table
public class StudentDetails {
	@Id
	private String rollNo;
	private String name;
	@OneToMany(targetEntity = StudentSemDetails.class,cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinColumn(name = "STUDENTDETAILS_ID",referencedColumnName = "rollNo")
	private List<StudentSemDetails> studentSemDetails;

	public String getRollNo() {
		return rollNo;
	}

	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<StudentSemDetails> getStudentSemDetails() {
		return studentSemDetails;
	}

	public void setStudentSemDetails(List<StudentSemDetails> studentSemDetails) {
		this.studentSemDetails = studentSemDetails;
	}

	@Override
	public String toString() {
		return "StudentDetails [rollNo=" + rollNo + ", name=" + name + ", studentSemDetails=" + studentSemDetails + "]";
	}

}
