package br.com.casadocodigo.loja.controllers;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerController {
	
	@ExceptionHandler(Exception.class)
	public String trataExceptionGenerica(Exception ex) {
		
		System.err.println("Erro: " + ex.getMessage());
		
		return "error";
		
	}

}
