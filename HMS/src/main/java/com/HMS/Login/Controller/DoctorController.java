package com.HMS.Login.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.AllEntity.Doctor;
import com.HMS.Repository.DoctorRepository;

@Controller
@RequestMapping("/api/doctor")
public class DoctorController {
	
	@Autowired
	DoctorRepository doctorRepository;
	
	@GetMapping("/adddoctorPage")
	public String adddoctorpage() {
		return "adddoc";
	}
	
	@PostMapping("/adddoc")
	public String addadmin(Doctor doctor, Model model) {
		if (doctor.getPassword().equals(doctor.getConfirmpassword())) {
			model.addAttribute("successmsg", "Doctor Added Succesfully !!");
			doctorRepository.save(doctor);
			return "adddoc";
		} else {
			model.addAttribute("errormsg", "The Password Must be Same");
		}
		return "adddoc";
	}
	
	@RequestMapping("/doctorlogin")
	public String adminlogin(Doctor doctor, Model model) {
		if (doctorRepository.existsByEmail(doctor.getEmail()) && doctorRepository.existsByPassword(doctor.getPassword())) {
			Doctor loggedInDoctor = doctorRepository.findByEmailAndPassword(doctor.getEmail(), doctor.getPassword());
			if (loggedInDoctor != null) {
				return "redirect:/api/docpat/getdocpatpage";
			}else {
				model.addAttribute("erroridorpass", "Email or Password is Wrong !!");
				return "logindoctor";
			}
		}else {
			model.addAttribute("erroridorpass", "Email or Password is Wrong !!");
		}
		return "logindoctor"; 
		
	}
	
}
