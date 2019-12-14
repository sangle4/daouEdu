package com.config;

import java.util.EnumSet;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

@Configuration
public class WebInitializer implements WebApplicationInitializer {
	
	private static final String CONFIG_LOCATION="com.config";

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
				AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
				
				//config 설정한 클래스 위치
				context.setConfigLocation(CONFIG_LOCATION);
				
				ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(context));
				
				dispatcher.setLoadOnStartup(1); //톰캣 같은 컨테이너가 웹 어플을 구동할 때 이 서블릿을 함께 실행하도록 설정
				dispatcher.addMapping("/");
				
				// 인코딩 설정
		        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		        characterEncodingFilter.setEncoding("UTF-8");
		        characterEncodingFilter.setForceEncoding(true);
		        characterEncodingFilter.setForceRequestEncoding(true);
		        
		        FilterRegistration.Dynamic characterEncoding = servletContext.addFilter("characterEncoding", characterEncodingFilter);
		        EnumSet<DispatcherType> dispatcherTypes = EnumSet.of(DispatcherType.REQUEST, DispatcherType.FORWARD);
		        characterEncoding.addMappingForUrlPatterns(dispatcherTypes, true, "/*");
		
        
	}
}
