package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.JaSONes.FinalProjectConectaEmpleo.model.Usuario;


// Clase que implementa los mï¿½todos definidos en la
// Interface UsuarioDao, para la gestiï¿½n de los usuarios
// que se "loggean" en la aplicaciï¿½n web

@Component("usuarioDaoImplC")
@Repository
public class UsuarioDaoImpl implements UsuarioDao {
	private SimpleJdbcInsert tblUsuario;
	private JdbcTemplate jdbcTemplate;
	
	public UsuarioDaoImpl(DataSource dataSource) {
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
	    this.tblUsuario = 
                new SimpleJdbcInsert(dataSource)
                	.withTableName("usuario")
                	.usingGeneratedKeyColumns("id");
	}

	@Override
	public int add(Usuario usuario) {
		int totalRegistros = 0;
		
        // insert
        // Mapeamos las columnas de la tabla de usuarios
		// los nombres usados entre las "" han de ser idénticos
		// a los de los campos de la tabla
        Map<String, Object> parameters = new HashMap<String, Object>(6);
        parameters.put("login", usuario.getLogin());
        parameters.put("passkey", usuario.getPasskey());
        // Aquí capturamos el Id Generado
        Number newId = tblUsuario.executeAndReturnKey(parameters);
        totalRegistros = newId.intValue();
        usuario.setId(newId.intValue());   
            
        return totalRegistros;
	}

	@Override
	public void edit(Usuario usuario) {
        // update
        String sql = "UPDATE `basedatospeluqueria`.`usuario` " + 
        		"SET `login` = ?, `passkey` = ? " + 
        		"WHERE (`id` = ?)";
        jdbcTemplate.update(sql, 
        		usuario.getLogin(), 
        		usuario.getPasskey(),
        		usuario.getId());
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM `basedatospeluqueria`.`usuario` "
				   + "WHERE (`id` = ?)";
		jdbcTemplate.update(sql, id);
		
	}

	@Override
	public List<Usuario> getUsuarios() {
	    String sql = "SELECT * FROM usuario";    
	    List<Usuario> usuarios = jdbcTemplate.query(sql, new RowMapper<Usuario>() {
	        @Override
	        public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	Usuario usuario = new Usuario();
	        	usuario.setId(rs.getInt("id"));
	        	usuario.setLogin(rs.getString("login"));
	        	usuario.setPasskey(rs.getString("passkey"));
	            return usuario;
	        }
	    });
		return usuarios;
	}

	@Override
	public Usuario getUsuario(String userApp, String passwordApp) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario getUsuario(int id) {
		
		return null;
	}

}
