package com.JaSONes.FinalProjectConectaEmpleo.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class InitializerConfig implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext container) throws ServletException {
		// TODO Auto-generated method stub
		
		// Creamos el contexto
		AnnotationConfigWebApplicationContext context;
		context = new AnnotationConfigWebApplicationContext();
		// Le indicamos donde debe buscar los bean
		context.setConfigLocation("com.JaSONes.FinalProjectConectaEmpleo");
		// Lo ponemos a escuchar
		container.addListener(new ContextLoaderListener(context));
		// Informamos como se llama el Dispatcher Servlet
		ServletRegistration.Dynamic dispatcher = 
				container.addServlet("dispatcher", new DispatcherServlet(context));
		// Ahora lo cargamos de inicio
		dispatcher.setLoadOnStartup(1);
		// Le indicamos que cargue todo aquéllo que acabe en /
		// en vez de poner *.html
		dispatcher.addMapping("/");
		

	}
	
}
