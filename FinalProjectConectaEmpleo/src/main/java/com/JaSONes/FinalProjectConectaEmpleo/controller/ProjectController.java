package com.JaSONes.FinalProjectConectaEmpleo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpMethodConstraint;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.JaSONes.FinalProjectConectaEmpleo.model.Usuario;
import com.JaSONes.FinalProjectConectaEmpleo.service.ClienteService;
import com.JaSONes.FinalProjectConectaEmpleo.service.ServicioService;
import com.JaSONes.FinalProjectConectaEmpleo.service.UsuarioService;
import com.google.gson.Gson;

@Controller
public class ProjectController {

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private ServicioService servicioService;
	
	@RequestMapping(value="/")
	public ModelAndView loginPage() {
		//devolvemos index.jsp y le pasamos una instancia
		//del POJO Usuario, con el fin de crear el inicio de sesión
		return new ModelAndView("index", "userLog", new Usuario());
	}	
	
	@RequestMapping(value="/userLogged", method = RequestMethod.POST)
	public void userLogged(HttpServletRequest request, 
					HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesion = request.getSession();
		
        PrintWriter out;
		out = response.getWriter();
		if (sesion.getAttribute("webUser") != null) {
			//redirijo a página de reservas si hay usuario loggeado
			out.print("userLoggedYES");
		}
		else {
			out.print("userLoggedNO");
		}
		
	}
	
	@RequestMapping(value="/loginControl", method = RequestMethod.POST)
	public void LoginControl(HttpServletRequest request, 
						HttpServletResponse response) throws IOException {		

		String webUser;
		String webPass;
		
		// Recibimos la petición a través de AJAX
		Gson gson = new Gson();
		String userJSON = request.getParameter("userJSON");
		
		// Datos de usuario y contraseña que intenta identificarse
		Usuario userLogged = gson
				.fromJson(userJSON, Usuario.class);
//		System.out.println("Usuario: " + userLogged.getLogin());
//		System.out.println("Contraseña: " + userLogged.getPasskey());
		
		// Pedimos al servicio que solicite listado de usuarios desde
		// la base de datos
		List<Usuario> usuarios = this.usuarioService.getUsuarios();
		
		// Filtramos la lista de usuarios devuelta al servicio
		// para verificar si el usuario que se identifica existe
		List<Usuario> userDB = usuarios.stream()
				.filter(u -> u.getLogin().equals(userLogged.getLogin()) && 
						u.getPasskey().equals(userLogged.getPasskey()))
					.collect(Collectors.toList());
		
		Iterator<Usuario> itUserDB = userDB.iterator();
		
		if (itUserDB.hasNext()) {
			Usuario usuarioOK = itUserDB.next();
			webUser = usuarioOK.getLogin();
			webPass = usuarioOK.getPasskey();
		}
		else {
			webUser = "";
			webPass = "";			
		}
		
		HttpSession sesion = request.getSession();
		PrintWriter out;
		out = response.getWriter();
		
		// Si el usuario existe webUser será diferente de nulo
		if (webUser != "" && webPass != "" && sesion.getAttribute("webUser") == null) {
            //si coincide usuario y password y ademï¿½s no hay sesiï¿½n iniciada
            sesion.setAttribute("webUser", webUser);
    		out.print("userLogginOK");
        } 
		else{
        	out.print("userLogginERR");
        }
		
	}
	
	@RequestMapping(value="/loginNewUser", method = RequestMethod.POST)
	public void LoginnewUser(HttpServletRequest request, 
						HttpServletResponse response) throws IOException {
		
		// Recibimos la petición a través de AJAX
		Gson gson = new Gson();
		String userJSON = request.getParameter("userJSON");
		
		// Datos de usuario y contraseña que será dado de alta
		Usuario userLogged = gson
				.fromJson(userJSON, Usuario.class);
		
		HttpSession sesion = request.getSession();
		PrintWriter out;
		out = response.getWriter();
		
		int total = this.usuarioService.add(userLogged);
		if (total>0) {
			sesion.setAttribute("webUser", userLogged.getLogin());
			out.print("userAltaOK");
		}	
		else
			out.print("userAltaERR");
		
	}
	
//	@RequestMapping(value="/")
//	public ModelAndView mainPage(ModelAndView model) {
//		// creamos el mapa que queremos mostrar en la 
//		// vista index.jsp
//		Map<String, List<Pasajero>> pasajerosPorDestino;
//		pasajerosPorDestino = this.pasajeroService.getPasajerosPorDestino();
//		model.addObject("pasajerosPorDestino", pasajerosPorDestino);
//		model.setViewName("index");
//		return model;
//	}	
	
//	@RequestMapping(value="/hello")
//	public ModelAndView hello(@RequestParam(required=false, 
//		defaultValue="World") String name) {
//		return new ModelAndView("home", "name", name);
//	}
	
}
