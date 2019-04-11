package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Servicio;

public interface ServicioDao {
	
	public int add(Servicio servicio);
	public int edit(Servicio servicio);
	public void delete(int idServicio);
	public List<Servicio> getServicios();
	public Servicio getServicio(int idServicio);
	public Map<String, List<Servicio>> getServiciosPorPeluquero();

}
