/* AdministratorController.java
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/back")
public class DashboardController extends AbstractController {

	// Constructors -----------------------------------------------------------
	
	public DashboardController() {
		super();
	}
		
	// Action-1 ---------------------------------------------------------------		

	@RequestMapping("/dashboard")
	public ModelAndView action1() {
		ModelAndView result;
				
		result = new ModelAndView("back/dashboard");
		result.addObject("requestURI", "encuesta/create.do");
		
		return result;
	}
	
	
}