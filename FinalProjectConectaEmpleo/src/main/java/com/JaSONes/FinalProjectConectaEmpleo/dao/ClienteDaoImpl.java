package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente;

@Component("clienteDaoImplC")
@Repository
public class ClienteDaoImpl implements ClienteDao {
	
    private SimpleJdbcInsert tblCliente;
	private JdbcTemplate jdbcTemplate;

	public ClienteDaoImpl(DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	    this.tblCliente = 
                new SimpleJdbcInsert(dataSource)
                	.withTableName("cliente");
	}
	
	@Override
	public int addORupdate(Cliente cliente) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void edit(String dni) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String dni) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Cliente> getClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cliente getCliente(String dni) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, List<Cliente>> getClientesPorServicios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cliente> getClientesVisitas() {
		// TODO Auto-generated method stub
		return null;
	}

}
