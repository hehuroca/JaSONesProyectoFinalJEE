package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Visita;

public interface VisitaService {
	
	public int add(Visita visita);
	public void edit(Visita visita);
	public void delete(int idVisita);
	public List<Visita> getVisitas();
	public Visita getVisita(int idVisita);
	public Map<String, List<Visita>> getVisitasPorCliente();

}
