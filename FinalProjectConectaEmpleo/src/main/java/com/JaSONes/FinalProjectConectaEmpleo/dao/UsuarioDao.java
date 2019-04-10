package com.JaSONes.FinalProjectConectaEmpleo.dao;

import java.util.List;

import com.JaSONes.FinalProjectConectaEmpleo.model.Usuario;


// Interface para la tabla Usuarios Web de la Base de datos
// Define los métodos a ser implementados para su gestión
public interface UsuarioDao {

	public int add(Usuario usuario);
	public void edit(Usuario usuario);
	public void delete(int id);
	public Usuario getUsuario(int id);
	public List<Usuario> getUsuarios();
	public Usuario getUsuario(String userApp, String passwordApp);
	
}
