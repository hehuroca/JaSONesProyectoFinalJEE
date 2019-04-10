package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente;

public interface ClienteService {

	public int addORupdate(Cliente cliente);
	public void edit(String dni);
	public void delete(String dni);
	public List<Cliente> getClientes();
	public Cliente getCliente(String dni);
	public Map<String, List<Cliente>> getClientesPorServicios();
	public List<Cliente> getClientesVisitas();
	
}
