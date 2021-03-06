package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;
import java.util.Map;

import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente;

public interface ClienteService {

	public int add(Cliente cliente);
	public int edit(Cliente cliente);
	public void delete(String dni);
	public List<Cliente> getClientes();
	public Cliente getCliente(String dni);
	public Map<String, List<Cliente>> getClientesPorServicios();
	public List<Cliente> getClientesVisitas();
	
}
