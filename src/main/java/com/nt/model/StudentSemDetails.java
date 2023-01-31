package com.nt.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table
public class StudentSemDetails {
	
	@Id
	@GeneratedValue
	private Integer sNo;
	@Column(name = "semester")
	private Integer semester;
	@Column(name = "english_marks")
	private Integer englishMarks;
	@Column(name = "maths_marks")
	private Integer mathsMarks;
	@Column(name = "science_marks")
	private Integer scienceMarks;

	public Integer getSemester() {
		return semester;
	}
	public void setSemester(Integer semester) {
		this.semester = semester;
	}
	public Integer getEnglishMarks() {
		return englishMarks;
	}
	public void setEnglishMarks(Integer englishMarks) {
		this.englishMarks = englishMarks;
	}
	public Integer getMathsMarks() {
		return mathsMarks;
	}
	public void setMathsMarks(Integer mathsMarks) {
		this.mathsMarks = mathsMarks;
	}
	public Integer getScienceMarks() {
		return scienceMarks;
	}
	public void setScienceMarks(Integer scienceMarks) {
		this.scienceMarks = scienceMarks;
	}
	@Override
	public String toString() {
		return "StudentSemDetails [sNo=" + sNo + ", semester=" + semester + ", englishMarks=" + englishMarks
				+ ", mathsMarks=" + mathsMarks + ", scienceMarks=" + scienceMarks + "]";
	}

	

	
}
