package com.javaexpress.docker.dockerspringboothello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerHelloWorld {

	@GetMapping("/docker")
	public String getName() {
		
		return "Welcome to deployment in docker";
	}
	
	@GetMapping
	public String getRoot() {
		
		return "Welcome to home  ";
	}
	
	
}
