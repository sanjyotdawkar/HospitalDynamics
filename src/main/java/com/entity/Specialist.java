package com.entity;

public class Specialist {
	private int id;
	private String specialistname;
	public Specialist(int id, String specialistname) {
		super();
		this.id = id;
		this.specialistname = specialistname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialistname() {
		return specialistname;
	}
	public void setSpecialistname(String specialistname) {
		this.specialistname = specialistname;
	}
	public Specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
