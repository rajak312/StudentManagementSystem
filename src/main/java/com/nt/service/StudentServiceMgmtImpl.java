package com.nt.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.nt.custom.StudentPageableMap;
import com.nt.model.StudentDetails;
import com.nt.repo.IStudentDetailsRepo;

@Service
public class StudentServiceMgmtImpl implements IStudentDetailsService {

	@Autowired
	private IStudentDetailsRepo studentRepo;

	@Override
	public String regisgerStudentDetails(StudentDetails student) {
		// TODO Auto-generated method student

		return "Student " + studentRepo.save(student).getRollNo() + " Registered Successfully";
	}

	float avg = 0.0f;
	Map<String, Float> unSortedList = new HashMap<>();
	List<String> top2RollNo = new ArrayList<>();
	List<StudentDetails> top2Student = new ArrayList<>();
	int count = 0;
	int count1 = 0;

	@Override
	public StudentPageableMap getAllStudentDetails(Pageable pageable) {
		// TODO Auto-generated method stub

		unSortedList.clear();
		top2Student.clear();
		 top2RollNo.clear();
		studentRepo.findAll().forEach(student -> {

			student.getStudentSemDetails().forEach(semester -> {

				avg += semester.getEnglishMarks() + semester.getMathsMarks() + semester.getScienceMarks();

			});

			unSortedList.put(student.getRollNo(), avg / 6.0f);
			avg = 0;
		});

		unSortedList = unSortedList.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
				.collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue, (e1, e2) -> e1, LinkedHashMap::new));

		unSortedList.forEach((rollno, no) -> {
			if (count == 0) {
				top2RollNo.add(count, rollno);

			} else if (count == 1) {
				top2RollNo.add(count, rollno);
			}

			count++;
		});
		count = 0;

		top2RollNo.forEach(rollno -> {

			studentRepo.findAll().forEach(studentDetails -> {

				if (rollno.equals(studentDetails.getRollNo())) {
					if (count1 == 0) {
						top2Student.add(0, studentDetails);
					} else {
						top2Student.add(1, studentDetails);

					}
					count1++;
				}
			});
		});
		count1 = 0;
		top2RollNo.forEach(System.out::println);
		top2Student.forEach(System.out::println);
		StudentPageableMap studentObjectList = new StudentPageableMap(studentRepo.findAll(pageable), top2Student);
		return studentObjectList;
	}
}
