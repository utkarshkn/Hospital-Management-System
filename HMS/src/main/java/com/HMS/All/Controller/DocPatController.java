package com.HMS.All.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.AllRepository.PatientRepository;

@Controller
@RequestMapping("/api/docpat")
public class DocPatController {

	@Autowired
	PatientRepository patientRepository;

	@GetMapping("/getdocpatpage")
	public String docpatdashpage() {
		return "docpatdash";
	}
	
	@GetMapping("/docdash")
	public String dicdash() {
		return "docpatdash";
	}

	@RequestMapping("/delete")
	public String delete(Integer id, Model model) {
		patientRepository.deleteById(id);
		model.addAttribute("msg", "Patient Deleted Succesfully !!");
		return "docpatdash";
	}
}
