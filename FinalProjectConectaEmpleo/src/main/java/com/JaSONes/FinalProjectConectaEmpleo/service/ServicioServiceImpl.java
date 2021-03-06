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
	public int add(Servicio servicio) {
		return this.servicioDao.add(servicio);
	}

	@Override
	public int edit(Servicio servicio) {
		return this.servicioDao.edit(servicio);
	}

	@Override
	public void delete(int idServicio) {
		this.servicioDao.delete(idServicio);
	}

	@Override
	public List<Servicio> getServicios() {
		return this.servicioDao.getServicios();
	}

	@Override
	public Servicio getServicio(int idServicio) {
		return this.servicioDao.getServicio(idServicio);
	}

	@Override
	public Map<String, List<Servicio>> getServiciosPorPeluquero() {
		return this.servicioDao.getServiciosPorPeluquero();
	}

}
