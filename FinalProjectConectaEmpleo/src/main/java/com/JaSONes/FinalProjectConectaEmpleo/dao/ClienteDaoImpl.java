package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente;
import com.JaSONes.FinalProjectConectaEmpleo.model.Cliente.Sexo;

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
	public int add(Cliente cliente) {
		int totalRegistros = 0;
		
        // insert
        // Mapeamos las columnas de la tabla pasajeros
		// los nombres usados entre las "" han de ser idénticos
		// a los de los campos de la tabla
        Map<String, Object> parameters = new HashMap<String, Object>(6);
        parameters.put("dni", cliente.getDni());
        parameters.put("nombre", cliente.getNombre());
        parameters.put("primerApellido", cliente.getPrimerApellido());
        parameters.put("segundoApellido", cliente.getSegundoApellido());
        parameters.put("fechaNacimiento", cliente.getFechaNacimiento());
        parameters.put("sexo", cliente.getSexo());
        parameters.put("telefono", cliente.getTelefono());
        parameters.put("mail", cliente.getMail());
        // Aquí capturamos el Id Generado
        totalRegistros = tblCliente.execute(parameters);
            
        return totalRegistros;
	}

	@Override
	public int edit(Cliente cliente) {
        // update
        String sql = "UPDATE `basedatospeluqueria`.`cliente` " + 
        		"SET `nombre` = ?, `primerApellido` = ?, " + 
        		"`segundoApellido` = ?, `fechaNacimiento` = ?, " + 
        		"`sexo` = ? WHERE (`dni` = ?)";
        int total = jdbcTemplate.update(sql, 
        		cliente.getNombre(),
        		cliente.getPrimerApellido(),
        		cliente.getSegundoApellido(),
        		cliente.getFechaNacimiento(),
        		cliente.getSexo().toString(),
        		cliente.getDni());
        return total;
	}

	@Override
	public void delete(String dni) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Cliente> getClientes() {
	    String sql = "SELECT * FROM cliente ORDER BY primerApellido ASC";    
	    List<Cliente> clientes = jdbcTemplate.query(sql, new RowMapper<Cliente>() {
	        @Override
	        public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
            	Cliente cliente = new Cliente();
            	cliente.setNombre(rs.getString("nombre"));
            	cliente.setDni(rs.getString("dni"));
            	cliente.setPrimerApellido(rs.getString("primerApellido"));
            	cliente.setSegundoApellido(rs.getString("segundoApellido"));
            	cliente.setFechaNacimiento(rs.getDate("fechaNacimiento").toLocalDate());
            	cliente.setSexo((rs.getString("sexo") == "MUJER")? Sexo.MUJER:Sexo.HOMBRE);
            	cliente.setTelefono(rs.getString("telefono"));
            	cliente.setMail(rs.getString("mail"));
                return cliente;
	        }
	    });
		return clientes;
	}

	@Override
	public Cliente getCliente(String dni) {
	    String sql = "SELECT * FROM cliente WHERE dni='" + dni + "'";
	    return jdbcTemplate.query(sql, new ResultSetExtractor<Cliente>() {
	        @Override
	        public Cliente extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	            if (rs.next()) {
	            	Cliente cliente = new Cliente();
	            	cliente.setNombre(rs.getString("nombre"));
	            	cliente.setDni(rs.getString("dni"));
	            	cliente.setPrimerApellido(rs.getString("primerApellido"));
	            	cliente.setSegundoApellido(rs.getString("segundoApellido"));
	            	cliente.setFechaNacimiento(rs.getDate("fechaNacimiento").toLocalDate());
	            	cliente.setSexo((rs.getString("sexo") == "MUJER")? Sexo.MUJER:Sexo.HOMBRE);
	            	cliente.setTelefono(rs.getString("telefono"));
	            	cliente.setMail(rs.getString("mail"));
	                return cliente;
	            }            
	            return null;
	        }
	    });
	}

	@Override
	public Map<String, List<Cliente>> getClientesPorServicios() {
		return null;
	}

	@Override
	public List<Cliente> getClientesVisitas() {
	    String sql = "SELECT cliente.*, visita.* " + 
	    		"FROM visita LEFT JOIN cliente " + 
	    		"on cliente.dni = visita.idCliente " + 
	    		"ORDER BY fechaVisita ASC, horaVisita ASC";
	    List<Cliente> clientesVisitas = jdbcTemplate.query(sql, new RowMapper<Cliente>() {	 
	        @Override
	        public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	Cliente clienteVisitas = new Cliente();
	        	// Datos Cliente
	        	clienteVisitas.setNombre(rs.getString("nombre"));
	        	clienteVisitas.setDni(rs.getString("dni"));
	        	clienteVisitas.setPrimerApellido(rs.getString("primerApellido"));
	        	clienteVisitas.setSegundoApellido(rs.getString("segundoApellido"));
	        	clienteVisitas.setFechaNacimiento(rs.getDate("fechaNacimiento").toLocalDate());
	        	clienteVisitas.setSexo((rs.getString("sexo") == "MUJER")? Sexo.MUJER:Sexo.HOMBRE);
	        	clienteVisitas.setTelefono(rs.getString("telefono"));
	        	clienteVisitas.setMail(rs.getString("mail"));
	        	// Datos Visita
	        	clienteVisitas.setIdVisita(rs.getInt("idVisita"));
	        	clienteVisitas.setFechaVisita(rs.getDate("fechaVisita").toLocalDate());
	        	clienteVisitas.setHoraVisita(rs.getTime("horaVisita").toLocalTime());
	        	clienteVisitas.setIdCliente(rs.getString("idCliente"));
	        	clienteVisitas.setIdServicio(rs.getInt("idService"));
	        	clienteVisitas.setIdUsuario(rs.getInt("idUsuario"));
	            return clienteVisitas;
	        }	 
	    });
		return clientesVisitas;
	}

}
