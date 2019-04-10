package com.JaSONes.FinalProjectConectaEmpleo.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;


public class Cliente {

	public enum Sexo{
		HOMBRE, MUJER
	}
	private String dni;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	@DateTimeFormat(iso=ISO.DATE, pattern= "yyyy/MM/dd")
	private LocalDate fechaNacimiento;
	private Sexo sexo;
	private String domicilio;
	private String cp;
	private String ciudad;
	private String telefono;
	private String mail;
	@DateTimeFormat(iso=ISO.DATE, pattern="yyyy-MM-dd")
	private LocalDate fechaPrimeraVisita;
	private int peluqueroFavorito;
	
	//Getters and setters
	
	public String getDni() {
		return dni;
	}
	
	public void setDni(String dni) {
		this.dni = dni;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getPrimerApellido() {
		return primerApellido;
	}
	
	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}
	
	public String getSegundoApellido() {
		return segundoApellido;
	}
	
	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}
	
	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}
	
	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	public Sexo getSexo() {
		return sexo;
	}
	
	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}
	
	public String getDomicilio() {
		return domicilio;
	}
	
	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}
	
	public String getCp() {
		return cp;
	}
	
	public void setCp(String cp) {
		this.cp = cp;
	}
	
	public String getCiudad() {
		return ciudad;
	}
	
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	
	public String getTelefono() {
		return telefono;
	}
	
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	public String getMail() {
		return mail;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public LocalDate getFechaPrimeraVisita() {
		return fechaPrimeraVisita;
	}
	
	public void setFechaPrimeraVisita(LocalDate fechaPrimeraVisita) {
		this.fechaPrimeraVisita = fechaPrimeraVisita;
	}
	
	public int getPeluqueroFavorito() {
		return peluqueroFavorito;
	}
	
	public void setPeluqueroFavorito(int peluqueroFavorito) {
		this.peluqueroFavorito = peluqueroFavorito;
	}
			
}
