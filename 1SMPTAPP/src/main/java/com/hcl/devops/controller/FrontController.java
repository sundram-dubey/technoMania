package com.hcl.devops.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hcl.devops.model.EmailRequest;
import com.hcl.devops.service.EmailService;

@RestController
public class FrontController {

	@GetMapping("viewPage")
	public ModelAndView getPage() {
		return new ModelAndView("index");
	}

	@PostMapping( value = "sendMail", consumes = {org.springframework.http.MediaType.APPLICATION_JSON_VALUE, org.springframework.http.MediaType.APPLICATION_XML_VALUE}, produces = {org.springframework.http.MediaType.APPLICATION_JSON_VALUE, org.springframework.http.MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody ResponseEntity<?> sendMail(@RequestBody EmailRequest map) {
		System.err.println("FrontController.sendMail() " + map);
		EmailService.sendEmail(map.getMsg(), map.getSub(), map.getTo(),map.getFrom());
		ResponseEntity<String> response = null;
		return response;
	}
}
