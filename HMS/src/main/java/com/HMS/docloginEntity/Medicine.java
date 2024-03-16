package com.HMS.docloginEntity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import lombok.Data;

@Entity
public class Medicine {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "drug_name")
	private String drug;
	private String stock;
	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medicine(int id, String drug, String stock) {
		super();
		this.id = id;
		this.drug = drug;
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDrug() {
		return drug;
	}
	public void setDrug(String drug) {
		this.drug = drug;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "Medicine [id=" + id + ", drug=" + drug + ", stock=" + stock + "]";
	}
	
	
}
