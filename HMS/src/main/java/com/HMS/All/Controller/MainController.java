package com.HMS.All.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.HMS.AllEntity.Appointment;
import com.HMS.AllRepository.AppointmentRepository;
import com.HMS.AllRepository.PatientRepository;
import com.HMS.LoginEntity.Patient;

@Controller
public class MainController {
	
	@Autowired
	AppointmentRepository appointmentRepository;
	
	@GetMapping("/")
	public String main() {
		return "home";
	}
	
	@PostMapping("/addapt")
	public String addpat(Appointment appointment, Model model) {
		appointmentRepository.save(appointment);
		model.addAttribute("addpat", "Appointment Booked Succesfully !!");
		return "home";
	}
	
	@GetMapping("/getdocloginPage")
	public String doclogin() {
		return "logindoctor";
	}
	
	@GetMapping("/getadminloginPage")
	public String adlogin() {
		return "loginadmin";
	}
}
