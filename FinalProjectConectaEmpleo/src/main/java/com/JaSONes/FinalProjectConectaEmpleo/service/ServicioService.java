package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Servicio;

public interface ServicioService {
	
	public int add(Servicio servicio);
	public void edit(Servicio servicio);
	public void delete(int idServicio);
	public List<Servicio> getServicios();
	public Servicio getServicio(int idServicio);
	public Map<String, List<Servicio>> getServiciosPorPeluquero();

}
