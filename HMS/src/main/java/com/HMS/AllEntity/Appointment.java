package com.HMS.AllEntity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
public class Appointment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String age;
	private String symptom;
	private String number;
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appointment(int id, String name, String age, String symptom, String number) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.symptom = symptom;
		this.number = number;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Appointment [id=" + id + ", name=" + name + ", age=" + age + ", symptom=" + symptom + ", number="
				+ number + "]";
	}
	
	
}
