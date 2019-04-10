package com.JaSONes.FinalProjectConectaEmpleo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.JaSONes.FinalProjectConectaEmpleo.dao.UsuarioDao;
import com.JaSONes.FinalProjectConectaEmpleo.model.Usuario;

@Service("usuarioService")
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	@Qualifier("usuarioDaoImplC")
	private UsuarioDao usuarioDao;

	@Override
	public int add(Usuario usuario) {
		return this.usuarioDao.add(usuario);
	}

	@Override
	public void edit(Usuario usuario) {
		this.usuarioDao.edit(usuario);
	}

	@Override
	public void delete(int id) {
		this.usuarioDao.delete(id);
	}

	@Override
	public List<Usuario> getUsuarios() {
		return this.usuarioDao.getUsuarios();
	}

	@Override
	public Usuario getUsuario(String userApp, String passwordApp) {
		return this.usuarioDao.getUsuario(userApp, passwordApp);
	}

	@Override
	public Usuario getUsuario(int id) {
		return this.usuarioDao.getUsuario(id);
	}

}
