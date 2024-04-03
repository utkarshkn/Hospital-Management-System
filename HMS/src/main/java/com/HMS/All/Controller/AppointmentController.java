package com.HMS.All.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.AllEntity.Appointment;
import com.HMS.AllRepository.AppointmentRepository;

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
		appointmentRepository.save(appointment);
		return "appointment";
	}

	@RequestMapping("/delete")
	public String delete(Integer id) {
		appointmentRepository.deleteById(id);
		return "appointment";
	}
}
