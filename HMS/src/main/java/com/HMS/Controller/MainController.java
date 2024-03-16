package com.HMS.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.HMS.Entity.Patient;
import com.HMS.Repository.PatientRepository;

@Controller
public class MainController {
	
	@Autowired
	PatientRepository patientRepository;
	
	@GetMapping("/")
	public String main() {
		return "home";
	}
	
	@PostMapping("/addpat")
	public String addpat(Patient patient, Model model) {
		patientRepository.save(patient);
		model.addAttribute("addpat", "Patient Added Succesfully !!");
		return "home";
	}
	
	@GetMapping("/getdocloginPage")
	public String doclogin() {
		return "doclogin";
	}
	
	@GetMapping("/getadminloginPage")
	public String adlogin() {
		return "logiadmin";
	}
}
