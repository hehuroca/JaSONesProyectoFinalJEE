package com.JaSONes.FinalProjectConectaEmpleo.config;


import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.JaSONes.FinalProjectConectaEmpleo.dao.ClienteDao;
import com.JaSONes.FinalProjectConectaEmpleo.dao.ClienteDaoImpl;
import com.JaSONes.FinalProjectConectaEmpleo.dao.ServicioDao;
import com.JaSONes.FinalProjectConectaEmpleo.dao.ServicioDaoImpl;
import com.JaSONes.FinalProjectConectaEmpleo.dao.UsuarioDao;
import com.JaSONes.FinalProjectConectaEmpleo.dao.UsuarioDaoImpl;



@Configuration
@ComponentScan(basePackages="com.JaSONes")
@EnableWebMvc
public class MvcConfiguration implements WebMvcConfigurer {

	//Agregamos desde Source --> Override/Implements Methods
	// el método configureViewResolvers
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp().prefix("WEB-INF/views/");
		registry.jsp().suffix("jsp");
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
		source.setBasename("messages");
		return source;
	}
    
	@Bean
	public DataSource getJdbcDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        //String urlConnection = "jdbc:mysql://localhost:3306/basedatospeluqueria";
      	String urlConnection = "jdbc:mysql://localhost:3306/basedatospeluqueria?" 
      				+ "useUnicode=true&useJDBCCompliantTimezoneShift=true&"
                    + "useLegacyDatetimeCode=false&serverTimezone=UTC";
        dataSource.setUrl(urlConnection);
        dataSource.setUsername("root");
        dataSource.setPassword("Temp2019$$");
        
        return dataSource;
	}
	
	@Bean
	public ClienteDao getPasajeroDao() {
		return new ClienteDaoImpl(getJdbcDataSource());
	}
	
	@Bean
	public UsuarioDao getUsuarioDao() {
		return new UsuarioDaoImpl(getJdbcDataSource());
	}
	
	@Bean
	public ServicioDao getVueloDao() {
		return new ServicioDaoImpl(getJdbcDataSource());
	}
	
	
}
