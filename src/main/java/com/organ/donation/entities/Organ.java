package com.organ.donation.entities;

import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="organs")
public class Organ {
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sl;
	
	private String organ_name;
	private String organ_A_N;
	
	public int getSl() {
		return sl;
	}
	public void setSl(int sl) {
		this.sl = sl;
	}
	public String getOrgan_name() {
		return organ_name;
	}
	public void setOrgan_name(String organ_name) {
		this.organ_name = organ_name;
	}
	public String getOrgan_A_N() {
		return organ_A_N;
	}
	public void setOrgan_A_N(String organ_A_N) {
		this.organ_A_N = organ_A_N;
	}
	
	
}
