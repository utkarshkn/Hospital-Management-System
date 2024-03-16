package com.HMS.doclogin.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.HMS.docloginEntity.Medicine;
import com.HMS.docloginRepository.MedicineRepository;

@RestController
@RequestMapping("/api/v3")
public class MedicineController {

	@Autowired
	private MedicineRepository medicineRepository;
	
	@PostMapping("/insert")
	public Medicine createMedicine(@RequestBody Medicine medicine) {
		return medicineRepository.save(medicine);
	}
	
	@GetMapping("/getinfo")
	public List<Medicine> allPatient(){
		return medicineRepository.findAll();
	}
}
