package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.JaSONes.FinalProjectConectaEmpleo.model.Servicio;

@Component("servicioDaoImplC")
@Repository
public class ServicioDaoImpl implements ServicioDao{
	
    private SimpleJdbcInsert tblServicio;
	private JdbcTemplate jdbcTemplate;

	public ServicioDaoImpl(DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	    this.tblServicio = 
                new SimpleJdbcInsert(dataSource)
                	.withTableName("servicio")
                	.usingGeneratedKeyColumns("id");
	}

	@Override
	public int add(Servicio servicio) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void edit(Servicio servicio) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Servicio> getServicios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Servicio getServicio(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, List<Servicio>> getServiciosPorPeluquero() {
		// TODO Auto-generated method stub
		return null;
	}

}
