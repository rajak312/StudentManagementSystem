package com.nt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.custom.StudentPageableMap;
import com.nt.model.StudentDetails;
import com.nt.service.IStudentDetailsService;
import com.nt.validations.StudentValidator;

@Controller
public class StudentController {

	@Autowired
	private IStudentDetailsService studentService;
	@Autowired
	private StudentValidator studentValidator;

	@GetMapping("/")
	public String showRegistrationForm() {
		return "home";
	}

	@PostMapping("/register")
	public String registerStudentDetails(RedirectAttributes attr,
			@ModelAttribute("studentDetails") StudentDetails studentDetails, BindingResult errors) {

		if (errors.hasFieldErrors())
			return "student_add";

		// checking form validation errors
		if (studentValidator.supports(studentDetails.getClass())) {
			studentValidator.validate(studentDetails, errors); // T
			if (errors.hasErrors())
				return "student_add";

		}
		String result = studentService.regisgerStudentDetails(studentDetails);
		attr.addFlashAttribute("msg", result);
		return "redirect:report";
	}

	@GetMapping("/register")
	public String showRegisterForm(@ModelAttribute("studentDetails") StudentDetails studentDetails) {
		return "student_add";
	}

	@GetMapping("/report")
	public String getStudentReport(Map<String, Object> map,
			@PageableDefault(page = 0, size = 5, sort = "name", direction = Sort.Direction.ASC) Pageable pageable) {
		Page<StudentDetails> page = studentService.getAllStudentDetails(pageable).getPage();

		map.put("studentList", page);
		map.put("top2StuentList", studentService.getAllStudentDetails(pageable).getTop2Student());

		return "student_report";

	}
}
