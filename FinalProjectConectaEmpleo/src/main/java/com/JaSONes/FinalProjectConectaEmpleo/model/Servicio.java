package com.JaSONes.FinalProjectConectaEmpleo.model;

public class Servicio {

	private int idServicio;
	private String nombreServicio;
	private Double precioServicio;
	private Double tiempoMedioServicio;
	private String notas;
	
	public Servicio() {
		super();
	}

	public int getIdServicio() {
		return idServicio;
	}

	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
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
