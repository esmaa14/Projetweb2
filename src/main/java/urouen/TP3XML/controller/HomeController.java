package urouen.TP3XML.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
	@RequestMapping(value="/inscription")
	public ModelAndView inscription(HttpServletResponse response) throws IOException{
		return new ModelAndView("inscription");
	}
	@RequestMapping(value="/resumer")
	public ModelAndView resume(HttpServletResponse response) throws IOException{
		return new ModelAndView("resumer");
	}
	@RequestMapping(value="/detail")
	public ModelAndView detail(HttpServletResponse response) throws IOException{
		return new ModelAndView("detail");
	}
	@RequestMapping(value="/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView("add");
	}
	 
}



