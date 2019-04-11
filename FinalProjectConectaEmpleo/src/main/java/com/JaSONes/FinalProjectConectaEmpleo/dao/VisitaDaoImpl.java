package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.JaSONes.FinalProjectConectaEmpleo.model.Visita;

@Component("visitaDaoImplC")
@Repository
public class VisitaDaoImpl implements VisitaDao {
    private SimpleJdbcInsert tblVisita;
	private JdbcTemplate jdbcTemplate;

	public VisitaDaoImpl(DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	    this.tblVisita = 
                new SimpleJdbcInsert(dataSource)
                	.withTableName("visita")
                	.usingGeneratedKeyColumns("id");;
	}

	@Override
	public int add(Visita visita) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void edit(Visita visita) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int idVisita) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Visita> getVisitas() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Visita getVisita(int idVisita) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, List<Visita>> getVisitasPorCliente() {
		// TODO Auto-generated method stub
		return null;
	}

}
