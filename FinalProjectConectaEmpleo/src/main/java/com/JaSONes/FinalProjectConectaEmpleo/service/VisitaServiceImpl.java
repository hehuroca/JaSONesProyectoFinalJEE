package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.JaSONes.FinalProjectConectaEmpleo.dao.VisitaDao;
import com.JaSONes.FinalProjectConectaEmpleo.model.Visita;

@Service("visitaService")
public class VisitaServiceImpl implements VisitaService {

	@Autowired
	@Qualifier("visitaDaoImplC")
	private VisitaDao visitaDao;
	
	@Override
	public int add(Visita visita) {
		return this.visitaDao.add(visita);
	}

	@Override
	public void edit(Visita visita) {
		this.visitaDao.edit(visita);
	}

	@Override
	public void delete(int idVisita) {
		this.visitaDao.delete(idVisita);
	}

	@Override
	public List<Visita> getVisitas() {
		return this.visitaDao.getVisitas();
	}

	@Override
	public Visita getVisita(int idVisita) {
		return this.visitaDao.getVisita(idVisita);
	}

	@Override
	public Map<String, List<Visita>> getVisitasPorCliente() {
		return this.visitaDao.getVisitasPorCliente();
	}

}
