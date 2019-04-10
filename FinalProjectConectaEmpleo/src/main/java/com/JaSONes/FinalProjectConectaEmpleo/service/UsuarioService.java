package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;

import com.JaSONes.FinalProjectConectaEmpleo.model.Usuario;

public interface UsuarioService {
	
	public int addORupdate(Usuario usuario);
	public void edit(int id);
	public void delete(int id);
	public Usuario getUsuario(int id);
	public List<Usuario> getUsuarios();
	public Usuario getUsuario(String userApp, String passwordApp);
	
}
