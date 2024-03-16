package com.HMS.doclogin.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HMS.docloginEntity.Appointment;
import com.HMS.docloginRepository.AppointmentRepository;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/api/v2")
public class AppointmentController {

	@Autowired
	private AppointmentRepository appointmentRepository;

	@GetMapping("/")
	public String index() {
		return "home";
	}
	
	@GetMapping("/getinfojsp")
	public String getAppointmentPage() {
		return "appointment";
	}

	@GetMapping("/insertPage")
	public String insertPage() {
		return "addapp";
	}

	@PostMapping("/addapp")
	public String insertappointment(Appointment appointment) {
		Appointment appointment2 = appointmentRepository.save(appointment);
		return "appointment";
	}

	@RequestMapping("/delete")
	public String delete(Integer id) {
		appointmentRepository.deleteById(id);
		return "appointment";
	}


	@GetMapping("/update")
	public String getUpdatePage(Integer id, org.springframework.ui.Model model, Appointment appointment) {
	    appointmentRepository.getById(id);
	    model.addAttribute("appointment", appointment);
	    return "updateform";
	}

	@RequestMapping("/updatePage")
	public String updateAppointment(@ModelAttribute Appointment appointment, HttpServletRequest request) {
		request.setAttribute("appointment", appointment);
	    appointment.setName(appointment.getName());
	    appointment.setAge(appointment.getAge());
	    appointment.setSymptom(appointment.getSymptom());
	    appointment.setNumber(appointment.getNumber());
	    appointmentRepository.save(appointment);
	    return "redirect:/api/v2/getinfojsp";
	}
}
