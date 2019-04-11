package com.JaSONes.FinalProjectConectaEmpleo.model;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class Visita extends Servicio{
	private int idVisita;
	@DateTimeFormat(iso=ISO.DATE, pattern= "yyyy/MM/dd")
	private LocalDate fechaVisita;
	@DateTimeFormat(iso=ISO.TIME, pattern= "HH:mm:ss")
	private LocalTime horaVisita;
	private String idCliente;
	private int idService;
	private int idUsuario;
	
	public int getIdVisita() {
		return idVisita;
	}
	
	public void setIdVisita(int idVisita) {
		this.idVisita = idVisita;
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
		return idService;
	}
	
	public void setIdServicio(int idServicio) {
		this.idService = idServicio;
	}
	
	public int getIdUsuario() {
		return idUsuario;
	}
	
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	
}
