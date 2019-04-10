package com.JaSONes.FinalProjectConectaEmpleo.model;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class Visita extends Servicio{
	private int id;
	@DateTimeFormat(iso=ISO.DATE, pattern= "yyyy/MM/dd")
	private LocalDate fechaVisita;
	@DateTimeFormat(iso=ISO.TIME, pattern= "HH:mm:ss")
	private LocalTime horaVisita;
	private String idCliente;
	private int idServicio;
	private int idUsuario;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public LocalDate getFechaVisita() {
		return fechaVisita;
	}
	
	public void setFechaVisita(LocalDate fechaVisita) {
		this.fechaVisita = fechaVisita;
	}
	
	public LocalTime getHoraVisita() {
		return horaVisita;
	}
	
	public void setHoraVisita(LocalTime horaVisita) {
		this.horaVisita = horaVisita;
	}
	
	public String getIdCliente() {
		return idCliente;
	}
	
	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}
	
	public int getIdServicio() {
		return idServicio;
	}
	
	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
	}
	
	public int getIdUsuario() {
		return idUsuario;
	}
	
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	
}
