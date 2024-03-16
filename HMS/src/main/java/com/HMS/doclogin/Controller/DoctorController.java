package com.HMS.doclogin.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.Entity.Patient;
import com.HMS.Repository.PatientRepository;

@Controller
public class DoctorController {
	
	@Autowired
	private PatientRepository patientRepository;
	
	@GetMapping("/getpat")
	public String docpage() {
		return "admindash";
	}

	@GetMapping("/addpatpage")
	public String addpatpage() {
		return "addpat";
	}
	
	@PostMapping("/addpatient")
	public String addnewpat(Patient patient) {
		patientRepository.save(patient);
		return "admindash";
	}
	
	@GetMapping("/addmedicinepage")
	public String addmedpage() {
		return "addmed";
	}
	
	@PostMapping("/addmed")
	public String addmed(Patient patient) {
		patientRepository.save(patient);
		return "admindash";
	}
	
	@RequestMapping("/delpatient")
	public String delpatient(Integer id) {
		patientRepository.deleteById(id);
		return "admindash";
	}
}
