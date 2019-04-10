package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.JaSONes.FinalProjectConectaEmpleo.dao.ClienteDao;
import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente;

@Service("clienteService")
public class ClienteServiceImpl implements ClienteService{

	@Autowired
	@Qualifier("clienteDaoImplC")
	private ClienteDao clienteDao;
	
	@Override
	public int add(Cliente cliente) {
		return this.clienteDao.add(cliente);
	}

	@Override
	public void edit(Cliente cliente) {
		this.clienteDao.edit(cliente);
	}

	@Override
	public void delete(String dni) {
		this.clienteDao.delete(dni);
	}

	@Override
	public List<Cliente> getClientes() {
		return this.clienteDao.getClientes();
	}

	@Override
	public Cliente getCliente(String dni) {
		return this.clienteDao.getCliente(dni);
	}

	@Override
	public Map<String, List<Cliente>> getClientesPorServicios() {
		return this.clienteDao.getClientesPorServicios();
	}

	@Override
	public List<Cliente> getClientesVisitas() {
		return this.clienteDao.getClientesVisitas();
	}

}
