package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.JaSONes.FinalProjectConectaEmpleo.dao.ServicioDao;
import com.JaSONes.FinalProjectConectaEmpleo.model.Servicio;

@Service("servicioService")
public class ServicioServiceImpl implements ServicioService {
	
	@Autowired
	@Qualifier("servicioDaoImplC")
	private ServicioDao servicioDao;

	@Override
	public int addORupdate(Servicio servicio) {
		return this.servicioDao.addORupdate(servicio);
	}

	@Override
	public void edit(int id) {
		this.servicioDao.edit(id);
	}

	@Override
	public void delete(int id) {
		this.servicioDao.delete(id);
	}

	@Override
	public List<Servicio> getServicios() {
		return this.servicioDao.getServicios();
	}

	@Override
	public Servicio getServicio(int id) {
		return this.servicioDao.getServicio(id);
	}

	@Override
	public Map<String, List<Servicio>> getServiciosPorPeluquero() {
		return this.servicioDao.getServiciosPorPeluquero();
	}

}
