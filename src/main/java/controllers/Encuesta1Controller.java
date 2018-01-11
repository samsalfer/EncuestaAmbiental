/* tipoCIF1Controller.java
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.TimeZone;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.ActorService;
import services.TipoCIF1Service;
import services.TipoCIF2Service;
import services.TipoCIF3Service;
import services.TipoCIF4Service;
import domain.Cnae;
import domain.Municipios;
import domain.TipoCIF1;
import domain.TipoCIF2;
import domain.TipoCIF3;
import domain.TipoCIF4;
import forms.Tipo1Form;
import forms.Tipo1FormularioCincoForm;
import forms.Tipo1FormularioCuatroForm;
import forms.Tipo1FormularioDosForm;
import forms.Tipo1FormularioSeisForm;
import forms.Tipo1FormularioSieteForm;
import forms.Tipo1FormularioTresForm;
import forms.Tipo1FormularioUnoForm;
import forms.Tipo2Form;
import forms.Tipo2FormularioCincoForm;
import forms.Tipo2FormularioCuatroForm;
import forms.Tipo2FormularioDosForm;
import forms.Tipo2FormularioSeisForm;
import forms.Tipo2FormularioSieteForm;
import forms.Tipo2FormularioTresForm;
import forms.Tipo2FormularioUnoForm;
import forms.Tipo3Form;
import forms.Tipo3FormularioCuatroForm;
import forms.Tipo3FormularioDosForm;
import forms.Tipo3FormularioTresForm;
import forms.Tipo3FormularioUnoForm;
import forms.Tipo4Form;
import forms.Tipo4FormularioCincoForm;
import forms.Tipo4FormularioCuatroForm;
import forms.Tipo4FormularioDosForm;
import forms.Tipo4FormularioSeisForm;
import forms.Tipo4FormularioTresForm;
import forms.Tipo4FormularioUnoForm;

@Controller
@RequestMapping("/encuesta")
public class Encuesta1Controller extends AbstractController {

	@Autowired
	private TipoCIF1Service tipoCIF1Service;

	@Autowired
	private TipoCIF2Service tipoCIF2Service;

	@Autowired
	private TipoCIF3Service tipoCIF3Service;
	
	@Autowired
	private TipoCIF4Service tipoCIF4Service;

	@Autowired
	private ActorService actorService;

	// Constructors -----------------------------------------------------------

	public Encuesta1Controller() {
		super();
	}

	@RequestMapping("/cookies")
	public ModelAndView cookies() {
		ModelAndView result;

		result = new ModelAndView("encuesta/cookies");
		result.addObject("requestURI", "encuesta/cookies.do");

		return result;
	}

	@RequestMapping("/dashboard")
	public ModelAndView dashboard() {
		ModelAndView result;

		result = new ModelAndView("encuesta/dashboard");
		result.addObject("requestURI", "encuesta/dashboard.do");

		return result;
	}

	@RequestMapping("/bienvenida")
	public ModelAndView bienvenida() {
		ModelAndView result;

		Long totalTipo1 = tipoCIF1Service.totalTipo1();
		Long totalNoIncidenciasTipo1 = tipoCIF1Service
				.totalNoIncidenciasTipo1();
		Long totalIncidenciasTipo1 = tipoCIF1Service.totalIncidenciasTipo1();
		Long totalDevueltosPorSerNoAmbientalTipo1 = tipoCIF1Service
				.totalDevueltosPorSerNoAmbientalTipo1();
		Long totalNumeroRevisadosTipo1 = tipoCIF1Service
				.totalNumeroRevisadosTipo1();
		Long totalNumeroValidadosTipo1 = tipoCIF1Service
				.totalNumeroValidadosTipo1();

		Long totalTipo2 = tipoCIF2Service.totalTipo2();
		Long totalNoIncidenciasTipo2 = tipoCIF2Service
				.totalNoIncidenciasTipo2();
		Long totalIncidenciasTipo2 = tipoCIF2Service.totalIncidenciasTipo2();
		Long totalDevueltosPorSerNoAmbientalTipo2 = tipoCIF2Service
				.totalDevueltosPorSerNoAmbientalTipo2();
		Long totalNumeroRevisadosTipo2 = tipoCIF2Service
				.totalNumeroRevisadosTipo2();
		Long totalNumeroValidadosTipo2 = tipoCIF2Service
				.totalNumeroValidadosTipo2();

		Long totalTipo3 = tipoCIF3Service.totalTipo3();
		Long totalNoIncidenciasTipo3 = tipoCIF3Service
				.totalNoIncidenciasTipo3();
		Long totalIncidenciasTipo3 = tipoCIF3Service.totalIncidenciasTipo3();
		Long totalDevueltosPorSerNoAmbientalTipo3 = tipoCIF3Service
				.totalDevueltosPorSerNoAmbientalTipo3();
		Long totalNumeroRevisadosTipo3 = tipoCIF3Service
				.totalNumeroRevisadosTipo3();
		Long totalNumeroValidadosTipo3 = tipoCIF3Service
				.totalNumeroValidadosTipo3();
		
		Long totalTipo4 = tipoCIF4Service.totalTipo4();
		Long totalNoIncidenciasTipo4 = tipoCIF4Service
				.totalNoIncidenciasTipo4();
		Long totalIncidenciasTipo4 = tipoCIF4Service.totalIncidenciasTipo4();
		Long totalDevueltosPorSerNoAmbientalTipo4 = tipoCIF4Service
				.totalDevueltosPorSerNoAmbientalTipo4();
		Long totalNumeroRevisadosTipo4 = tipoCIF4Service
				.totalNumeroRevisadosTipo4();
		Long totalNumeroValidadosTipo4 = tipoCIF4Service
				.totalNumeroValidadosTipo4();

		result = new ModelAndView("encuesta/bienvenida");
		result.addObject("requestURI", "encuesta/bienvenida.do");
		result.addObject("totalTipo1", totalTipo1);
		result.addObject("totalNoIncidenciasTipo1", totalNoIncidenciasTipo1);
		result.addObject("totalIncidenciasTipo1", totalIncidenciasTipo1);
		result.addObject("totalDevueltosPorSerNoAmbientalTipo1",
				totalDevueltosPorSerNoAmbientalTipo1);
		result.addObject("totalNumeroRevisadosTipo1", totalNumeroRevisadosTipo1);
		result.addObject("totalNumeroValidadosTipo1", totalNumeroValidadosTipo1);

		result.addObject("totalTipo2", totalTipo2);
		result.addObject("totalNoIncidenciasTipo2", totalNoIncidenciasTipo2);
		result.addObject("totalIncidenciasTipo2", totalIncidenciasTipo2);
		result.addObject("totalDevueltosPorSerNoAmbientalTipo2",
				totalDevueltosPorSerNoAmbientalTipo2);
		result.addObject("totalNumeroRevisadosTipo2", totalNumeroRevisadosTipo2);
		result.addObject("totalNumeroValidadosTipo2", totalNumeroValidadosTipo2);

		result.addObject("totalTipo3", totalTipo3);
		result.addObject("totalNoIncidenciasTipo3", totalNoIncidenciasTipo3);
		result.addObject("totalIncidenciasTipo3", totalIncidenciasTipo3);
		result.addObject("totalDevueltosPorSerNoAmbientalTipo3",
				totalDevueltosPorSerNoAmbientalTipo3);
		result.addObject("totalNumeroRevisadosTipo3", totalNumeroRevisadosTipo3);
		result.addObject("totalNumeroValidadosTipo3", totalNumeroValidadosTipo3);
		
		result.addObject("totalTipo4", totalTipo4);
		result.addObject("totalNoIncidenciasTipo4", totalNoIncidenciasTipo4);
		result.addObject("totalIncidenciasTipo4", totalIncidenciasTipo4);
		result.addObject("totalDevueltosPorSerNoAmbientalTipo4",
				totalDevueltosPorSerNoAmbientalTipo4);
		result.addObject("totalNumeroRevisadosTipo4", totalNumeroRevisadosTipo4);
		result.addObject("totalNumeroValidadosTipo4", totalNumeroValidadosTipo4);

		return result;
	}

	@RequestMapping("/gracias")
	public ModelAndView gracias() {
		ModelAndView result;

		result = new ModelAndView("encuesta/gracias");
		result.addObject("requestURI", "encuesta/gracias.do");

		return result;
	}

	@RequestMapping("/cif1/encuestaValida")
	public ModelAndView valida1(int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipoCIF1;
		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("requestURI", "encuesta/valida.do");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping("/cif2/encuestaValida")
	public ModelAndView valida2(int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipoCIF2;
		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("requestURI", "encuesta/valida.do");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping("/cif3/encuestaValida")
	public ModelAndView valida3(int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipoCIF3;
		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("requestURI", "encuesta/valida.do");
		result.addObject("tipoCIF3", tipoCIF3);

		return result;
	}
	
	@RequestMapping("/cif4/encuestaValida")
	public ModelAndView valida4(int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipoCIF4;
		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("requestURI", "encuesta/valida.do");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	// ///Pagina uno ----------------------------------------

	@RequestMapping(value = "/cif1/paginaUno")
	public ModelAndView crearp4() {
		ModelAndView result;
		Tipo1FormularioUnoForm formularioUnoForm;
		TipoCIF1 tipoCIF1;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		int id = tipoCIF1Service.findByPrincipal().getId();
		tipoCIF1 = tipoCIF1Service.findOne(id);

		formularioUnoForm = tipoCIF1Service.formularioUnoToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif1/paginaUno.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("municipios", municipios);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView crear(@Valid Tipo1FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service.reconstructCreate(formularioUnoForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:paginaDos.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaUno")
	public ModelAndView crearPagina2() {
		ModelAndView result;
		Tipo2FormularioUnoForm formularioUnoForm;
		TipoCIF2 tipoCIF2;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		int id = tipoCIF2Service.findByPrincipal().getId();
		tipoCIF2 = tipoCIF2Service.findOne(id);

		formularioUnoForm = tipoCIF2Service.formularioUnoToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif2/paginaUno.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("municipios", municipios);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView crear(@Valid Tipo2FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service.reconstructCreate(formularioUnoForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:paginaDos.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/paginaUno")
	public ModelAndView crearPagina3() {
		ModelAndView result;
		Tipo3FormularioUnoForm formularioUnoForm;
		TipoCIF3 tipoCIF3;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		int id = tipoCIF3Service.findByPrincipal().getId();
		tipoCIF3 = tipoCIF3Service.findOne(id);

		formularioUnoForm = tipoCIF3Service.formularioUnoToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif3/paginaUno.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("municipios", municipios);

		return result;
	}

	@RequestMapping(value = "/cif3/paginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView crear3(@Valid Tipo3FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;
		TipoCIF3 principal;

		principal = tipoCIF3Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF3 = tipoCIF3Service.reconstructCreate(formularioUnoForm);

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView("redirect:paginaDos.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaUno")
	public ModelAndView crear() {
		ModelAndView result;
		Tipo4FormularioUnoForm formularioUnoForm;
		TipoCIF4 tipoCIF4;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		int id = tipoCIF4Service.findByPrincipal().getId();
		tipoCIF4 = tipoCIF4Service.findOne(id);

		formularioUnoForm = tipoCIF4Service.formularioUnoToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif4/paginaUno.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("municipios", municipios);

		return result;
	}

	@RequestMapping(value = "/cif4/paginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView crear(@Valid Tipo4FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service.reconstructCreate(formularioUnoForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView("redirect:paginaDos.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	// ///Pagina dos ----------------------------------------

	@RequestMapping(value = "/cif1/paginaDos")
	public ModelAndView crear2p4() {
		ModelAndView result;
		Tipo1FormularioDosForm formularioDosForm;
		TipoCIF1 tipoCIF1;
		Collection<Cnae> cnaes;

		int id = tipoCIF1Service.findByPrincipal().getId();
		tipoCIF1 = tipoCIF1Service.findOne(id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF1Service.formularioDosToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif1/paginaDos.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("cnaes", cnaes);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView crear2(@Valid Tipo1FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate2(formularioDosForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:paginaTres.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaDos")
	public ModelAndView crear2p() {
		ModelAndView result;
		Tipo2FormularioDosForm formularioDosForm;
		TipoCIF2 tipoCIF2;
		Collection<Cnae> cnaes;

		int id = tipoCIF2Service.findByPrincipal().getId();
		tipoCIF2 = tipoCIF2Service.findOne(id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF2Service.formularioDosToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif2/paginaDos.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("cnaes", cnaes);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView crear2p2(
			@Valid Tipo2FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate2(formularioDosForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:paginaTres.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/paginaDos")
	public ModelAndView crear3p3() {
		ModelAndView result;
		Tipo3FormularioDosForm formularioDosForm;
		TipoCIF3 tipoCIF3;
		Collection<Cnae> cnaes;

		int id = tipoCIF3Service.findByPrincipal().getId();
		tipoCIF3 = tipoCIF3Service.findOne(id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF3Service.formularioDosToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif3/paginaDos.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("cnaes", cnaes);

		return result;
	}

	@RequestMapping(value = "/cif3/paginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView crear2p2(
			@Valid Tipo3FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;
		TipoCIF3 principal;

		principal = tipoCIF3Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate2(formularioDosForm);

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView("redirect:paginaTres.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaDos")
	public ModelAndView crear2() {
		ModelAndView result;
		Tipo4FormularioDosForm formularioDosForm;
		TipoCIF4 tipoCIF4;
		Collection<Cnae> cnaes;

		int id = tipoCIF4Service.findByPrincipal().getId();
		tipoCIF4 = tipoCIF4Service.findOne(id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF4Service.formularioDosToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif4/paginaDos.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("cnaes", cnaes);

		return result;
	}

	@RequestMapping(value = "/cif4/paginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView crear2(@Valid Tipo4FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate2(formularioDosForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView("redirect:paginaTres.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	// Pagina 3-------------------------------------------------------

	@RequestMapping(value = "/cif1/paginaTres")
	public ModelAndView crear3p4() {
		ModelAndView result;
		Tipo1FormularioTresForm formularioTresForm;
		TipoCIF1 tipoCIF1;

		tipoCIF1 = tipoCIF1Service.findByPrincipal();

		formularioTresForm = tipoCIF1Service.formularioTresToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif1/paginaTres.do");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView crear3(
			@Valid Tipo1FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate3(formularioTresForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:paginaCuatro.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaTres")
	public ModelAndView crear3p() {
		ModelAndView result;
		Tipo2FormularioTresForm formularioTresForm;
		TipoCIF2 tipoCIF2;

		tipoCIF2 = tipoCIF2Service.findByPrincipal();

		formularioTresForm = tipoCIF2Service.formularioTresToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif2/paginaTres.do");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView crear3(
			@Valid Tipo2FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate3(formularioTresForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:paginaCuatro.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/paginaTres")
	public ModelAndView crear3p3s() {
		ModelAndView result;
		Tipo3FormularioTresForm formularioTresForm;
		TipoCIF3 tipoCIF3;

		String array;
		BigDecimal totalEmpleo;
		
		tipoCIF3 = tipoCIF3Service.findByPrincipal();
		array = tipoCIF3Service.conversionArray(tipoCIF3);
		totalEmpleo = tipoCIF3.getFormularioDos().getA2112();
		formularioTresForm = tipoCIF3Service.formularioTresToForm(tipoCIF3);
		

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif3/paginaTres.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("array", array);
		result.addObject("totalEmpleo", totalEmpleo);

		return result;
	}

	@RequestMapping(value = "/cif3/paginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView crear3(
			@Valid Tipo3FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;
		TipoCIF3 principal;

		principal = tipoCIF3Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate3(formularioTresForm);

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView("redirect:paginaCuatro.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaTres")
	public ModelAndView crear3() {
		ModelAndView result;
		Tipo4FormularioTresForm formularioTresForm;
		TipoCIF4 tipoCIF4;

		tipoCIF4 = tipoCIF4Service.findByPrincipal();

		formularioTresForm = tipoCIF4Service.formularioTresToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif4/paginaTres.do");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	@RequestMapping(value = "/cif4/paginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView crear3(
			@Valid Tipo4FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate3(formularioTresForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView("redirect:paginaCuatro.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	// Pagina 4

	@RequestMapping(value = "/cif1/paginaCuatro")
	public ModelAndView crear4p4() {
		ModelAndView result;
		Tipo1FormularioCuatroForm formularioCuatroForm;
		TipoCIF1 tipoCIF1;
		BigDecimal facturacionAuxiliar;

		tipoCIF1 = tipoCIF1Service.findByPrincipal();
		facturacionAuxiliar = tipoCIF1.getFormularioTres().getA42();
		formularioCuatroForm = tipoCIF1Service.formularioCuatroToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif1/paginaCuatro.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("facturacionAuxiliar", facturacionAuxiliar);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView crear4(
			@Valid Tipo1FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:paginaCinco.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaCuatro")
	public ModelAndView crear4p() {
		ModelAndView result;
		Tipo2FormularioCuatroForm formularioCuatroForm;
		TipoCIF2 tipoCIF2;
		Boolean comprobacionFormacionAmbiental;
		Boolean comprobacionEducacion;
		Boolean comprobacionInvestigacion;

		tipoCIF2 = tipoCIF2Service.findByPrincipal();
		comprobacionFormacionAmbiental = tipoCIF2.getFormularioTres()
				.getA43011().equals(0)
				&& tipoCIF2.getFormularioTres().getA43012().equals(0);
		comprobacionEducacion = !(tipoCIF2.getFormularioTres().getA43011()
				.equals(0)
				&& tipoCIF2.getFormularioTres().getA43012().equals(0)
				&& tipoCIF2.getFormularioTres().getA43021().equals(0) && tipoCIF2
				.getFormularioTres().getA43022().equals(0));
		comprobacionInvestigacion = !(tipoCIF2.getFormularioTres().getA43031()
				.equals(0) && tipoCIF2.getFormularioTres().getA43032()
				.equals(0));

		formularioCuatroForm = tipoCIF2Service.formularioCuatroToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif2/paginaCuatro.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("comprobacionFormacionAmbiental",
				comprobacionFormacionAmbiental);
		result.addObject("comprobacionEducacion", comprobacionEducacion);
		result.addObject("comprobacionInvestigacion", comprobacionInvestigacion);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView crear4(
			@Valid Tipo2FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:paginaCinco.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/paginaCuatro")
	public ModelAndView crear4p3() {
		ModelAndView result;
		Tipo3FormularioCuatroForm formularioCuatroForm;
		TipoCIF3 tipoCIF3;
		Integer hombresOcupados;
		Integer mujeresOcupados;
		Integer totalOcupados;
		
		tipoCIF3 = tipoCIF3Service.findByPrincipal();

		hombresOcupados = tipoCIF3.getFormularioTres().getA331();
		mujeresOcupados = tipoCIF3.getFormularioTres().getA332();
		totalOcupados = tipoCIF3.getFormularioTres().getA333();
		
		formularioCuatroForm = tipoCIF3Service.formularioCuatroToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif3/paginaCuatro.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("hombresOcupados", hombresOcupados);
		result.addObject("mujeresOcupados", mujeresOcupados);
		result.addObject("totalOcupados", totalOcupados);

		
		return result;
	}

	@RequestMapping(value = "/cif3/paginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView crear4(
			@Valid Tipo3FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;
		TipoCIF3 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF3Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate4(formularioCuatroForm);
				tipoCIF3Service.checkFinEncuestaTres();
				tipoCIF3.setTerminadaEncuestaTres(true);
				tipoCIF3.setFechaEnvio(currentDate);

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView("redirect:../gracias.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaCuatro")
	public ModelAndView crear4() {
		ModelAndView result;
		Tipo4FormularioCuatroForm formularioCuatroForm;
		TipoCIF4 tipoCIF4;
		Boolean preguntaNo;
		BigDecimal sumaA52;
		BigDecimal resultadoA412;
		BigDecimal resultadoA411;

		tipoCIF4 = tipoCIF4Service.findByPrincipal();
		preguntaNo = tipoCIF4.getFormularioTres().getA51n();
		sumaA52 = tipoCIF4Service.sumaA52i(tipoCIF4);
		resultadoA412 = tipoCIF4.getFormularioDos().getA412();
		resultadoA411 = tipoCIF4.getFormularioDos().getA411();
		
		
		
		formularioCuatroForm = tipoCIF4Service.formularioCuatroToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif4/paginaCuatro.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("sumaA52", sumaA52);
		result.addObject("preguntaNo", preguntaNo);
		result.addObject("resultadoA412", resultadoA412);
		result.addObject("resultadoA411", resultadoA411);
		

		return result;
	}

	@RequestMapping(value = "/cif4/paginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView crear4(
			@Valid Tipo4FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView("redirect:paginaCinco.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	// Pagina 5

	@RequestMapping(value = "/cif1/paginaCinco")
	public ModelAndView crear5p4() {
		ModelAndView result;
		Tipo1FormularioCincoForm formularioCincoForm;
		TipoCIF1 tipoCIF1;
		Boolean comprobacionAux;
		Boolean ambientalAux;
		Double bigDecimal;

		tipoCIF1 = tipoCIF1Service.findByPrincipal();
		comprobacionAux = tipoCIF1.getFormularioTres().getA42()
				.equals(tipoCIF1.getFormularioTres().getA41());
		bigDecimal = tipoCIF1.getFormularioTres().getA42().doubleValue();
		ambientalAux = bigDecimal.equals(0.00);
		formularioCincoForm = tipoCIF1Service.formularioCincoToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif1/paginaCinco.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("comprobacionAux", comprobacionAux);
		result.addObject("ambientalAux", ambientalAux);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView crear5(
			@Valid Tipo1FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:paginaSeis.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaCinco")
	public ModelAndView crear5p() {
		ModelAndView result;
		Tipo2FormularioCincoForm formularioCincoForm;
		TipoCIF2 tipoCIF2;
		Boolean gastoPersonalCero;
		Boolean ambientalIgualAtotal;

		tipoCIF2 = tipoCIF2Service.findByPrincipal();
		gastoPersonalCero = tipoCIF2.getFormularioTres().getA423().equals(0.0);
		ambientalIgualAtotal = (tipoCIF2.getFormularioTres().getA411()
				.equals(tipoCIF2.getFormularioTres().getA421()))
				|| (tipoCIF2.getFormularioTres().getA412().equals(tipoCIF2
						.getFormularioTres().getA422()))
				|| (tipoCIF2.getFormularioTres().getA413().equals(tipoCIF2
						.getFormularioTres().getA423()));
		formularioCincoForm = tipoCIF2Service.formularioCincoToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif2/paginaCinco.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("gastoPersonalCero", gastoPersonalCero);
		result.addObject("ambientalIgualAtotal", ambientalIgualAtotal);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView crear5(
			@Valid Tipo2FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:paginaSeis.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaCinco")
	public ModelAndView crear5() {
		ModelAndView result;
		Tipo4FormularioCincoForm formularioCincoForm;
		TipoCIF4 tipoCIF4;
		Boolean gastoPersonalCero;

		tipoCIF4 = tipoCIF4Service.findByPrincipal();
		Double aux = tipoCIF4.getFormularioCuatro().getA613().doubleValue();
		gastoPersonalCero = aux.equals(0.0);

		formularioCincoForm = tipoCIF4Service.formularioCincoToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif4/paginaCinco.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("gastoPersonalCero", gastoPersonalCero);

		return result;
	}

	@RequestMapping(value = "/cif4/paginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView crear5(
			@Valid Tipo4FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView("redirect:paginaSeis.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}



	// Pagina 6

	@RequestMapping(value = "/cif1/paginaSeis")
	public ModelAndView crear6p4() {
		ModelAndView result;
		Tipo1FormularioSeisForm formularioSeisForm;
		TipoCIF1 tipoCIF1;

		tipoCIF1 = tipoCIF1Service.findByPrincipal();

		formularioSeisForm = tipoCIF1Service.formularioSeisToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif1/paginaSeis.do");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView crear6(
			@Valid Tipo1FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate6(formularioSeisForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				if (tipoCIF1.getFormularioSeis().getA8n() == true) {
					tipoCIF1Service.checkFinEncuestaUno();
					tipoCIF1.setTerminadaEncuestaUno(true);
					tipoCIF1.setFechaEnvio(currentDate);
					tipoCIF1Service.saveEdit(tipoCIF1);
					result = new ModelAndView("redirect:../gracias.do");
				} else {
					result = new ModelAndView("redirect:paginaSiete.do");
				}
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaSeis")
	public ModelAndView crearp() {
		ModelAndView result;
		Tipo2FormularioSeisForm formularioSeisForm;
		TipoCIF2 tipoCIF2;

		tipoCIF2 = tipoCIF2Service.findByPrincipal();

		formularioSeisForm = tipoCIF2Service.formularioSeisToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif2/paginaSeis.do");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView crear6(
			@Valid Tipo2FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate6(formularioSeisForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				if (tipoCIF2.getFormularioSeis().getA8n() == true) {
					tipoCIF2Service.checkFinEncuestaUno();
					tipoCIF2.setTerminadaEncuestaDos(true);
					tipoCIF2.setFechaEnvio(currentDate);
					tipoCIF2Service.saveEdit(tipoCIF2);
					result = new ModelAndView("redirect:../gracias.do");
				} else {
					result = new ModelAndView("redirect:paginaSiete.do");
				}
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/paginaSeis")
	public ModelAndView crear6() {
		ModelAndView result;
		Tipo4FormularioSeisForm formularioSeisForm;
		TipoCIF4 tipoCIF4;
		Boolean a51Si;
		
		tipoCIF4 = tipoCIF4Service.findByPrincipal();
		a51Si = tipoCIF4.getFormularioTres().getA51s();
		formularioSeisForm = tipoCIF4Service.formularioSeisToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif4/paginaSeis.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("a51Si", a51Si);

		return result;
	}

	@RequestMapping(value = "/cif4/paginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView crear6(
			@Valid Tipo4FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;
		TipoCIF4 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF4Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate6(formularioSeisForm);

					tipoCIF4Service.checkFinEncuestaCuatro();
					tipoCIF4.setTerminadaEncuestaCuatro(true);
					tipoCIF4.setFechaEnvio(currentDate);
					tipoCIF4Service.saveEdit(tipoCIF4);
					result = new ModelAndView("redirect:../gracias.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}


	// Anexo1

	@RequestMapping(value = "/cif1/paginaSiete")
	public ModelAndView crear7() {
		ModelAndView result;
		Tipo1FormularioSieteForm formularioSieteForm;
		TipoCIF1 tipoCIF1;
		Integer numAmbiental;
		Integer numTotal;

		tipoCIF1 = tipoCIF1Service.findByPrincipal();

		numTotal = tipoCIF1.getFormularioCinco().getA713();
		numAmbiental = tipoCIF1.getFormularioCinco().getA723();

		formularioSieteForm = tipoCIF1Service.formularioSieteToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaSiete");
		result.addObject("formularioSieteForm", formularioSieteForm);
		result.addObject("requestURI", "encuesta/cif1/paginaSiete.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("numTotal", numTotal);
		result.addObject("numAmbiental", numAmbiental);

		return result;
	}

	@RequestMapping(value = "/cif1/paginaSiete", method = RequestMethod.POST, params = "save")
	public ModelAndView crear6(
			@Valid Tipo1FormularioSieteForm formularioSieteForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;
		TipoCIF1 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF1Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate7(formularioSieteForm);
				tipoCIF1Service.checkFinEncuestaUno();
				tipoCIF1.setTerminadaEncuestaUno(true);
				tipoCIF1.setFechaEnvio(currentDate);
				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView("redirect:../gracias.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/paginaSiete")
	public ModelAndView crear7p() {
		ModelAndView result;
		Tipo2FormularioSieteForm formularioSieteForm;
		TipoCIF2 tipoCIF2;
		Integer numAmbiental;
		Integer numTotal;

		tipoCIF2 = tipoCIF2Service.findByPrincipal();

		numTotal = tipoCIF2.getFormularioCinco().getA713();
		numAmbiental = tipoCIF2.getFormularioCinco().getA723();

		formularioSieteForm = tipoCIF2Service.formularioSieteToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaSiete");
		result.addObject("formularioSieteForm", formularioSieteForm);
		result.addObject("requestURI", "encuesta/cif2/paginaSiete.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("numTotal", numTotal);
		result.addObject("numAmbiental", numAmbiental);

		return result;
	}

	@RequestMapping(value = "/cif2/paginaSiete", method = RequestMethod.POST, params = "save")
	public ModelAndView crear6(
			@Valid Tipo2FormularioSieteForm formularioSieteForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;
		TipoCIF2 principal;
		Calendar calendar = Calendar.getInstance(TimeZone
				.getTimeZone("Europe/Madrid"));
		Date currentDate = calendar.getTime();

		principal = tipoCIF2Service.findByPrincipal();

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");
			result.addObject("principal", principal);

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate7(formularioSieteForm);
				tipoCIF2Service.checkFinEncuestaUno();
				tipoCIF2.setTerminadaEncuestaDos(true);
				tipoCIF2.setFechaEnvio(currentDate);
				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView("redirect:../gracias.do");
				result.addObject("principal", principal);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
				result.addObject("principal", principal);

			}

		}

		return result;
	}


	// ///////////////////////////////////////////////////////////////// VER
	// CUESTIONARIO ADMINISTRADOR
	// ////////////////////////////////////////////////////////////

	@RequestMapping(value = "/cif1/verPaginaUno")
	public ModelAndView verPagUno1(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioUnoForm formularioUnoForm;
		TipoCIF1 tipoCIF1;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		formularioUnoForm = tipoCIF1Service.formularioUnoToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaUno.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("municipios", municipios);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaUno(
			@Valid Tipo1FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service.reconstructCreate(formularioUnoForm);
				int id = tipoCIF1.getId();

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView(
						"redirect:verPaginaDos.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaUno")
	public ModelAndView verPagUno2(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioUnoForm formularioUnoForm;
		TipoCIF2 tipoCIF2;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		formularioUnoForm = tipoCIF2Service.formularioUnoToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaUno.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("municipios", municipios);
		result.addObject("tipoCIF2Id", tipoCIF2Id);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaUno(
			@Valid Tipo2FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service.reconstructCreate(formularioUnoForm);
				int id = tipoCIF2.getId();

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView(
						"redirect:verPaginaDos.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaUno")
	public ModelAndView verPagUno3(int tipoCIF3Id) {
		ModelAndView result;
		Tipo3FormularioUnoForm formularioUnoForm;
		TipoCIF3 tipoCIF3;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		formularioUnoForm = tipoCIF3Service.formularioUnoToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif3/verPaginaUno.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("municipios", municipios);
		result.addObject("tipoCIF3Id", tipoCIF3Id);

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaUno(
			@Valid Tipo3FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF3 = tipoCIF3Service.reconstructCreate(formularioUnoForm);
				int id = tipoCIF3.getId();

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView(
						"redirect:verPaginaDos.do?tipoCIF3Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaUno")
	public ModelAndView verPagUno(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioUnoForm formularioUnoForm;
		TipoCIF4 tipoCIF4;
		Collection<Municipios> municipios;

		municipios = actorService.findMunicipios();

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		formularioUnoForm = tipoCIF4Service.formularioUnoToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaUnoCrear");
		result.addObject("formularioUnoForm", formularioUnoForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaUno.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("municipios", municipios);
		result.addObject("tipoCIF4Id", tipoCIF4Id);

		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaUno", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaUno(
			@Valid Tipo4FormularioUnoForm formularioUnoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service.reconstructCreate(formularioUnoForm);
				int id = tipoCIF4.getId();

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView(
						"redirect:verPaginaDos.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	// ///Pagina dos ----------------------------------------

	@RequestMapping(value = "/cif1/verPaginaDos")
	public ModelAndView verPagina21(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioDosForm formularioDosForm;
		TipoCIF1 tipoCIF1;
		Collection<Cnae> cnaes;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF1Service.formularioDosToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaDos.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("cnaes", cnaes);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView verGuardar2(
			@Valid Tipo1FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate2(formularioDosForm);
				int id = tipoCIF1.getId();

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView(
						"redirect:verPaginaTres.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaDos")
	public ModelAndView verPagina22(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioDosForm formularioDosForm;
		TipoCIF2 tipoCIF2;
		Collection<Cnae> cnaes;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF2Service.formularioDosToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaDos.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("cnaes", cnaes);
		result.addObject("tipoCIF2Id", tipoCIF2Id);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView verGuardar2(
			@Valid Tipo2FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate2(formularioDosForm);
				int id = tipoCIF2.getId();

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView(
						"redirect:verPaginaTres.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaDos")
	public ModelAndView verPagina23(int tipoCIF3Id) {
		ModelAndView result;
		Tipo3FormularioDosForm formularioDosForm;
		TipoCIF3 tipoCIF3;
		Collection<Cnae> cnaes;

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF3Service.formularioDosToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif3/verPaginaDos.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("cnaes", cnaes);
		result.addObject("tipoCIF3Id", tipoCIF3Id);

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView verGuardar2(
			@Valid Tipo3FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate2(formularioDosForm);
				int id = tipoCIF3.getId();

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView(
						"redirect:verPaginaTres.do?tipoCIF3Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaDos")
	public ModelAndView verPagina2(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioDosForm formularioDosForm;
		TipoCIF4 tipoCIF4;
		Collection<Cnae> cnaes;

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);
		cnaes = actorService.findCnaes();

		formularioDosForm = tipoCIF4Service.formularioDosToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaDos");
		result.addObject("formularioDosForm", formularioDosForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaDos.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("cnaes", cnaes);
		result.addObject("tipoCIF4Id", tipoCIF4Id);

		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaDos", method = RequestMethod.POST, params = "save")
	public ModelAndView verGuardar2(
			@Valid Tipo4FormularioDosForm formularioDosForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate2(formularioDosForm);
				int id = tipoCIF4.getId();

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView(
						"redirect:verPaginaTres.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	// Pagina 3-------------------------------------------------------

	@RequestMapping(value = "/cif1/verPaginaTres")
	public ModelAndView verPagina31(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioTresForm formularioTresForm;
		TipoCIF1 tipoCIF1;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		formularioTresForm = tipoCIF1Service.formularioTresToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaTres.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSave3(
			@Valid Tipo1FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate3(formularioTresForm);
				int id = tipoCIF1.getId();

				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView(
						"redirect:verPaginaCuatro.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaTres")
	public ModelAndView verPagina322(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioTresForm formularioTresForm;
		TipoCIF2 tipoCIF2;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		formularioTresForm = tipoCIF2Service.formularioTresToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaTres.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("tipoCIF2Id", tipoCIF2Id);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSave3(
			@Valid Tipo2FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate3(formularioTresForm);
				int id = tipoCIF2.getId();

				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView(
						"redirect:verPaginaCuatro.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaTres")
	public ModelAndView verPagina33(int tipoCIF3Id) {
		ModelAndView result;
		Tipo3FormularioTresForm formularioTresForm;
		TipoCIF3 tipoCIF3;

		String array;
		BigDecimal totalEmpleo;
		
		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);
		array = tipoCIF3Service.conversionArray(tipoCIF3);
		totalEmpleo = tipoCIF3.getFormularioDos().getA2112();
		formularioTresForm = tipoCIF3Service.formularioTresToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif3/verPaginaTres.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("tipoCIF3Id", tipoCIF3Id);
		result.addObject("array", array);
		result.addObject("totalEmpleo", totalEmpleo);
		
		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSave3(
			@Valid Tipo3FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate3(formularioTresForm);
				int id = tipoCIF3.getId();

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView(
						"redirect:verPaginaCuatro.do?tipoCIF3Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaTres")
	public ModelAndView verPagina3(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioTresForm formularioTresForm;
		TipoCIF4 tipoCIF4;

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		formularioTresForm = tipoCIF4Service.formularioTresToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaTres");
		result.addObject("formularioTresForm", formularioTresForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaTres.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("tipoCIF4Id", tipoCIF4Id);

		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaTres", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSave3(
			@Valid Tipo4FormularioTresForm formularioTresForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate3(formularioTresForm);
				int id = tipoCIF4.getId();

				tipoCIF4Service.saveEdit(tipoCIF4);

				result = new ModelAndView(
						"redirect:verPaginaCuatro.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	// Pagina 4

	@RequestMapping(value = "/cif1/verPaginaCuatro")
	public ModelAndView verPaginaCuatro1(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioCuatroForm formularioCuatroForm;
		TipoCIF1 tipoCIF1;
		BigDecimal facturacionAuxiliar;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);
		facturacionAuxiliar = tipoCIF1.getFormularioTres().getA42();
		formularioCuatroForm = tipoCIF1Service.formularioCuatroToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaCuatro.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("facturacionAuxiliar", facturacionAuxiliar);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCuatroSave(
			@Valid Tipo1FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				int id = tipoCIF1.getId();

				result = new ModelAndView(
						"redirect:verPaginaCinco.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaCuatro")
	public ModelAndView verPaginaCuatro44(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioCuatroForm formularioCuatroForm;
		TipoCIF2 tipoCIF2;
		Boolean comprobacionFormacionAmbiental;
		Boolean comprobacionEducacion;
		Boolean comprobacionInvestigacion;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);
		comprobacionFormacionAmbiental = tipoCIF2.getFormularioTres()
				.getA43011().equals(0)
				&& tipoCIF2.getFormularioTres().getA43012().equals(0);
		comprobacionEducacion = !(tipoCIF2.getFormularioTres().getA43011()
				.equals(0)
				&& tipoCIF2.getFormularioTres().getA43012().equals(0)
				&& tipoCIF2.getFormularioTres().getA43021().equals(0) && tipoCIF2
				.getFormularioTres().getA43022().equals(0));
		comprobacionInvestigacion = !(tipoCIF2.getFormularioTres().getA43031()
				.equals(0) && tipoCIF2.getFormularioTres().getA43032()
				.equals(0));

		formularioCuatroForm = tipoCIF2Service.formularioCuatroToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaCuatro.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("tipoCIF2Id", tipoCIF2Id);
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("comprobacionFormacionAmbiental",
				comprobacionFormacionAmbiental);
		result.addObject("comprobacionEducacion", comprobacionEducacion);
		result.addObject("comprobacionInvestigacion", comprobacionInvestigacion);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCuatroSave(
			@Valid Tipo2FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				int id = tipoCIF2.getId();

				result = new ModelAndView(
						"redirect:verPaginaCinco.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaCuatro")
	public ModelAndView verPaginaCuatro43(int tipoCIF3Id) {
		ModelAndView result;
		Tipo3FormularioCuatroForm formularioCuatroForm;
		TipoCIF3 tipoCIF3;
		Integer hombresOcupados;
		Integer mujeresOcupados;
		Integer totalOcupados;
		
		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		hombresOcupados = tipoCIF3.getFormularioTres().getA331();
		mujeresOcupados = tipoCIF3.getFormularioTres().getA332();
		totalOcupados = tipoCIF3.getFormularioTres().getA333();
		
		formularioCuatroForm = tipoCIF3Service.formularioCuatroToForm(tipoCIF3);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif3/verPaginaCuatro.do");
		result.addObject("tipoCIF3", tipoCIF3);
		result.addObject("tipoCIF3Id", tipoCIF3Id);
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("hombresOcupados", hombresOcupados);
		result.addObject("mujeresOcupados", mujeresOcupados);
		result.addObject("totalOcupados", totalOcupados);

		return result;
	}

	@RequestMapping(value = "/cif3/verPaginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCuatroSave(
			@Valid Tipo3FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF3 tipoCIF3;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF3 = tipoCIF3Service
						.reconstructCreate4(formularioCuatroForm);
				int id = tipoCIF3.getId();
				tipoCIF3Service.checkFinEncuestaTresAdmin(id);
				tipoCIF3.setTerminadaEncuestaTres(true);

				tipoCIF3Service.saveEdit(tipoCIF3);

				result = new ModelAndView(
						"redirect:encuestaValida.do?tipoCIF3Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaCuatro")
	public ModelAndView verPaginaCuatro(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioCuatroForm formularioCuatroForm;
		TipoCIF4 tipoCIF4;
		Boolean preguntaNo;
		BigDecimal sumaA52;
		BigDecimal resultadoA412;
		BigDecimal resultadoA411;

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);
		preguntaNo = tipoCIF4.getFormularioTres().getA51n();
		sumaA52 = tipoCIF4Service.sumaA52i(tipoCIF4);
		resultadoA412 = tipoCIF4.getFormularioDos().getA412();
		resultadoA411 = tipoCIF4.getFormularioDos().getA411();
		
		formularioCuatroForm = tipoCIF4Service.formularioCuatroToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaCuatro");
		result.addObject("formularioCuatroForm", formularioCuatroForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaCuatro.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("tipoCIF4Id", tipoCIF4Id);
		result.addObject("sumaA52", sumaA52);
		result.addObject("preguntaNo", preguntaNo);
		result.addObject("resultadoA412", resultadoA412);
		result.addObject("resultadoA411", resultadoA411);

		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaCuatro", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCuatroSave(
			@Valid Tipo4FormularioCuatroForm formularioCuatroForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate4(formularioCuatroForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				int id = tipoCIF4.getId();

				result = new ModelAndView(
						"redirect:verPaginaCinco.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	// Pagina 5

	@RequestMapping(value = "/cif1/verPaginaCinco")
	public ModelAndView verPaginaCinco1(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioCincoForm formularioCincoForm;
		TipoCIF1 tipoCIF1;
		Boolean comprobacionAux;
		Boolean ambientalAux;
		Double bigDecimal;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);
		comprobacionAux = tipoCIF1.getFormularioTres().getA42()
				.equals(tipoCIF1.getFormularioTres().getA41());
		bigDecimal = tipoCIF1.getFormularioTres().getA42().doubleValue();
		ambientalAux = bigDecimal.equals(0.00);
		formularioCincoForm = tipoCIF1Service.formularioCincoToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaCinco.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("comprobacionAux", comprobacionAux);
		result.addObject("ambientalAux", ambientalAux);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCincoSave(
			@Valid Tipo1FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF1Service.saveEdit(tipoCIF1);

				int id = tipoCIF1.getId();

				result = new ModelAndView(
						"redirect:verPaginaSeis.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaCinco")
	public ModelAndView verPaginaCinco2(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioCincoForm formularioCincoForm;
		TipoCIF2 tipoCIF2;
		Boolean gastoPersonalCero;
		Boolean ambientalIgualAtotal;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);
		gastoPersonalCero = tipoCIF2.getFormularioTres().getA423().equals(0.0);
		ambientalIgualAtotal = (tipoCIF2.getFormularioTres().getA411()
				.equals(tipoCIF2.getFormularioTres().getA421()))
				|| (tipoCIF2.getFormularioTres().getA412().equals(tipoCIF2
						.getFormularioTres().getA422()))
				|| (tipoCIF2.getFormularioTres().getA413().equals(tipoCIF2
						.getFormularioTres().getA423()));
		formularioCincoForm = tipoCIF2Service.formularioCincoToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaCinco.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("tipoCIF2Id", tipoCIF2Id);
		result.addObject("gastoPersonalCero", gastoPersonalCero);
		result.addObject("ambientalIgualAtotal", ambientalIgualAtotal);
		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCincoSave(
			@Valid Tipo2FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF2Service.saveEdit(tipoCIF2);

				int id = tipoCIF2.getId();

				result = new ModelAndView(
						"redirect:verPaginaSeis.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaCinco")
	public ModelAndView verPaginaCinco(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioCincoForm formularioCincoForm;
		TipoCIF4 tipoCIF4;
		Boolean gastoPersonalCero;


		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);
		Double aux = tipoCIF4.getFormularioCuatro().getA613().doubleValue();
		gastoPersonalCero = aux.equals(0.0);

		formularioCincoForm = tipoCIF4Service.formularioCincoToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaCinco");
		result.addObject("formularioCincoForm", formularioCincoForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaCinco.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("tipoCIF4Id", tipoCIF4Id);
		result.addObject("gastoPersonalCero", gastoPersonalCero);
		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaCinco", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaCincoSave(
			@Valid Tipo4FormularioCincoForm formularioCincoForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate5(formularioCincoForm);

				tipoCIF4Service.saveEdit(tipoCIF4);

				int id = tipoCIF4.getId();

				result = new ModelAndView(
						"redirect:verPaginaSeis.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	

	// Pagina 6

	@RequestMapping(value = "/cif1/verPaginaSeis")
	public ModelAndView verPaginaSeis1(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioSeisForm formularioSeisForm;
		TipoCIF1 tipoCIF1;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		formularioSeisForm = tipoCIF1Service.formularioSeisToForm(tipoCIF1);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaSeis.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("tipoCIF1Id", tipoCIF1Id);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSeisSAve(
			@Valid Tipo1FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate6(formularioSeisForm);
				int id = tipoCIF1.getId();

				if (tipoCIF1.getFormularioSeis().getA8n() == true) {
					tipoCIF1Service.checkFinEncuestaUnoAdmin(id);
					tipoCIF1.setTerminadaEncuestaUno(true);
					tipoCIF1Service.saveEdit(tipoCIF1);
					result = new ModelAndView(
							"redirect:encuestaValida.do?tipoCIF1Id=" + id);
				} else {
					tipoCIF1Service.saveEdit(tipoCIF1);
					result = new ModelAndView(
							"redirect:verPaginaSiete.do?tipoCIF1Id=" + id);
				}
			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaSeis")
	public ModelAndView verPaginaSeis22(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioSeisForm formularioSeisForm;
		TipoCIF2 tipoCIF2;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		formularioSeisForm = tipoCIF2Service.formularioSeisToForm(tipoCIF2);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaSeis.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("tipoCIF2Id", tipoCIF2Id);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSeisSAve(
			@Valid Tipo2FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate6(formularioSeisForm);
				int id = tipoCIF2.getId();

				if (tipoCIF2.getFormularioSeis().getA8n() == true) {
					tipoCIF2Service.checkFinEncuestaUnoAdmin(id);
					tipoCIF2.setTerminadaEncuestaDos(true);
					tipoCIF2Service.saveEdit(tipoCIF2);
					result = new ModelAndView(
							"redirect:encuestaValida.do?tipoCIF2Id=" + id);
				} else {
					tipoCIF2Service.saveEdit(tipoCIF2);
					result = new ModelAndView(
							"redirect:verPaginaSiete.do?tipoCIF2Id=" + id);
				}
			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
			}

		}

		return result;
	}
	
	@RequestMapping(value = "/cif4/verPaginaSeis")
	public ModelAndView verPaginaSeis(int tipoCIF4Id) {
		ModelAndView result;
		Tipo4FormularioSeisForm formularioSeisForm;
		TipoCIF4 tipoCIF4;
		Boolean a51Si;
		
		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);
		a51Si = tipoCIF4.getFormularioTres().getA51s();
		formularioSeisForm = tipoCIF4Service.formularioSeisToForm(tipoCIF4);

		result = new ModelAndView("encuesta/paginaSeis");
		result.addObject("formularioSeisForm", formularioSeisForm);
		result.addObject("requestURI", "encuesta/cif4/verPaginaSeis.do");
		result.addObject("tipoCIF4", tipoCIF4);
		result.addObject("tipoCIF4Id", tipoCIF4Id);
		result.addObject("a51Si", a51Si);

		return result;
	}

	@RequestMapping(value = "/cif4/verPaginaSeis", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSeisSAve(
			@Valid Tipo4FormularioSeisForm formularioSeisForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF4 tipoCIF4;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF4 = tipoCIF4Service
						.reconstructCreate6(formularioSeisForm);
				int id = tipoCIF4.getId();

					tipoCIF4Service.checkFinEncuestaCuatroAdmin(id);
					tipoCIF4.setTerminadaEncuestaCuatro(true);
					tipoCIF4Service.saveEdit(tipoCIF4);
					result = new ModelAndView(
							"redirect:encuestaValida.do?tipoCIF4Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");
			}

		}

		return result;
	}


	// Anexo1

	@RequestMapping(value = "/cif1/verPaginaSiete")
	public ModelAndView verPaginaSiete2(int tipoCIF1Id) {
		ModelAndView result;
		Tipo1FormularioSieteForm formularioSieteForm;
		TipoCIF1 tipoCIF1;
		Integer numAmbiental;
		Integer numTotal;

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		formularioSieteForm = tipoCIF1Service.formularioSieteToForm(tipoCIF1);
		numTotal = tipoCIF1.getFormularioCinco().getA713();
		numAmbiental = tipoCIF1.getFormularioCinco().getA723();

		result = new ModelAndView("encuesta/paginaSiete");
		result.addObject("formularioSieteForm", formularioSieteForm);
		result.addObject("requestURI", "encuesta/cif1/verPaginaSiete.do");
		result.addObject("tipoCIF1", tipoCIF1);
		result.addObject("tipoCIF1Id", tipoCIF1Id);
		result.addObject("numTotal", numTotal);
		result.addObject("numAmbiental", numAmbiental);

		return result;
	}

	@RequestMapping(value = "/cif1/verPaginaSiete", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSiete(
			@Valid Tipo1FormularioSieteForm formularioSieteForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF1 tipoCIF1;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF1 = tipoCIF1Service
						.reconstructCreate7(formularioSieteForm);
				int id = tipoCIF1.getId();
				tipoCIF1Service.checkFinEncuestaUnoAdmin(id);
				tipoCIF1.setTerminadaEncuestaUno(true);
				tipoCIF1Service.saveEdit(tipoCIF1);

				result = new ModelAndView(
						"redirect:encuestaValida.do?tipoCIF1Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaSiete")
	public ModelAndView verPaginaSiete(int tipoCIF2Id) {
		ModelAndView result;
		Tipo2FormularioSieteForm formularioSieteForm;
		TipoCIF2 tipoCIF2;
		Integer numAmbiental;
		Integer numTotal;

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		formularioSieteForm = tipoCIF2Service.formularioSieteToForm(tipoCIF2);
		numTotal = tipoCIF2.getFormularioCinco().getA713();
		numAmbiental = tipoCIF2.getFormularioCinco().getA723();

		result = new ModelAndView("encuesta/paginaSiete");
		result.addObject("formularioSieteForm", formularioSieteForm);
		result.addObject("requestURI", "encuesta/cif2/verPaginaSiete.do");
		result.addObject("tipoCIF2", tipoCIF2);
		result.addObject("tipoCIF2Id", tipoCIF2Id);
		result.addObject("numTotal", numTotal);
		result.addObject("numAmbiental", numAmbiental);

		return result;
	}

	@RequestMapping(value = "/cif2/verPaginaSiete", method = RequestMethod.POST, params = "save")
	public ModelAndView verPaginaSiete(
			@Valid Tipo2FormularioSieteForm formularioSieteForm,
			BindingResult bindingResult) {
		ModelAndView result = null;
		TipoCIF2 tipoCIF2;

		if (bindingResult.hasErrors()) {
			result = new ModelAndView("redirect:/");

		} else {

			try {
				tipoCIF2 = tipoCIF2Service
						.reconstructCreate7(formularioSieteForm);
				int id = tipoCIF2.getId();
				tipoCIF2Service.checkFinEncuestaUnoAdmin(id);
				tipoCIF2.setTerminadaEncuestaDos(true);
				tipoCIF2Service.saveEdit(tipoCIF2);

				result = new ModelAndView(
						"redirect:encuestaValida.do?tipoCIF2Id=" + id);

			} catch (Throwable oops) {
				result = new ModelAndView("redirect:/");

			}

		}

		return result;
	}

	

	// ///////////////////////////////////////////////////////////////// ASIGNAR
	// ESTADOS ADMINISTRADOR
	// ////////////////////////////////////////////////////////////

	@RequestMapping(value = "/cif1/encuestaRevisada", method = RequestMethod.GET)
	public ModelAndView encuestaRevisada1(@RequestParam int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipoCIF1;

		tipoCIF1Service.encuestaRevisada(tipoCIF1Id);

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif2/encuestaRevisada", method = RequestMethod.GET)
	public ModelAndView encuestaRevisada2(@RequestParam int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipoCIF2;

		tipoCIF2Service.encuestaRevisada(tipoCIF2Id);

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif3/encuestaRevisada", method = RequestMethod.GET)
	public ModelAndView encuestaRevisada3(@RequestParam int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipoCIF3;

		tipoCIF3Service.encuestaRevisada(tipoCIF3Id);

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF3", tipoCIF3);

		return result;
	}
	
	@RequestMapping(value = "/cif4/encuestaRevisada", method = RequestMethod.GET)
	public ModelAndView encuestaRevisada(@RequestParam int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipoCIF4;

		tipoCIF4Service.encuestaRevisada(tipoCIF4Id);

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	@RequestMapping(value = "/cif1/encuestaCancelarRevision", method = RequestMethod.GET)
	public ModelAndView encuestaEliminarRevisada1(@RequestParam int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipoCIF1;

		tipoCIF1Service.encuestaEliminarRevisada(tipoCIF1Id);

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif2/encuestaCancelarRevision", method = RequestMethod.GET)
	public ModelAndView encuestaEliminarRevisada2(@RequestParam int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipoCIF2;

		tipoCIF2Service.encuestaEliminarRevisada(tipoCIF2Id);

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif3/encuestaCancelarRevision", method = RequestMethod.GET)
	public ModelAndView encuestaEliminarRevisada3(@RequestParam int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipoCIF3;

		tipoCIF3Service.encuestaEliminarRevisada(tipoCIF3Id);

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF3", tipoCIF3);

		return result;
	}
	
	@RequestMapping(value = "/cif4/encuestaCancelarRevision", method = RequestMethod.GET)
	public ModelAndView encuestaEliminarRevisada(@RequestParam int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipoCIF4;

		tipoCIF4Service.encuestaEliminarRevisada(tipoCIF4Id);

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	@RequestMapping(value = "/cif1/encuestaNoAmbiental", method = RequestMethod.GET)
	public ModelAndView encuestaNoAmbiental1(@RequestParam int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipoCIF1;

		tipoCIF1Service.encuestaNoAmbiental(tipoCIF1Id);

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif2/encuestaNoAmbiental", method = RequestMethod.GET)
	public ModelAndView encuestaNoAmbiental2(@RequestParam int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipoCIF2;

		tipoCIF2Service.encuestaNoAmbiental(tipoCIF2Id);

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif3/encuestaNoAmbiental", method = RequestMethod.GET)
	public ModelAndView encuestaNoAmbiental3(@RequestParam int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipoCIF3;

		tipoCIF3Service.encuestaNoAmbiental(tipoCIF3Id);

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF3", tipoCIF3);

		return result;
	}
	
	@RequestMapping(value = "/cif4/encuestaNoAmbiental", method = RequestMethod.GET)
	public ModelAndView encuestaNoAmbiental(@RequestParam int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipoCIF4;

		tipoCIF4Service.encuestaNoAmbiental(tipoCIF4Id);

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	@RequestMapping(value = "/cif1/encuestaValidada", method = RequestMethod.GET)
	public ModelAndView encuestaValidada1(@RequestParam int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipoCIF1;
		tipoCIF1Service.toTheBlackList(tipoCIF1Id);
		tipoCIF1Service.encuestaValida(tipoCIF1Id);

		tipoCIF1 = tipoCIF1Service.findOne(tipoCIF1Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF1", tipoCIF1);

		return result;
	}

	@RequestMapping(value = "/cif2/encuestaValidada", method = RequestMethod.GET)
	public ModelAndView encuestaValidada2(@RequestParam int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipoCIF2;
		tipoCIF2Service.toTheBlackList(tipoCIF2Id);
		tipoCIF2Service.encuestaValida(tipoCIF2Id);

		tipoCIF2 = tipoCIF2Service.findOne(tipoCIF2Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF2", tipoCIF2);

		return result;
	}

	@RequestMapping(value = "/cif3/encuestaValidada", method = RequestMethod.GET)
	public ModelAndView encuestaValidada3(@RequestParam int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipoCIF3;
		tipoCIF3Service.toTheBlackList(tipoCIF3Id);
		tipoCIF3Service.encuestaValida(tipoCIF3Id);

		tipoCIF3 = tipoCIF3Service.findOne(tipoCIF3Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF3", tipoCIF3);

		return result;
	}
	
	@RequestMapping(value = "/cif4/encuestaValidada", method = RequestMethod.GET)
	public ModelAndView encuestaValidada(@RequestParam int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipoCIF4;
		tipoCIF4Service.toTheBlackList(tipoCIF4Id);
		tipoCIF4Service.encuestaValida(tipoCIF4Id);

		tipoCIF4 = tipoCIF4Service.findOne(tipoCIF4Id);

		result = new ModelAndView("encuesta/gracias");
		result.addObject("tipoCIF4", tipoCIF4);

		return result;
	}

	// /////////////////// BUSCAR /////////////////////

	@RequestMapping("/buscarTipo1")
	public ModelAndView buscar1() {
		ModelAndView result;
		Tipo1Form tipo1form;

		tipo1form = new Tipo1Form();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscarTipo1.do");
		result.addObject("tipo1form", tipo1form);

		return result;
	}

	@RequestMapping(value = "/buscarTipo1", method = RequestMethod.POST, params = "save")
	public ModelAndView buscarSave(@Valid Tipo1Form tipo1Form,
			BindingResult bindingResult) {
		Tipo1Form tipo1form = null;

		ModelAndView result;

		if (bindingResult.hasErrors()) {

			tipo1form = new Tipo1Form();
			Boolean done = false;
			result = new ModelAndView("encuesta/buscar");
			result.addObject("tipo1form", tipo1form);
			result.addObject("done", done);

		} else {
			try {
				TipoCIF1 tipoCIF1 = tipoCIF1Service.reconstruct(tipo1Form);
				tipoCIF1Service.saveCreate(tipoCIF1);

				tipo1form = new Tipo1Form();
				Boolean done = true;

				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo1form", tipo1form);
				result.addObject("done", done);
			} catch (Throwable oops) {

				tipo1form = new Tipo1Form();
				Boolean done = false;
				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo1form", tipo1form);
				result.addObject("done", done);
			}
		}
		return result;

	}

	@RequestMapping("/buscarTipo2")
	public ModelAndView busca2() {
		ModelAndView result;
		Tipo2Form tipo2form;

		tipo2form = new Tipo2Form();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscarTipo2.do");
		result.addObject("tipo2form", tipo2form);

		return result;
	}

	@RequestMapping(value = "/buscarTipo2", method = RequestMethod.POST, params = "save")
	public ModelAndView buscarSave2(@Valid Tipo2Form tipo2Form,
			BindingResult bindingResult) {
		Tipo2Form tipo2form = null;

		ModelAndView result;

		if (bindingResult.hasErrors()) {

			tipo2form = new Tipo2Form();
			Boolean done = false;
			result = new ModelAndView("encuesta/buscar");
			result.addObject("tipo2form", tipo2form);
			result.addObject("done", done);

		} else {
			try {
				TipoCIF2 tipoCIF2 = tipoCIF2Service.reconstruct(tipo2Form);
				tipoCIF2Service.saveCreate(tipoCIF2);

				tipo2form = new Tipo2Form();
				Boolean done = true;

				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo2form", tipo2form);
				result.addObject("done", done);
			} catch (Throwable oops) {

				tipo2form = new Tipo2Form();
				Boolean done = false;
				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo2form", tipo2form);
				result.addObject("done", done);
			}
		}
		return result;

	}

	@RequestMapping("/buscarTipo3")
	public ModelAndView busca3() {
		ModelAndView result;
		Tipo3Form tipo3form;

		tipo3form = new Tipo3Form();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscarTipo3.do");
		result.addObject("tipo3form", tipo3form);

		return result;
	}

	@RequestMapping(value = "/buscarTipo3", method = RequestMethod.POST, params = "save")
	public ModelAndView buscarSave2(@Valid Tipo3Form Tipo3Form,
			BindingResult bindingResult) {
		Tipo3Form tipo3form = null;

		ModelAndView result;

		if (bindingResult.hasErrors()) {

			tipo3form = new Tipo3Form();
			Boolean done = false;
			result = new ModelAndView("encuesta/buscar");
			result.addObject("tipo3form", tipo3form);
			result.addObject("done", done);

		} else {
			try {
				TipoCIF3 tipoCIF3 = tipoCIF3Service.reconstruct(Tipo3Form);
				tipoCIF3Service.saveCreate(tipoCIF3);

				tipo3form = new Tipo3Form();
				Boolean done = true;

				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo3form", tipo3form);
				result.addObject("done", done);
			} catch (Throwable oops) {

				tipo3form = new Tipo3Form();
				Boolean done = false;
				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo3form", tipo3form);
				result.addObject("done", done);
			}
		}
		return result;

	}
	
	@RequestMapping("/buscarTipo4")
	public ModelAndView buscar() {
		ModelAndView result;
		Tipo4Form tipo4form;

		tipo4form = new Tipo4Form();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscarTipo4.do");
		result.addObject("tipo4form", tipo4form);

		return result;
	}

	@RequestMapping(value = "/buscarTipo4", method = RequestMethod.POST, params = "save")
	public ModelAndView buscarSave(@Valid Tipo4Form tipo4Form,
			BindingResult bindingResult) {
		Tipo4Form tipo4form = null;

		ModelAndView result;

		if (bindingResult.hasErrors()) {

			tipo4form = new Tipo4Form();
			Boolean done = false;
			result = new ModelAndView("encuesta/buscar");
			result.addObject("tipo4form", tipo4form);
			result.addObject("done", done);

		} else {
			try {
				TipoCIF4 tipoCIF4 = tipoCIF4Service.reconstruct(tipo4Form);
				tipoCIF4Service.saveCreate(tipoCIF4);

				tipo4form = new Tipo4Form();
				Boolean done = true;

				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo4form", tipo4form);
				result.addObject("done", done);
			} catch (Throwable oops) {

				tipo4form = new Tipo4Form();
				Boolean done = false;
				result = new ModelAndView("encuesta/buscar");
				result.addObject("tipo4form", tipo4form);
				result.addObject("done", done);
			}
		}
		return result;

	}

	@RequestMapping("/buscarTipo1/terminadas")
	public ModelAndView terminadas1() {
		ModelAndView result;
		Collection<TipoCIF1> resultados;

		resultados = tipoCIF1Service.encuestasTerminadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/terminadas1.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo2/terminadas")
	public ModelAndView terminadas2() {
		ModelAndView result;
		Collection<TipoCIF2> resultados;

		resultados = tipoCIF2Service.encuestasTerminadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/terminadas2.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo3/terminadas")
	public ModelAndView terminadas3() {
		ModelAndView result;
		Collection<TipoCIF3> resultados;

		resultados = tipoCIF3Service.encuestasTerminadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/terminadas3.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo4/terminadas")
	public ModelAndView terminadas() {
		ModelAndView result;
		Collection<TipoCIF4> resultados;

		resultados = tipoCIF4Service.encuestasTerminadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/terminadas4.do");
		result.addObject("resultados", resultados);

		return result;
	}
	
	@RequestMapping("/buscarTipo1/revisadas")
	public ModelAndView revisadas1() {
		ModelAndView result;
		Collection<TipoCIF1> resultados;

		resultados = tipoCIF1Service.encuestasRevisadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/revisadas1.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo2/revisadas")
	public ModelAndView revisadas2() {
		ModelAndView result;
		Collection<TipoCIF2> resultados;

		resultados = tipoCIF2Service.encuestasRevisadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/revisadas2.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo3/revisadas")
	public ModelAndView revisadas3() {
		ModelAndView result;
		Collection<TipoCIF3> resultados;

		resultados = tipoCIF3Service.encuestasRevisadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/revisadas3.do");
		result.addObject("resultados", resultados);

		return result;
	}
	
	@RequestMapping("/buscarTipo4/revisadas")
	public ModelAndView revisadas() {
		ModelAndView result;
		Collection<TipoCIF4> resultados;

		resultados = tipoCIF4Service.encuestasRevisadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/revisadas4.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo1/noAmbientales")
	public ModelAndView noAmbientales1() {
		ModelAndView result;
		Collection<TipoCIF1> resultados;

		resultados = tipoCIF1Service.encuestasNoAmbientales();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/noAmbientales1.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo2/noAmbientales")
	public ModelAndView noAmbientales2() {
		ModelAndView result;
		Collection<TipoCIF2> resultados;

		resultados = tipoCIF2Service.encuestasNoAmbientales();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/noAmbientales2.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo3/noAmbientales")
	public ModelAndView noAmbientales3() {
		ModelAndView result;
		Collection<TipoCIF3> resultados;

		resultados = tipoCIF3Service.encuestasNoAmbientales();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/noAmbientales3.do");
		result.addObject("resultados", resultados);

		return result;
	}
	
	@RequestMapping("/buscarTipo4/noAmbientales")
	public ModelAndView noAmbientales() {
		ModelAndView result;
		Collection<TipoCIF4> resultados;

		resultados = tipoCIF4Service.encuestasNoAmbientales();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/noAmbientales4.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo1/validadas")
	public ModelAndView validadas1() {
		ModelAndView result;
		Collection<TipoCIF1> resultados;

		resultados = tipoCIF1Service.encuestasValidadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/validadas1.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo2/validadas")
	public ModelAndView validadas2() {
		ModelAndView result;
		Collection<TipoCIF2> resultados;

		resultados = tipoCIF2Service.encuestasValidadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/validadas2.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo3/validadas")
	public ModelAndView validadas3() {
		ModelAndView result;
		Collection<TipoCIF3> resultados;

		resultados = tipoCIF3Service.encuestasValidadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/validadas3.do");
		result.addObject("resultados", resultados);

		return result;
	}
	
	@RequestMapping("/buscarTipo4/validadas")
	public ModelAndView validadas() {
		ModelAndView result;
		Collection<TipoCIF4> resultados;

		resultados = tipoCIF4Service.encuestasValidadas();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/validadas4.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo1/incidencias")
	public ModelAndView incidencias1() {
		ModelAndView result;
		Collection<TipoCIF1> resultados;

		resultados = tipoCIF1Service.encuestasIncidencias();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/incidencias1.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo2/incidencias")
	public ModelAndView incidencias2() {
		ModelAndView result;
		Collection<TipoCIF2> resultados;

		resultados = tipoCIF2Service.encuestasIncidencias();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/incidencias2.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping("/buscarTipo3/incidencias")
	public ModelAndView incidencias3() {
		ModelAndView result;
		Collection<TipoCIF3> resultados;

		resultados = tipoCIF3Service.encuestasIncidencias();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/incidencias3.do");
		result.addObject("resultados", resultados);

		return result;
	}
	
	@RequestMapping("/buscarTipo4/incidencias")
	public ModelAndView incidencias() {
		ModelAndView result;
		Collection<TipoCIF4> resultados;

		resultados = tipoCIF4Service.encuestasIncidencias();

		result = new ModelAndView("encuesta/buscar");
		result.addObject("requestURI", "encuesta/buscar/incidencias4.do");
		result.addObject("resultados", resultados);

		return result;
	}

	@RequestMapping(value = "/buscarCIF1")
	public ModelAndView buscarCif1(String search) {
		ModelAndView result;
		Collection<TipoCIF1> resultados;
		resultados = tipoCIF1Service.searchCIF1b(search);

		result = new ModelAndView("encuesta/buscar");
		result.addObject("resultados", resultados);
		result.addObject("requestURI", "encuesta/buscarCIF1.do");

		return result;
	}

	@RequestMapping(value = "/buscarCIF2")
	public ModelAndView buscarCif2(String search) {
		ModelAndView result;
		Collection<TipoCIF2> resultados;
		resultados = tipoCIF2Service.searchCIF2b(search);

		result = new ModelAndView("encuesta/buscar");
		result.addObject("resultados", resultados);
		result.addObject("requestURI", "encuesta/buscarCIF2.do");

		return result;
	}

	@RequestMapping(value = "/buscarCIF3")
	public ModelAndView buscarCif3(String search) {
		ModelAndView result;
		Collection<TipoCIF3> resultados;
		resultados = tipoCIF3Service.searchCIF3b(search);

		result = new ModelAndView("encuesta/buscar");
		result.addObject("resultados", resultados);
		result.addObject("requestURI", "encuesta/buscarCIF3.do");

		return result;
	}
	
	@RequestMapping(value = "/buscarCIF4")
	public ModelAndView buscarCif4(String search) {
		ModelAndView result;
		Collection<TipoCIF4> resultados;
		resultados = tipoCIF4Service.searchCIF1b(search);

		result = new ModelAndView("encuesta/buscar");
		result.addObject("resultados", resultados);
		result.addObject("requestURI", "encuesta/buscarCIF4.do");

		return result;
	}

	@RequestMapping(value = "/borrarTipo1", method = RequestMethod.GET)
	public ModelAndView deleteMessage11(@RequestParam int tipoCIF1Id) {
		ModelAndView result;
		TipoCIF1 tipocif1;

		tipocif1 = tipoCIF1Service.findOne(tipoCIF1Id);

		tipoCIF1Service.delete(tipocif1);

		Tipo1Form tipo1form = new Tipo1Form();
		Boolean delete = true;

		result = new ModelAndView("encuesta/buscar");
		result.addObject("tipo1form", tipo1form);
		result.addObject("delete", delete);
		result.addObject("requestURI", "encuesta/borrarTipo1.do");
		return result;
	}

	@RequestMapping(value = "/borrarTipo2", method = RequestMethod.GET)
	public ModelAndView deleteMessage1(@RequestParam int tipoCIF2Id) {
		ModelAndView result;
		TipoCIF2 tipocif2;

		tipocif2 = tipoCIF2Service.findOne(tipoCIF2Id);

		tipoCIF2Service.delete(tipocif2);

		Tipo2Form tipo2form = new Tipo2Form();
		Boolean delete = true;

		result = new ModelAndView("encuesta/buscar");
		result.addObject("tipo2form", tipo2form);
		result.addObject("delete", delete);
		result.addObject("requestURI", "encuesta/borrarTipo2.do");
		return result;
	}

	@RequestMapping(value = "/borrarTipo3", method = RequestMethod.GET)
	public ModelAndView deleteMessage3(@RequestParam int tipoCIF3Id) {
		ModelAndView result;
		TipoCIF3 tipocif3;

		tipocif3 = tipoCIF3Service.findOne(tipoCIF3Id);

		tipoCIF3Service.delete(tipocif3);

		Tipo3Form tipo3form = new Tipo3Form();
		Boolean delete = true;

		result = new ModelAndView("encuesta/buscar");
		result.addObject("tipo3form", tipo3form);
		result.addObject("delete", delete);
		result.addObject("requestURI", "encuesta/borrarTipo3.do");
		return result;
	}
	
	@RequestMapping(value = "/borrarTipo4", method = RequestMethod.GET)
	public ModelAndView deleteMessage(@RequestParam int tipoCIF4Id) {
		ModelAndView result;
		TipoCIF4 tipocif4;

		tipocif4 = tipoCIF4Service.findOne(tipoCIF4Id);

		tipoCIF4Service.delete(tipocif4);

		Tipo4Form tipo4form = new Tipo4Form();
		Boolean delete = true;

		result = new ModelAndView("encuesta/buscar");
		result.addObject("tipo4form", tipo4form);
		result.addObject("delete", delete);
		result.addObject("requestURI", "encuesta/borrarTipo4.do");
		return result;
	}

}