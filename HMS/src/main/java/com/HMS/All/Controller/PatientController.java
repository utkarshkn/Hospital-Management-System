package com.HMS.All.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HMS.AllEntity.Appointment;
import com.HMS.AllRepository.AppointmentRepository;
import com.HMS.AllRepository.PatientRepository;
import com.HMS.LoginEntity.Patient;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/api/v1")
public class PatientController {

	@Autowired
	private PatientRepository patientRepository;
	
	AppointmentRepository appointmentRepository;
	
	public PatientController(AppointmentRepository appointmentRepository) {
		super();
		this.appointmentRepository = appointmentRepository;
	}

	@GetMapping("/admincontroller")
	public String getalljsp() {
		return "admindash";
	}
	
	@GetMapping("/addpatient")
	public String getaddform() {
		return "addpat"; 
	}
	
	@GetMapping("/getonlineapp")
	public String getapp() {
		return "appointment";
	}
	
	
	@PostMapping("/addpat")
	public String addpat(Appointment appointment) {
		appointmentRepository.save(appointment);
		return "appointment";
	}
	
	@RequestMapping("/insert")
	public String createPatient(Patient patient, Model model) {
		model.addAttribute("successpat", "Patient Inserted Succesfully !!");
		patientRepository.save(patient);
		return "admindash";
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id, Model model) {
		patientRepository.deleteById(id);
		model.addAttribute("msg", "Patient Deleted Succesfully !!");
		return "admindash";
	}
	
	@GetMapping("/update")
	public String getUpdatePage(Integer id, Model model) {
	    Patient patient = patientRepository.getById(id);
	    model.addAttribute("patient", patient);
	    return "updateform";
	}

	@RequestMapping("/updatePage")
	public String updateAppointment(@ModelAttribute Patient patient, HttpServletRequest request) {
		request.setAttribute("patient", patient);
	    patient.setName(patient.getName());
	    patient.setAge(patient.getAge());
	    patient.setBlood(patient.getBlood());
	    patient.setDieses(patient.getDieses());
	    patient.setPrescription(patient.getPrescription());
	    patient.setUrgency(patient.getUrgency());
	    patientRepository.save(patient);
	    return "redirect:/api/v1/admincontroller";
	}
	
	
	// Online Appointment
	
	@RequestMapping("/deleteonline")
	public String deleteonline(Integer id, Model model) {
		appointmentRepository.deleteById(id);
		model.addAttribute("msg", "Patient Deleted Succesfully !!");
		return "appointment";
	}
	
	@GetMapping("/updateapp")
	public String getUpdateappPage(Integer id, Model model) {
		Appointment appointment = appointmentRepository.getById(id);
		model.addAttribute("appointment", appointment);
	    return "updateappform";
	}

	@RequestMapping("/updateonlinePage")
	public String updateAppointmentpat(@ModelAttribute Appointment appointment, HttpServletRequest request) {
		request.setAttribute("appointment", appointment);
	    appointment.setName(appointment.getName());
	    appointment.setAge(appointment.getAge());
	    appointment.setSymptom(appointment.getSymptom());
	    appointment.setNumber(appointment.getNumber());
	    appointmentRepository.save(appointment);
	    return "redirect:/api/v1/getonlineapp";
	}
	
	
}
