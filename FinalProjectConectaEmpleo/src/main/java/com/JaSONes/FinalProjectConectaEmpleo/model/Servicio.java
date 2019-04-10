package com.JaSONes.FinalProjectConectaEmpleo.model;

public class Servicio {

	private int id;
	private String nombreServicio;
	private Double precioServicio;
	private Double tiempoMedioServicio;
	private String notas;
	
	public Servicio() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreServicio() {
		return nombreServicio;
	}

	public void setNombreServicio(String nombreServicio) {
		this.nombreServicio = nombreServicio;
	}

	public Double getPrecioServicio() {
		return precioServicio;
	}

	public void setPrecioServicio(Double precioServicio) {
		this.precioServicio = precioServicio;
	}

	public Double getTiempoMedioServicio() {
		return tiempoMedioServicio;
	}

	public void setTiempoMedioServicio(Double tiempoMedioServicio) {
		this.tiempoMedioServicio = tiempoMedioServicio;
	}

	public String getNotas() {
		return notas;
	}

	public void setNotas(String notas) {
		this.notas = notas;
	}
	
}
