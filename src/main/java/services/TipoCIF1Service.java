package services;

import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.TipoCIF1Repository;
import security.Authority;
import security.LoginService;
import security.UserAccount;
import domain.Tipo1FormularioCinco;
import domain.Tipo1FormularioCuatro;
import domain.Tipo1FormularioDos;
import domain.Tipo1FormularioSeis;
import domain.Tipo1FormularioSiete;
import domain.Tipo1FormularioTres;
import domain.Tipo1FormularioUno;
import domain.TipoCIF1;
import forms.Tipo1Form;
import forms.Tipo1FormularioCincoForm;
import forms.Tipo1FormularioCuatroForm;
import forms.Tipo1FormularioDosForm;
import forms.Tipo1FormularioSeisForm;
import forms.Tipo1FormularioSieteForm;
import forms.Tipo1FormularioTresForm;
import forms.Tipo1FormularioUnoForm;

@Service
@Transactional
public class TipoCIF1Service {

	// Managed repository
	// -----------------------------------------------------------------------

	@Autowired
	private TipoCIF1Repository customerRepository;

	// Supporting services
	// -----------------------------------------------------------------------

	// Constructors
	// --------------------------------------------------------------------------------

	// Simple CRUD methods
	// ------------------------------------------------------------------
	
	public TipoCIF1 create() {
		TipoCIF1 result;
		UserAccount userAccount;

		result = new TipoCIF1();
		Assert.notNull(result);

		Authority authority = new Authority();
		authority.setAuthority(Authority.CIF1);

		userAccount = new UserAccount();
		userAccount.addAuthority(authority);

		result.setUserAccount(userAccount);

		return result;
	}
	
	public void saveCreate(TipoCIF1 tipoCIF1) {
		Assert.notNull(tipoCIF1);

			String password = "JdA2879";
			Md5PasswordEncoder encoder = new Md5PasswordEncoder();
			password = encoder.encodePassword(password, null);
			tipoCIF1.getUserAccount().setPassword(password);
			
			if (customerRepository.exists(tipoCIF1.getId())) {
				tipoCIF1.setId(IdGenerator.generateUniqueId());
			}
			
			if (customerRepository.exists(tipoCIF1.getId())) {
				tipoCIF1.setId(IdGenerator.generateUniqueId());
			}
			
			customerRepository.save(tipoCIF1);
	}

	public void save(TipoCIF1 customer) {
		Assert.notNull(customer);
		customerRepository.save(customer);
	}

	public void saveEdit(TipoCIF1 customer) {
		Assert.notNull(customer);

		customerRepository.save(customer);

	}
	
	public void delete (TipoCIF1 customer){
		Assert.notNull(customer);
		Assert.isTrue(customer.getId()!=0);
		Assert.isTrue(customerRepository.exists(customer.getId()));
		

		customerRepository.delete(customer);
	}

	// Other business methods
	// -----------------------------------------------------------------

	public TipoCIF1 findOne(int customerId) {
		TipoCIF1 res;

		res = customerRepository.findOne(customerId);

		return res;
	}

	public TipoCIF1 findByPrincipal() {
		TipoCIF1 result;
		UserAccount userAccount;

		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = findByUserAccount(userAccount);
		Assert.notNull(result);

		return result;
	}

	public TipoCIF1 findByUserAccount(UserAccount userAccount) {
		Assert.notNull(userAccount);

		TipoCIF1 result;

		result = customerRepository.findByUserAccountId(userAccount.getId());

		return result;
	}

	public TipoCIF1 reconstructCreate(Tipo1FormularioUnoForm formularioUnoForm) {
		Assert.notNull(formularioUnoForm);

		TipoCIF1 customer;

		customer = findOne(formularioUnoForm.getCustomerId());

		Tipo1FormularioUno formulario = new Tipo1FormularioUno();
		customer.setFormularioUno(formulario);

		// Parte primera del formulario A1
		customer.getFormularioUno().setA102(
				formularioUnoForm.getNombreEmpresa());
		customer.getFormularioUno().setA103(formularioUnoForm.getAcronimo());
		customer.getFormularioUno().setA104(formularioUnoForm.getNif());
		customer.getFormularioUno().setA105(formularioUnoForm.getDireccion());
		customer.getFormularioUno()
				.setA106(formularioUnoForm.getCodigoPostal());
		customer.getFormularioUno().setA107(formularioUnoForm.getProvincia());
		customer.getFormularioUno().setA108(formularioUnoForm.getMunicipio());
		customer.getFormularioUno().setA109(
				formularioUnoForm.getCodigoMunicipal());
		customer.getFormularioUno().setA110(
				formularioUnoForm.getTelefonoEmpresa());
		customer.getFormularioUno().setA111(formularioUnoForm.getFaxEmpresa());
		customer.getFormularioUno().setA112(
				formularioUnoForm.getCorreoElectronicoEmpresa());
		customer.getFormularioUno().setA113(formularioUnoForm.getWeb());

		// Persona de contacto
		customer.getFormularioUno().setA114(
				formularioUnoForm.getNombrePersona());
		customer.getFormularioUno().setA115(formularioUnoForm.getCargo());
		customer.getFormularioUno().setA116(
				formularioUnoForm.getTelefonoPersona());
		customer.getFormularioUno().setA117(formularioUnoForm.getFaxPersona());
		customer.getFormularioUno().setA118(
				formularioUnoForm.getCorreoElectronicoPersona());

		// Parte A2
		customer.getFormularioUno().setA311(
				formularioUnoForm.getPrivadaNacional());
		customer.getFormularioUno().setA312(
				formularioUnoForm.getPrivadaMultinacional());
		customer.getFormularioUno().setA313(formularioUnoForm.getPublica());
		customer.getFormularioUno().setA3131(
				formularioUnoForm.getParticipacionPublica1());
		customer.getFormularioUno().setA3132(
				formularioUnoForm.getParticipacionPublica2());
		customer.getFormularioUno().setA3133(
				formularioUnoForm.getParticipacionPublica3());
		customer.getFormularioUno().setA3131P(
				formularioUnoForm.getPorcentajeParticipacion1());
		customer.getFormularioUno().setA3132P(
				formularioUnoForm.getPorcentajeParticipacion2());
		customer.getFormularioUno().setA3133P(
				formularioUnoForm.getPorcentajeParticipacion3());

		return customer;
	}

	public TipoCIF1 reconstructEdit(Tipo1FormularioUnoForm formularioUnoForm) {
		Assert.notNull(formularioUnoForm);

		TipoCIF1 customer;

		customer = findOne(formularioUnoForm.getCustomerId());

		// Parte primera del formulario A1
		customer.getFormularioUno().setA102(
				formularioUnoForm.getNombreEmpresa());
		customer.getFormularioUno().setA103(formularioUnoForm.getAcronimo());
		customer.getFormularioUno().setA104(formularioUnoForm.getNif());
		customer.getFormularioUno().setA105(formularioUnoForm.getDireccion());
		customer.getFormularioUno()
				.setA106(formularioUnoForm.getCodigoPostal());
		customer.getFormularioUno().setA107(formularioUnoForm.getProvincia());
		customer.getFormularioUno().setA108(formularioUnoForm.getMunicipio());
		customer.getFormularioUno().setA109(
				formularioUnoForm.getCodigoMunicipal());
		customer.getFormularioUno().setA110(
				formularioUnoForm.getTelefonoEmpresa());
		customer.getFormularioUno().setA111(formularioUnoForm.getFaxEmpresa());
		customer.getFormularioUno().setA112(
				formularioUnoForm.getCorreoElectronicoEmpresa());
		customer.getFormularioUno().setA113(formularioUnoForm.getWeb());

		// Persona de contacto
		customer.getFormularioUno().setA114(
				formularioUnoForm.getNombrePersona());
		customer.getFormularioUno().setA115(formularioUnoForm.getCargo());
		customer.getFormularioUno().setA116(
				formularioUnoForm.getTelefonoPersona());
		customer.getFormularioUno().setA117(formularioUnoForm.getFaxPersona());
		customer.getFormularioUno().setA118(
				formularioUnoForm.getCorreoElectronicoPersona());

		// Parte A2
		customer.getFormularioUno().setA311(
				formularioUnoForm.getPrivadaNacional());
		customer.getFormularioUno().setA312(
				formularioUnoForm.getPrivadaMultinacional());
		customer.getFormularioUno().setA313(formularioUnoForm.getPublica());
		customer.getFormularioUno().setA3131(
				formularioUnoForm.getParticipacionPublica1());
		customer.getFormularioUno().setA3132(
				formularioUnoForm.getParticipacionPublica2());
		customer.getFormularioUno().setA3133(
				formularioUnoForm.getParticipacionPublica3());
		customer.getFormularioUno().setA3131P(
				formularioUnoForm.getPorcentajeParticipacion1());
		customer.getFormularioUno().setA3132P(
				formularioUnoForm.getPorcentajeParticipacion2());
		customer.getFormularioUno().setA3133P(
				formularioUnoForm.getPorcentajeParticipacion3());

		return customer;
	}

	public Tipo1FormularioUnoForm formularioUnoToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioUnoForm res;

		res = new Tipo1FormularioUnoForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioUno() == null) {
			res.setNombreEmpresa(null);
			res.setAcronimo(null);
			res.setNif(null);
			res.setDireccion(null);
			res.setCodigoPostal(null);
			res.setProvincia(null);
			res.setMunicipio(null);
			res.setCodigoMunicipal(null);
			res.setTelefonoEmpresa(null);
			res.setFaxEmpresa(null);
			res.setCorreoElectronicoEmpresa(null);
			res.setWeb(null);
			res.setNombrePersona(null);
			res.setCargo(null);
			res.setTelefonoPersona(null);
			res.setFaxPersona(null);
			res.setCorreoElectronicoPersona(null);
			res.setPrivadaNacional(null);
			res.setPrivadaMultinacional(null);
			res.setPublica(null);
			res.setParticipacionPublica1(null);
			res.setParticipacionPublica2(null);
			res.setParticipacionPublica3(null);
			res.setPorcentajeParticipacion1(null);
			res.setPorcentajeParticipacion2(null);
			res.setPorcentajeParticipacion3(null);
		} else {

			res.setNombreEmpresa(customer.getFormularioUno().getA102());
			res.setAcronimo(customer.getFormularioUno().getA103());
			res.setNif(customer.getFormularioUno().getA104());
			res.setDireccion(customer.getFormularioUno().getA105());
			res.setCodigoPostal(customer.getFormularioUno().getA106());
			res.setProvincia(customer.getFormularioUno().getA107());
			res.setMunicipio(customer.getFormularioUno().getA108());
			res.setCodigoMunicipal(customer.getFormularioUno().getA109());
			res.setTelefonoEmpresa(customer.getFormularioUno().getA110());
			res.setFaxEmpresa(customer.getFormularioUno().getA111());
			res.setCorreoElectronicoEmpresa(customer.getFormularioUno()
					.getA112());
			res.setWeb(customer.getFormularioUno().getA113());
			res.setNombrePersona(customer.getFormularioUno().getA114());
			res.setCargo(customer.getFormularioUno().getA115());
			res.setTelefonoPersona(customer.getFormularioUno().getA116());
			res.setFaxPersona(customer.getFormularioUno().getA117());
			res.setCorreoElectronicoPersona(customer.getFormularioUno()
					.getA118());
			res.setPrivadaNacional(customer.getFormularioUno().getA311());
			res.setPrivadaMultinacional(customer.getFormularioUno().getA312());
			res.setPublica(customer.getFormularioUno().getA313());
			res.setParticipacionPublica1(customer.getFormularioUno().getA3131());
			res.setParticipacionPublica2(customer.getFormularioUno().getA3132());
			res.setParticipacionPublica3(customer.getFormularioUno().getA3133());
			res.setPorcentajeParticipacion1(customer.getFormularioUno()
					.getA3131P());
			res.setPorcentajeParticipacion2(customer.getFormularioUno()
					.getA3132P());
			res.setPorcentajeParticipacion3(customer.getFormularioUno()
					.getA3133P());

		}

		return res;
	}

	// //---------Pagina 2 --------------------------------------------

	public TipoCIF1 reconstructCreate2(Tipo1FormularioDosForm formularioDosForm) {
		Assert.notNull(formularioDosForm);

		TipoCIF1 customer;

		customer = findOne(formularioDosForm.getCustomerId());

		Tipo1FormularioDos formulario = new Tipo1FormularioDos();
		customer.setFormularioDos(formulario);

		// formulario A3
		customer.getFormularioDos().setA21(
				formularioDosForm.getDescripcionAmbiental());
		customer.getFormularioDos().setA21c(formularioDosForm.getCnae1());
		customer.getFormularioDos().setA221(
				formularioDosForm.getPrincipalProducto1());
		customer.getFormularioDos().setA222(
				formularioDosForm.getPrincipalProducto2());
		customer.getFormularioDos().setA33(
				formularioDosForm.getDescripcionEconomica());
		customer.getFormularioDos().setA33c(formularioDosForm.getCnae2());
		customer.getFormularioDos().setA341(
				formularioDosForm.getPrincipalProductoAmbiental1());
		customer.getFormularioDos().setA342(
				formularioDosForm.getPrincipalProductoAmbiental2());

		return customer;
	}

	public Tipo1FormularioDosForm formularioDosToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioDosForm res;

		res = new Tipo1FormularioDosForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioDos() == null) {
			res.setDescripcionAmbiental(null);
			res.setCnae1(null);
			res.setPrincipalProducto1(null);
			res.setPrincipalProducto2(null);
			res.setDescripcionEconomica(null);
			res.setCnae2(null);
			res.setPrincipalProductoAmbiental1(null);
			res.setPrincipalProductoAmbiental2(null);

		} else {

			res.setDescripcionAmbiental(customer.getFormularioDos().getA21());
			res.setCnae1(customer.getFormularioDos().getA21c());
			res.setPrincipalProducto1(customer.getFormularioDos().getA221());
			res.setPrincipalProducto2(customer.getFormularioDos().getA222());
			res.setDescripcionEconomica(customer.getFormularioDos().getA33());
			res.setCnae2(customer.getFormularioDos().getA33c());
			res.setPrincipalProductoAmbiental1(customer.getFormularioDos()
					.getA341());
			res.setPrincipalProductoAmbiental2(customer.getFormularioDos()
					.getA342());

		}

		return res;
	}

	// //// Pagina 3 formulario uno

	public TipoCIF1 reconstructCreate3(
			Tipo1FormularioTresForm formularioTresForm) {
		Assert.notNull(formularioTresForm);

		TipoCIF1 customer;

		customer = findOne(formularioTresForm.getCustomerId());

		Tipo1FormularioTres formulario = new Tipo1FormularioTres();
		customer.setFormularioTres(formulario);

		// formulario A4
		customer.getFormularioTres().setA41(
				formularioTresForm.getFacturacionTotal());
		customer.getFormularioTres().setA42(
				formularioTresForm.getFacturacionAmbiental());
		customer.getFormularioTres().setA4301(
				formularioTresForm.getContaminacionAire());
		customer.getFormularioTres().setA4302(
				formularioTresForm.getContaminacionRuido());
		customer.getFormularioTres().setA4303(
				formularioTresForm.getGestionAgua());
		customer.getFormularioTres().setA4304(
				formularioTresForm.getRecogidaAguaResidual());
		customer.getFormularioTres().setA4305(
				formularioTresForm.getSaneamientoSuelos());
		customer.getFormularioTres().setA4306(
				formularioTresForm.getRecogidaResiduos());
		customer.getFormularioTres().setA4307(
				formularioTresForm.getReciclajeResiduos());
		
		customer.getFormularioTres().setA4308(
				formularioTresForm.getEnergiaRenovable());
		
		customer.getFormularioTres().setA4309(
				formularioTresForm.getProduccionEcologica());
		customer.getFormularioTres().setA4310(
				formularioTresForm.getElaboracionProduccionEcologica());
		
		customer.getFormularioTres().setA4311(
				formularioTresForm.getEspaciosProtegisdos());
		
		customer.getFormularioTres().setA4312(
				formularioTresForm.getGestionCasaRural());
		customer.getFormularioTres().setA4313(
				formularioTresForm.getHotelRural());
		customer.getFormularioTres().setA4314(
				formularioTresForm.getCampingRural());
		customer.getFormularioTres().setA4315(
				formularioTresForm.getMesonRural());
		customer.getFormularioTres().setA4316(
				formularioTresForm.getTurismoActivo());
		customer.getFormularioTres().setA4317(
				formularioTresForm.getPromocionEcoturistico());
		customer.getFormularioTres().setA4318(
				formularioTresForm.getConsultoriaAmbiental());
		customer.getFormularioTres().setOtros(formularioTresForm.getOtros());
		customer.getFormularioTres().setA4319(
				formularioTresForm.getOtrosPorcentaje());
		customer.getFormularioTres().setA4320(
				formularioTresForm.getConstruccionSostenibleEdificios());
		customer.getFormularioTres().setA4321(
				formularioTresForm.getInstalacionRenovable());
		customer.getFormularioTres().setA4322(
				formularioTresForm.getEstudioSostenible());
		customer.getFormularioTres().setA4323(
				formularioTresForm.getTransporteSostenible());
		customer.getFormularioTres().setA4324(
				formularioTresForm.getFabricacionEficiente());



		return customer;
	}

	public Tipo1FormularioTresForm formularioTresToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioTresForm res;

		res = new Tipo1FormularioTresForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioTres() == null) {
			res.setFacturacionTotal(null);
			res.setFacturacionAmbiental(null);
			res.setContaminacionAire(null);
			res.setRecogidaAguaResidual(null);
			res.setSaneamientoSuelos(null);
			res.setRecogidaResiduos(null);
			res.setReciclajeResiduos(null);
			res.setEnergiaRenovable(null);
			res.setProduccionEcologica(null);
			res.setElaboracionProduccionEcologica(null);
			res.setGestionCasaRural(null);
			res.setHotelRural(null);
			res.setCampingRural(null);
			res.setMesonRural(null);
			res.setTurismoActivo(null);
			res.setPromocionEcoturistico(null);
			res.setConsultoriaAmbiental(null);
			res.setOtros(null);
			res.setOtrosPorcentaje(null);
			res.setContaminacionRuido(null);
			res.setGestionAgua(null);
			res.setConstruccionSostenibleEdificios(null);
			res.setInstalacionRenovable(null);
			res.setEstudioSostenible(null);
			res.setTransporteSostenible(null);
			res.setFabricacionEficiente(null);

		} else {

			res.setFacturacionTotal(customer.getFormularioTres()
					.getA41());
			res.setFacturacionAmbiental(customer.getFormularioTres()
					.getA42());
			res.setContaminacionAire(customer.getFormularioTres()
					.getA4301());
			res.setContaminacionRuido(customer.getFormularioTres()
					.getA4302());
			res.setGestionAgua(customer.getFormularioTres().getA4303());
			
			res.setRecogidaAguaResidual(customer.getFormularioTres()
					.getA4304());
			res.setSaneamientoSuelos(customer.getFormularioTres()
					.getA4305());
			res.setRecogidaResiduos(customer.getFormularioTres()
					.getA4306());
			res.setReciclajeResiduos(customer.getFormularioTres()
					.getA4307());
			
			res.setEnergiaRenovable(customer.getFormularioTres()
					.getA4308());
			
			res.setProduccionEcologica(customer.getFormularioTres()
					.getA4309());
			res.setElaboracionProduccionEcologica(customer.getFormularioTres()
					.getA4310());
			
			res.setEspaciosProtegisdos(customer.getFormularioTres()
					.getA4311());
			
			res.setGestionCasaRural(customer.getFormularioTres()
					.getA4312());
			res.setHotelRural(customer.getFormularioTres().getA4313());
			res.setCampingRural(customer.getFormularioTres().getA4314());
			res.setMesonRural(customer.getFormularioTres().getA4315());
			res.setTurismoActivo(customer.getFormularioTres()
					.getA4316());
			res.setPromocionEcoturistico(customer.getFormularioTres()
					.getA4317());
			res.setConsultoriaAmbiental(customer.getFormularioTres()
					.getA4318());
			res.setOtros(customer.getFormularioTres().getOtros());
			res.setOtrosPorcentaje(customer.getFormularioTres()
					.getA4319());

	
			res.setConstruccionSostenibleEdificios(customer.getFormularioTres()
					.getA4320());
			res.setInstalacionRenovable(customer.getFormularioTres()
					.getA4321());
			res.setEstudioSostenible(customer.getFormularioTres()
					.getA4322());
			res.setTransporteSostenible(customer.getFormularioTres()
					.getA4323());
			res.setFabricacionEficiente(customer.getFormularioTres()
					.getA4324());



		}

		return res;
	}

	// //// Pagina 4 formulario uno

	public TipoCIF1 reconstructCreate4(
			Tipo1FormularioCuatroForm formularioCuatroForm) {
		Assert.notNull(formularioCuatroForm);

		TipoCIF1 customer;

		customer = findOne(formularioCuatroForm.getCustomerId());

		Tipo1FormularioCuatro formulario = new Tipo1FormularioCuatro();
		customer.setFormularioCuatro(formulario);

		// formulario A5
		customer.getFormularioCuatro().setA511(
				formularioCuatroForm.getfTotalAndalucia());
		customer.getFormularioCuatro().setA512(
				formularioCuatroForm.getfTotalEspa�a());
		customer.getFormularioCuatro().setA513(
				formularioCuatroForm.getfTotalEuropa());
		customer.getFormularioCuatro().setA514(
				formularioCuatroForm.getfTotalMundo());
		customer.getFormularioCuatro().setA521(
				formularioCuatroForm.getfAmbientalAndalucia());
		customer.getFormularioCuatro().setA522(
				formularioCuatroForm.getfAmbientalEspa�a());
		customer.getFormularioCuatro().setA523(
				formularioCuatroForm.getfAmbientalEuropa());
		customer.getFormularioCuatro().setA524(
				formularioCuatroForm.getfAmbientalMundo());

		// formulario A6
		customer.getFormularioCuatro().setA6si(formularioCuatroForm.getA6si());
		customer.getFormularioCuatro().setA6no(formularioCuatroForm.getA6no());
		customer.getFormularioCuatro().setA61(
				formularioCuatroForm.getDenominacion1());
		customer.getFormularioCuatro().setA62(
				formularioCuatroForm.getDenominacion2());
		customer.getFormularioCuatro().setA63(
				formularioCuatroForm.getDenominacion3());
		customer.getFormularioCuatro().setA61a(
				formularioCuatroForm.getAutoridad1());
		customer.getFormularioCuatro().setA62a(
				formularioCuatroForm.getAutoridad2());
		customer.getFormularioCuatro().setA63a(
				formularioCuatroForm.getAutoridad3());

		return customer;
	}

	public Tipo1FormularioCuatroForm formularioCuatroToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioCuatroForm res;

		res = new Tipo1FormularioCuatroForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCuatro() == null) {
			res.setfTotalAndalucia(null);
			res.setfTotalEspa�a(null);
			res.setfTotalEuropa(null);
			res.setfTotalMundo(null);
			res.setfAmbientalAndalucia(null);
			res.setfAmbientalEspa�a(null);
			res.setfAmbientalEuropa(null);
			res.setfAmbientalMundo(null);
			res.setA6si(null);
			res.setA6no(null);
			res.setDenominacion1(null);
			res.setDenominacion2(null);
			res.setDenominacion3(null);
			res.setAutoridad1(null);
			res.setAutoridad2(null);
			res.setAutoridad3(null);

		} else {

			res.setfTotalAndalucia(customer.getFormularioCuatro().getA511());
			res.setfTotalEspa�a(customer.getFormularioCuatro().getA512());
			res.setfTotalEuropa(customer.getFormularioCuatro().getA513());
			res.setfTotalMundo(customer.getFormularioCuatro().getA514());
			res.setfAmbientalAndalucia(customer.getFormularioCuatro().getA521());
			res.setfAmbientalEspa�a(customer.getFormularioCuatro().getA522());
			res.setfAmbientalEuropa(customer.getFormularioCuatro().getA523());
			res.setfAmbientalMundo(customer.getFormularioCuatro().getA524());
			res.setA6si(customer.getFormularioCuatro().getA6si());
			res.setA6no(customer.getFormularioCuatro().getA6no());
			res.setDenominacion1(customer.getFormularioCuatro().getA61());
			res.setDenominacion2(customer.getFormularioCuatro().getA62());
			res.setDenominacion3(customer.getFormularioCuatro().getA63());
			res.setAutoridad1(customer.getFormularioCuatro().getA61a());
			res.setAutoridad2(customer.getFormularioCuatro().getA62a());
			res.setAutoridad3(customer.getFormularioCuatro().getA63a());

		}

		return res;
	}

	// Pagina 5 formulario uno.

	public TipoCIF1 reconstructCreate5(
			Tipo1FormularioCincoForm formularioCincoForm) {
		Assert.notNull(formularioCincoForm);

		TipoCIF1 customer;

		customer = findOne(formularioCincoForm.getCustomerId());

		Tipo1FormularioCinco formulario = new Tipo1FormularioCinco();
		customer.setFormularioCinco(formulario);

		// formulario A5
		customer.getFormularioCinco().setA711(
				formularioCincoForm.getEtNpoHombres());
		customer.getFormularioCinco().setA712(
				formularioCincoForm.getEtNpoMujeres());
		customer.getFormularioCinco().setA713(
				formularioCincoForm.getEtNpoTotal());
		customer.getFormularioCinco().setA714(
				formularioCincoForm.getEtNhtHombres());
		customer.getFormularioCinco().setA715(
				formularioCincoForm.getEtNhtMujeres());
		customer.getFormularioCinco().setA716(
				formularioCincoForm.getEtNhtTotal());
		customer.getFormularioCinco().setA721(
				formularioCincoForm.getEaaNpoHombres());
		customer.getFormularioCinco().setA722(
				formularioCincoForm.getEaaNpoMujeres());
		customer.getFormularioCinco().setA723(
				formularioCincoForm.getEaaNpoTotal());
		customer.getFormularioCinco().setA724(
				formularioCincoForm.getEaaNhtHombres());
		customer.getFormularioCinco().setA725(
				formularioCincoForm.getEaaNhtMujeres());
		customer.getFormularioCinco().setA726(
				formularioCincoForm.getEaaNhtTotal());
		customer.getFormularioCinco().setA7211(
				formularioCincoForm.getHombresIngenieros());
		customer.getFormularioCinco().setA7212(
				formularioCincoForm.getMujeresIngenieros());
		customer.getFormularioCinco().setA7213(
				formularioCincoForm.getTotalIngenieros());
		customer.getFormularioCinco().setA7214(
				formularioCincoForm.getHombresIngenierosTec());
		customer.getFormularioCinco().setA7215(
				formularioCincoForm.getMujeresIngenierosTec());
		customer.getFormularioCinco().setA7216(
				formularioCincoForm.getTotalIngenierosTec());
		customer.getFormularioCinco().setA7217(
				formularioCincoForm.getJefesHombes());
		customer.getFormularioCinco().setA7218(
				formularioCincoForm.getJefesMujeres());
		customer.getFormularioCinco().setA7219(
				formularioCincoForm.getJefesTotal());
		customer.getFormularioCinco().setA72110(
				formularioCincoForm.getAuxiliarHombres());
		customer.getFormularioCinco().setA72111(
				formularioCincoForm.getAuxiliarMujeres());
		customer.getFormularioCinco().setA72112(
				formularioCincoForm.getAuxiliarTotal());
		customer.getFormularioCinco().setA7221s(
				formularioCincoForm.getCreacionCortePlazoSi());
		customer.getFormularioCinco().setA7222s(
				formularioCincoForm.getCreacionLargoPlazoSi());
		customer.getFormularioCinco().setA7221n(
				formularioCincoForm.getCreacionCortePlazoNo());
		customer.getFormularioCinco().setA7222n(
				formularioCincoForm.getCreacionLargoPlazoNo());

		return customer;
	}

	public Tipo1FormularioCincoForm formularioCincoToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioCincoForm res;

		res = new Tipo1FormularioCincoForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCinco() == null) {
			res.setEtNpoHombres(null);
			res.setEtNpoMujeres(null);
			res.setEtNpoTotal(null);
			res.setEtNhtHombres(null);
			res.setEtNhtMujeres(null);
			res.setEtNhtTotal(null);
			res.setEaaNpoHombres(null);
			res.setEaaNpoMujeres(null);
			res.setEaaNpoTotal(null);
			res.setEaaNhtHombres(null);
			res.setEaaNhtMujeres(null);
			res.setEaaNhtTotal(null);
			res.setHombresIngenieros(null);
			res.setMujeresIngenieros(null);
			res.setTotalIngenieros(null);
			res.setHombresIngenierosTec(null);
			res.setMujeresIngenierosTec(null);
			res.setTotalIngenierosTec(null);
			res.setJefesHombes(null);
			res.setJefesMujeres(null);
			res.setJefesTotal(null);
			res.setAuxiliarHombres(null);
			res.setAuxiliarMujeres(null);
			res.setAuxiliarTotal(null);
			res.setCreacionCortePlazoSi(null);
			res.setCreacionLargoPlazoSi(null);
			res.setCreacionCortePlazoNo(null);
			res.setCreacionLargoPlazoNo(null);

		} else {

			res.setEtNpoHombres(customer.getFormularioCinco().getA711());
			res.setEtNpoMujeres(customer.getFormularioCinco().getA712());
			res.setEtNpoTotal(customer.getFormularioCinco().getA713());
			res.setEtNhtHombres(customer.getFormularioCinco().getA714());
			res.setEtNhtMujeres(customer.getFormularioCinco().getA715());
			res.setEtNhtTotal(customer.getFormularioCinco().getA716());
			res.setEaaNpoHombres(customer.getFormularioCinco().getA721());
			res.setEaaNpoMujeres(customer.getFormularioCinco().getA722());
			res.setEaaNpoTotal(customer.getFormularioCinco().getA723());
			res.setEaaNhtHombres(customer.getFormularioCinco().getA724());
			res.setEaaNhtMujeres(customer.getFormularioCinco().getA725());
			res.setEaaNhtTotal(customer.getFormularioCinco().getA726());
			res.setHombresIngenieros(customer.getFormularioCinco().getA7211());
			res.setMujeresIngenieros(customer.getFormularioCinco().getA7212());
			res.setTotalIngenieros(customer.getFormularioCinco().getA7213());
			res.setHombresIngenierosTec(customer.getFormularioCinco()
					.getA7214());
			res.setMujeresIngenierosTec(customer.getFormularioCinco()
					.getA7215());
			res.setTotalIngenierosTec(customer.getFormularioCinco().getA7216());
			res.setJefesHombes(customer.getFormularioCinco().getA7217());
			res.setJefesMujeres(customer.getFormularioCinco().getA7218());
			res.setJefesTotal(customer.getFormularioCinco().getA7219());
			res.setAuxiliarHombres(customer.getFormularioCinco().getA72110());
			res.setAuxiliarMujeres(customer.getFormularioCinco().getA72111());
			res.setAuxiliarTotal(customer.getFormularioCinco().getA72112());
			res.setCreacionCortePlazoSi(customer.getFormularioCinco()
					.getA7221s());
			res.setCreacionLargoPlazoSi(customer.getFormularioCinco()
					.getA7222s());
			res.setCreacionCortePlazoNo(customer.getFormularioCinco()
					.getA7221n());
			res.setCreacionLargoPlazoNo(customer.getFormularioCinco()
					.getA7222n());

		}

		return res;
	}

	// //// Pagina 6formulario uno

	public TipoCIF1 reconstructCreate6(
			Tipo1FormularioSeisForm formularioSeisForm) {
		Assert.notNull(formularioSeisForm);

		TipoCIF1 customer;

		customer = findOne(formularioSeisForm.getCustomerId());

		Tipo1FormularioSeis formulario = new Tipo1FormularioSeis();
		customer.setFormularioSeis(formulario);

		// formulario A5
		customer.getFormularioSeis().setA8s(
				formularioSeisForm.getAmbientalAndaluciaSi());
		customer.getFormularioSeis().setA8n(
				formularioSeisForm.getAmbientalAndaluciaNo());
		customer.getFormularioSeis().setObservacionesA8(
				formularioSeisForm.getObservacionesA8());

		return customer;
	}

	public Tipo1FormularioSeisForm formularioSeisToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioSeisForm res;

		res = new Tipo1FormularioSeisForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioSeis() == null) {
			res.setAmbientalAndaluciaSi(null);
			res.setAmbientalAndaluciaNo(null);
			res.setObservacionesA8(null);

		} else {

			res.setAmbientalAndaluciaSi(customer.getFormularioSeis().getA8s());
			res.setAmbientalAndaluciaNo(customer.getFormularioSeis().getA8n());
			res.setObservacionesA8(customer.getFormularioSeis()
					.getObservacionesA8());

		}

		return res;
	}

	// //// Anexo1

	public TipoCIF1 reconstructCreate7(
			Tipo1FormularioSieteForm formularioSieteForm) {
		Assert.notNull(formularioSieteForm);

		TipoCIF1 customer;

		customer = findOne(formularioSieteForm.getCustomerId());

		Tipo1FormularioSiete formulario = new Tipo1FormularioSiete();
		customer.setFormularioSiete(formulario);

		customer.getFormularioSiete().setE100(
				formularioSieteForm.getDenominacionEstablecimientoPrincipal());
		customer.getFormularioSiete().setE101(
				formularioSieteForm.getDomicilioEstablecimiento());
		customer.getFormularioSiete().setE102(
				formularioSieteForm.getCodigoPostalAnexo());
		customer.getFormularioSiete().setE103(
				formularioSieteForm.getMunicipioAnexo());
		customer.getFormularioSiete().setE104(
				formularioSieteForm.getProvinciaAnexo());
		customer.getFormularioSiete().setE105(
				formularioSieteForm.getTelefonoAnexo());
		customer.getFormularioSiete()
				.setE106(formularioSieteForm.getFaxAnexo());
		customer.getFormularioSiete().setE107(
				formularioSieteForm.getCorreoElectronicoAnexo());
		customer.getFormularioSiete().setE108(
				formularioSieteForm.getDescripcionActividadPrincipalAnexo());
		customer.getFormularioSiete().setE109(
				formularioSieteForm.getDescripcionActividadAmbientalAnexo());
		customer.getFormularioSiete().setE110(
				formularioSieteForm.getEmpleoTotalAnexo());
		customer.getFormularioSiete().setE111(
				formularioSieteForm.getEmpleoActidadAmbientalAnexo());

		customer.getFormularioSiete().setE200(
				formularioSieteForm
						.getDenominacionEstablecimientoPrincipalAnexo1());
		customer.getFormularioSiete().setE201(
				formularioSieteForm.getDomicilioEstablecimientoAnexo1());
		customer.getFormularioSiete().setE202(
				formularioSieteForm.getCodigoPostalAnexo1());
		customer.getFormularioSiete().setE203(
				formularioSieteForm.getMunicipioAnexo1());
		customer.getFormularioSiete().setE204(
				formularioSieteForm.getProvinciaAnexo1());
		customer.getFormularioSiete().setE205(
				formularioSieteForm.getTelefonoAnexo1());
		customer.getFormularioSiete().setE206(
				formularioSieteForm.getFaxAnexo1());
		customer.getFormularioSiete().setE207(
				formularioSieteForm.getCorreoElectronicoAnexo1());
		customer.getFormularioSiete().setE208(
				formularioSieteForm.getDescripcionActividadPrincipalAnexo1());
		customer.getFormularioSiete().setE209(
				formularioSieteForm.getDescripcionActividadAmbientalAnexo1());
		customer.getFormularioSiete().setE210(
				formularioSieteForm.getEmpleoTotalAnexo1());
		customer.getFormularioSiete().setE211(
				formularioSieteForm.getEmpleoActidadAmbientalAnexo1());

		customer.getFormularioSiete().setE300(
				formularioSieteForm
						.getDenominacionEstablecimientoPrincipalAnexo2());
		customer.getFormularioSiete().setE301(
				formularioSieteForm.getDomicilioEstablecimientoAnexo2());
		customer.getFormularioSiete().setE302(
				formularioSieteForm.getCodigoPostalAnexo2());
		customer.getFormularioSiete().setE303(
				formularioSieteForm.getMunicipioAnexo2());
		customer.getFormularioSiete().setE304(
				formularioSieteForm.getProvinciaAnexo2());
		customer.getFormularioSiete().setE305(
				formularioSieteForm.getTelefonoAnexo2());
		customer.getFormularioSiete().setE306(
				formularioSieteForm.getFaxAnexo2());
		customer.getFormularioSiete().setE307(
				formularioSieteForm.getCorreoElectronicoAnexo2());
		customer.getFormularioSiete().setE308(
				formularioSieteForm.getDescripcionActividadPrincipalAnexo2());
		customer.getFormularioSiete().setE309(
				formularioSieteForm.getDescripcionActividadAmbientalAnexo2());
		customer.getFormularioSiete().setE310(
				formularioSieteForm.getEmpleoTotalAnexo2());
		customer.getFormularioSiete().setE311(
				formularioSieteForm.getEmpleoActidadAmbientalAnexo2());

		customer.getFormularioSiete().setE400(
				formularioSieteForm
						.getDenominacionEstablecimientoPrincipalAnexo3());
		customer.getFormularioSiete().setE401(
				formularioSieteForm.getDomicilioEstablecimientoAnexo3());
		customer.getFormularioSiete().setE402(
				formularioSieteForm.getCodigoPostalAnexo3());
		customer.getFormularioSiete().setE403(
				formularioSieteForm.getMunicipioAnexo3());
		customer.getFormularioSiete().setE404(
				formularioSieteForm.getProvinciaAnexo3());
		customer.getFormularioSiete().setE405(
				formularioSieteForm.getTelefonoAnexo3());
		customer.getFormularioSiete().setE406(
				formularioSieteForm.getFaxAnexo3());
		customer.getFormularioSiete().setE407(
				formularioSieteForm.getCorreoElectronicoAnexo3());
		customer.getFormularioSiete().setE408(
				formularioSieteForm.getDescripcionActividadPrincipalAnexo3());
		customer.getFormularioSiete().setE409(
				formularioSieteForm.getDescripcionActividadAmbientalAnexo3());
		customer.getFormularioSiete().setE410(
				formularioSieteForm.getEmpleoTotalAnexo3());
		customer.getFormularioSiete().setE411(
				formularioSieteForm.getEmpleoActidadAmbientalAnexo3());
		
		customer.getFormularioSiete().setE500(formularioSieteForm.getE500());
		customer.getFormularioSiete().setE501(formularioSieteForm.getE501());
		customer.getFormularioSiete().setE502(formularioSieteForm.getE502());
		customer.getFormularioSiete().setE503(formularioSieteForm.getE503());
		customer.getFormularioSiete().setE504(formularioSieteForm.getE504());
		customer.getFormularioSiete().setE505(formularioSieteForm.getE505());
		customer.getFormularioSiete().setE506(formularioSieteForm.getE506());
		customer.getFormularioSiete().setE507(formularioSieteForm.getE507());
		customer.getFormularioSiete().setE508(formularioSieteForm.getE508());
		customer.getFormularioSiete().setE509(formularioSieteForm.getE509());
		customer.getFormularioSiete().setE510(formularioSieteForm.getE510());
		customer.getFormularioSiete().setE511(formularioSieteForm.getE511());
		
		customer.getFormularioSiete().setE600(formularioSieteForm.getE600());
		customer.getFormularioSiete().setE601(formularioSieteForm.getE601());
		customer.getFormularioSiete().setE602(formularioSieteForm.getE602());
		customer.getFormularioSiete().setE603(formularioSieteForm.getE603());
		customer.getFormularioSiete().setE604(formularioSieteForm.getE604());
		customer.getFormularioSiete().setE605(formularioSieteForm.getE605());
		customer.getFormularioSiete().setE606(formularioSieteForm.getE606());
		customer.getFormularioSiete().setE607(formularioSieteForm.getE607());
		customer.getFormularioSiete().setE608(formularioSieteForm.getE608());
		customer.getFormularioSiete().setE609(formularioSieteForm.getE609());
		customer.getFormularioSiete().setE610(formularioSieteForm.getE610());
		customer.getFormularioSiete().setE611(formularioSieteForm.getE611());

		return customer;
	}

	public Tipo1FormularioSieteForm formularioSieteToForm(TipoCIF1 customer) {
		Assert.notNull(customer);
		Tipo1FormularioSieteForm res;

		res = new Tipo1FormularioSieteForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioSiete() == null) {
			res.setDenominacionEstablecimientoPrincipal(null);
			res.setDomicilioEstablecimiento(null);
			res.setCodigoPostalAnexo(null);
			res.setMunicipioAnexo(null);
			res.setProvinciaAnexo(null);
			res.setTelefonoAnexo(null);
			res.setFaxAnexo(null);
			res.setCorreoElectronicoAnexo(null);
			res.setDescripcionActividadPrincipalAnexo(null);
			res.setDescripcionActividadAmbientalAnexo(null);
			res.setEmpleoTotalAnexo(null);
			res.setEmpleoActidadAmbientalAnexo(null);

			res.setDenominacionEstablecimientoPrincipalAnexo1(null);
			res.setDomicilioEstablecimientoAnexo1(null);
			res.setCodigoPostalAnexo1(null);
			res.setMunicipioAnexo1(null);
			res.setProvinciaAnexo1(null);
			res.setTelefonoAnexo1(null);
			res.setFaxAnexo1(null);
			res.setCorreoElectronicoAnexo1(null);
			res.setDescripcionActividadPrincipalAnexo1(null);
			res.setDescripcionActividadAmbientalAnexo1(null);
			res.setEmpleoTotalAnexo1(null);
			res.setEmpleoActidadAmbientalAnexo1(null);

			res.setDenominacionEstablecimientoPrincipalAnexo2(null);
			res.setDomicilioEstablecimientoAnexo2(null);
			res.setCodigoPostalAnexo2(null);
			res.setMunicipioAnexo2(null);
			res.setProvinciaAnexo2(null);
			res.setTelefonoAnexo2(null);
			res.setFaxAnexo2(null);
			res.setCorreoElectronicoAnexo2(null);
			res.setDescripcionActividadPrincipalAnexo2(null);
			res.setDescripcionActividadAmbientalAnexo2(null);
			res.setEmpleoTotalAnexo2(null);
			res.setEmpleoActidadAmbientalAnexo2(null);

			res.setDenominacionEstablecimientoPrincipalAnexo3(null);
			res.setDomicilioEstablecimientoAnexo3(null);
			res.setCodigoPostalAnexo3(null);
			res.setMunicipioAnexo3(null);
			res.setProvinciaAnexo3(null);
			res.setTelefonoAnexo3(null);
			res.setFaxAnexo3(null);
			res.setCorreoElectronicoAnexo3(null);
			res.setDescripcionActividadPrincipalAnexo3(null);
			res.setDescripcionActividadAmbientalAnexo3(null);
			res.setEmpleoTotalAnexo3(null);
			res.setEmpleoActidadAmbientalAnexo3(null);
			
			res.setE500(null);
			res.setE501(null);
			res.setE502(null);
			res.setE503(null);
			res.setE504(null);
			res.setE505(null);
			res.setE506(null);
			res.setE507(null);
			res.setE508(null);
			res.setE509(null);
			res.setE510(null);
			res.setE511(null);
			
			res.setE600(null);
			res.setE601(null);
			res.setE602(null);
			res.setE603(null);
			res.setE604(null);
			res.setE605(null);
			res.setE606(null);
			res.setE607(null);
			res.setE608(null);
			res.setE609(null);
			res.setE610(null);
			res.setE611(null);
			

		} else {

			res.setDenominacionEstablecimientoPrincipal(customer
					.getFormularioSiete().getE100());
			res.setDomicilioEstablecimiento(customer.getFormularioSiete()
					.getE101());
			res.setCodigoPostalAnexo(customer.getFormularioSiete().getE102());
			res.setMunicipioAnexo(customer.getFormularioSiete().getE103());
			res.setProvinciaAnexo(customer.getFormularioSiete().getE104());
			res.setTelefonoAnexo(customer.getFormularioSiete().getE105());
			res.setFaxAnexo(customer.getFormularioSiete().getE106());
			res.setCorreoElectronicoAnexo(customer.getFormularioSiete()
					.getE107());
			res.setDescripcionActividadPrincipalAnexo(customer
					.getFormularioSiete().getE108());
			res.setDescripcionActividadAmbientalAnexo(customer
					.getFormularioSiete().getE109());
			res.setEmpleoTotalAnexo(customer.getFormularioSiete().getE110());
			res.setEmpleoActidadAmbientalAnexo(customer.getFormularioSiete()
					.getE111());

			res.setDenominacionEstablecimientoPrincipalAnexo1(customer
					.getFormularioSiete().getE200());
			res.setDomicilioEstablecimientoAnexo1(customer.getFormularioSiete()
					.getE201());
			res.setCodigoPostalAnexo1(customer.getFormularioSiete().getE202());
			res.setMunicipioAnexo1(customer.getFormularioSiete().getE203());
			res.setProvinciaAnexo1(customer.getFormularioSiete().getE204());
			res.setTelefonoAnexo1(customer.getFormularioSiete().getE205());
			res.setFaxAnexo1(customer.getFormularioSiete().getE206());
			res.setCorreoElectronicoAnexo1(customer.getFormularioSiete()
					.getE207());
			res.setDescripcionActividadPrincipalAnexo1(customer
					.getFormularioSiete().getE208());
			res.setDescripcionActividadAmbientalAnexo1(customer
					.getFormularioSiete().getE209());
			res.setEmpleoTotalAnexo1(customer.getFormularioSiete().getE210());
			res.setEmpleoActidadAmbientalAnexo1(customer.getFormularioSiete()
					.getE211());

			res.setDenominacionEstablecimientoPrincipalAnexo2(customer
					.getFormularioSiete().getE300());
			res.setDomicilioEstablecimientoAnexo2(customer.getFormularioSiete()
					.getE301());
			res.setCodigoPostalAnexo2(customer.getFormularioSiete().getE302());
			res.setMunicipioAnexo2(customer.getFormularioSiete().getE303());
			res.setProvinciaAnexo2(customer.getFormularioSiete().getE304());
			res.setTelefonoAnexo2(customer.getFormularioSiete().getE305());
			res.setFaxAnexo2(customer.getFormularioSiete().getE306());
			res.setCorreoElectronicoAnexo2(customer.getFormularioSiete()
					.getE307());
			res.setDescripcionActividadPrincipalAnexo2(customer
					.getFormularioSiete().getE308());
			res.setDescripcionActividadAmbientalAnexo2(customer
					.getFormularioSiete().getE309());
			res.setEmpleoTotalAnexo2(customer.getFormularioSiete().getE310());
			res.setEmpleoActidadAmbientalAnexo2(customer.getFormularioSiete()
					.getE311());

			res.setDenominacionEstablecimientoPrincipalAnexo3(customer
					.getFormularioSiete().getE400());
			res.setDomicilioEstablecimientoAnexo3(customer.getFormularioSiete()
					.getE401());
			res.setCodigoPostalAnexo3(customer.getFormularioSiete().getE402());
			res.setMunicipioAnexo3(customer.getFormularioSiete().getE403());
			res.setProvinciaAnexo3(customer.getFormularioSiete().getE404());
			res.setTelefonoAnexo3(customer.getFormularioSiete().getE405());
			res.setFaxAnexo3(customer.getFormularioSiete().getE406());
			res.setCorreoElectronicoAnexo3(customer.getFormularioSiete()
					.getE407());
			res.setDescripcionActividadPrincipalAnexo3(customer
					.getFormularioSiete().getE408());
			res.setDescripcionActividadAmbientalAnexo3(customer
					.getFormularioSiete().getE409());
			res.setEmpleoTotalAnexo3(customer.getFormularioSiete().getE410());
			res.setEmpleoActidadAmbientalAnexo3(customer.getFormularioSiete()
					.getE411());
			
			res.setE500(customer.getFormularioSiete().getE500());
			res.setE501(customer.getFormularioSiete().getE501());
			res.setE502(customer.getFormularioSiete().getE502());
			res.setE503(customer.getFormularioSiete().getE503());
			res.setE504(customer.getFormularioSiete().getE504());
			res.setE505(customer.getFormularioSiete().getE505());
			res.setE506(customer.getFormularioSiete().getE506());
			res.setE507(customer.getFormularioSiete().getE507());
			res.setE508(customer.getFormularioSiete().getE508());
			res.setE509(customer.getFormularioSiete().getE509());
			res.setE510(customer.getFormularioSiete().getE510());
			res.setE511(customer.getFormularioSiete().getE511());
			
			res.setE600(customer.getFormularioSiete().getE600());
			res.setE601(customer.getFormularioSiete().getE601());
			res.setE602(customer.getFormularioSiete().getE602());
			res.setE603(customer.getFormularioSiete().getE603());
			res.setE604(customer.getFormularioSiete().getE604());
			res.setE605(customer.getFormularioSiete().getE605());
			res.setE606(customer.getFormularioSiete().getE606());
			res.setE607(customer.getFormularioSiete().getE607());
			res.setE608(customer.getFormularioSiete().getE608());
			res.setE609(customer.getFormularioSiete().getE609());
			res.setE610(customer.getFormularioSiete().getE610());
			res.setE611(customer.getFormularioSiete().getE611());

		}

		return res;
	}

	public void checkFinEncuestaUno() {
		TipoCIF1 cif1 = findByPrincipal();
		Assert.isTrue(cif1.getFormularioUno() != null);
		Assert.isTrue(cif1.getFormularioDos() != null);
		Assert.isTrue(cif1.getFormularioTres() != null);
		Assert.isTrue(cif1.getFormularioCuatro() != null);
		Assert.isTrue(cif1.getFormularioCinco() != null);
		Assert.isTrue(cif1.getFormularioSeis() != null);
	}

	public void checkFinEncuestaUnoAdmin(int tipoCIF1Id) {
		TipoCIF1 cif1 = findOne(tipoCIF1Id);
		Assert.isTrue(cif1.getFormularioUno() != null);
		Assert.isTrue(cif1.getFormularioDos() != null);
		Assert.isTrue(cif1.getFormularioTres() != null);
		Assert.isTrue(cif1.getFormularioCuatro() != null);
		Assert.isTrue(cif1.getFormularioCinco() != null);
		Assert.isTrue(cif1.getFormularioSeis() != null);
	}

	public Long totalTipo1() {
		Long res;

		res = customerRepository.totalTipo1();

		return res;
	}

	public Long totalNoIncidenciasTipo1() {
		Long res;

		res = customerRepository.totalNoIncidenciasTipo1();

		return res;
	}

	public Long totalIncidenciasTipo1() {
		Long res;

		res = customerRepository.totalIncidenciasTipo1();

		return res;
	}

	public Long totalDevueltosPorSerNoAmbientalTipo1() {
		Long res;

		res = customerRepository.totalDevueltosPorSerNoAmbientalTipo1();

		return res;
	}

	public Long totalNumeroRevisadosTipo1() {
		Long res;

		res = customerRepository.totalNumeroRevisados();

		return res;
	}

	public Long totalNumeroValidadosTipo1() {
		Long res;

		res = customerRepository.totalNumeroValidados();

		return res;
	}

	public void encuestaRevisada(int tipoCIF1Id) {
		TipoCIF1 tipoCIF1;

		tipoCIF1 = findOne(tipoCIF1Id);
		Assert.notNull(tipoCIF1);

		tipoCIF1.setRevisado(true);

		save(tipoCIF1);
	}
	public void encuestaEliminarRevisada(int tipoCIF1Id) {
		TipoCIF1 tipoCIF1;

		tipoCIF1 = findOne(tipoCIF1Id);
		Assert.notNull(tipoCIF1);

		tipoCIF1.setRevisado(false);

		save(tipoCIF1);
	}

	public void encuestaNoAmbiental(int tipoCIF1Id) {
		TipoCIF1 tipoCIF1;

		tipoCIF1 = findOne(tipoCIF1Id);
		Assert.notNull(tipoCIF1);

		tipoCIF1.setNoAmbiental(true);

		save(tipoCIF1);
	}

	public void encuestaValida(int tipoCIF1Id) {
		TipoCIF1 tipoCIF1;
		Date now = new Date();

		tipoCIF1 = findOne(tipoCIF1Id);
		Assert.notNull(tipoCIF1);

		tipoCIF1.setValidado(true);
		tipoCIF1.setFechaValidada(now);

		save(tipoCIF1);
	}

	
	public Collection<TipoCIF1> findAll() {
		Collection<TipoCIF1> res;

		res = customerRepository.findAll();

		return res;
	}
	
	public Collection<TipoCIF1> encuestasTerminadas() {
		Collection<TipoCIF1> res;

		res = customerRepository.encuestasTerminadas();

		return res;
	}
	
	public Collection<TipoCIF1> encuestasRevisadas() {
		Collection<TipoCIF1> res;

		res = customerRepository.encuestasRevisadas();

		return res;
	}
	
	public Collection<TipoCIF1> encuestasNoAmbientales() {
		Collection<TipoCIF1> res;

		res = customerRepository.encuestasNoAmbientales();

		return res;
	}
	
	public Collection<TipoCIF1> encuestasValidadas() {
		Collection<TipoCIF1> res;

		res = customerRepository.encuestasValidadas();

		return res;
	}
	
	public Collection<TipoCIF1> encuestasIncidencias() {
		Collection<TipoCIF1> res;

		res = customerRepository.encuestasIncidencias();

		return res;
	}

	
	public void toTheBlackList(int tipoCIF1Id) {
		TipoCIF1 black;
		Authority authority = new Authority();

		black = customerRepository.findOne(tipoCIF1Id);
		black.getUserAccount().getAuthorities().clear();

		authority.setAuthority(Authority.FIN);
		black.getUserAccount().addAuthority(authority);


	}
	
	public Collection<TipoCIF1> searchCIF1b(String value) {
		Collection<TipoCIF1> result;

		result = customerRepository.buscarPorCifb(value);

		return result;
	}
	
	public TipoCIF1 reconstruct(Tipo1Form tipo1Form) {
		TipoCIF1 tipo1CIF= new TipoCIF1();

		UserAccount userAccount= new UserAccount();
		userAccount.setUsername(tipo1Form.getCif());
		Authority authority = new Authority();
		authority.setAuthority("CIF1");
		userAccount.getAuthorities().add(authority);
		
		tipo1CIF.setUserAccount(userAccount);
		return tipo1CIF;
	}

}
