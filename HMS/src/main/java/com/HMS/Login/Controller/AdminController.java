package com.HMS.Login.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.LoginEntity.Admin;
import com.HMS.Repository.AdminRepository;

@Controller
@RequestMapping("/api/admin")
public class AdminController {

	@Autowired
	AdminRepository adminRepository;

	@GetMapping("/addadminPage")
	public String addadminpage() {
		return "addadmin";
	}

	@PostMapping("/addadmin")
	public String addadmin(Admin admin, Model model) {
		if (admin.getPassword().equals(admin.getConfirmpassword())) {
			model.addAttribute("successmsg", "Admin Added Succesfully !!");
			adminRepository.save(admin);
			return "addadmin";
		} else {
			model.addAttribute("errormsg", "The Password Must be Same");
		}
		return "addadmin";
	}

	@RequestMapping("/adminlogin")
	public String adminlogin(Admin admin, Model model) {
		if (adminRepository.existsByEmail(admin.getEmail()) && adminRepository.existsByPassword(admin.getPassword())) {
			Admin loggedInAdmin = adminRepository.findByEmailAndPassword(admin.getEmail(), admin.getPassword());
			if (loggedInAdmin != null) {
				return "redirect:/api/v1/admincontroller";
			}else {
				model.addAttribute("erroridorpass", "Email or Password is Wrong !!");
				return "loginadmin";
			}
		}else {
			model.addAttribute("erroridorpass", "Email or Password is Wrong !!");
		}
		return "loginadmin"; 
		
	}

}
