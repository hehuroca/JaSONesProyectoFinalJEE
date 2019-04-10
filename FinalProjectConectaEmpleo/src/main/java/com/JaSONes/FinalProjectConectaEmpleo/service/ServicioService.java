package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Servicio;

public interface ServicioService {
	
	public int addORupdate(Servicio servicio);
	public void edit(int id);
	public void delete(int id);
	public List<Servicio> getServicios();
	public Servicio getServicio(int id);
	public Map<String, List<Servicio>> getServiciosPorPeluquero();

}
