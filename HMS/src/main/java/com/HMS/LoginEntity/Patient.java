package com.HMS.LoginEntity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "pname")
	private String name;
	@Column(name = "page")
	private String age;
	@Column(name = "blood_group")
	private String blood;

	private String dieses;

	private String prescription;

	private String urgency;

	private String fees;

	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Patient(int id, String name, String age, String blood, String dieses, String prescription, String urgency,
			String fees) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.blood = blood;
		this.dieses = dieses;
		this.prescription = prescription;
		this.urgency = urgency;
		this.fees = fees;
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

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getDieses() {
		return dieses;
	}

	public void setDieses(String dieses) {
		this.dieses = dieses;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

	public String getUrgency() {
		return urgency;
	}

	public void setUrgency(String urgency) {
		this.urgency = urgency;
	}

	public String getFees() {
		return fees;
	}

	public void setFees(String fees) {
		this.fees = fees;
	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", name=" + name + ", age=" + age + ", blood=" + blood + ", dieses=" + dieses
				+ ", prescription=" + prescription + ", urgency=" + urgency + ", fees=" + fees + "]";
	}
	
}
