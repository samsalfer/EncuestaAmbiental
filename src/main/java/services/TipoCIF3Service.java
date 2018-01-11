package services;

import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.TipoCIF3Repository;
import security.Authority;
import security.LoginService;
import security.UserAccount;
import domain.Tipo3FormularioCuatro;
import domain.Tipo3FormularioDos;
import domain.Tipo3FormularioTres;
import domain.Tipo3FormularioUno;
import domain.TipoCIF3;
import forms.Tipo3Form;
import forms.Tipo3FormularioCuatroForm;
import forms.Tipo3FormularioDosForm;
import forms.Tipo3FormularioTresForm;
import forms.Tipo3FormularioUnoForm;

@Service
@Transactional
public class TipoCIF3Service {

	// Managed repository
	// -----------------------------------------------------------------------

	@Autowired
	private TipoCIF3Repository customerRepository;

	// Supporting services
	// -----------------------------------------------------------------------

	// Constructors
	// --------------------------------------------------------------------------------

	// Simple CRUD methods
	// ------------------------------------------------------------------

	public TipoCIF3 create() {
		TipoCIF3 result;
		UserAccount userAccount;

		result = new TipoCIF3();
		Assert.notNull(result);

		Authority authority = new Authority();
		authority.setAuthority(Authority.CIF3);

		userAccount = new UserAccount();
		userAccount.addAuthority(authority);

		result.setUserAccount(userAccount);

		return result;
	}

	public void saveCreate(TipoCIF3 TipoCIF3) {
		Assert.notNull(TipoCIF3);

		String password = "JdA2879";
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		password = encoder.encodePassword(password, null);
		TipoCIF3.getUserAccount().setPassword(password);
		
		if (customerRepository.exists(TipoCIF3.getId())) {
			TipoCIF3.setId(IdGenerator.generateUniqueId());
		}
		
		if (customerRepository.exists(TipoCIF3.getId())) {
			TipoCIF3.setId(IdGenerator.generateUniqueId());
		}

		customerRepository.save(TipoCIF3);
	}

	public void save(TipoCIF3 customer) {
		Assert.notNull(customer);
		customerRepository.save(customer);
	}

	public void saveEdit(TipoCIF3 customer) {
		Assert.notNull(customer);

		customerRepository.save(customer);

	}

	public void delete(TipoCIF3 customer) {
		Assert.notNull(customer);
		Assert.isTrue(customer.getId() != 0);
		Assert.isTrue(customerRepository.exists(customer.getId()));

		customerRepository.delete(customer);
	}

	// Other business methods
	// -----------------------------------------------------------------

	public TipoCIF3 findOne(int customerId) {
		TipoCIF3 res;

		res = customerRepository.findOne(customerId);

		return res;
	}

	public TipoCIF3 findByPrincipal() {
		TipoCIF3 result;
		UserAccount userAccount;

		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = findByUserAccount(userAccount);
		Assert.notNull(result);

		return result;
	}

	public TipoCIF3 findByUserAccount(UserAccount userAccount) {
		Assert.notNull(userAccount);

		TipoCIF3 result;

		result = customerRepository.findByUserAccountId(userAccount.getId());

		return result;
	}

	public TipoCIF3 reconstructCreate(Tipo3FormularioUnoForm formularioUnoForm) {
		Assert.notNull(formularioUnoForm);

		TipoCIF3 customer;

		customer = findOne(formularioUnoForm.getCustomerId());

		Tipo3FormularioUno formulario = new Tipo3FormularioUno();
		customer.setFormularioUno(formulario);

		// Parte primera del formulario A1
		customer.getFormularioUno().setA102(formularioUnoForm.getA102());
		customer.getFormularioUno().setA103(formularioUnoForm.getA103());
		customer.getFormularioUno().setA104(formularioUnoForm.getA104());
		customer.getFormularioUno().setA105(formularioUnoForm.getA105());
		customer.getFormularioUno().setA106(formularioUnoForm.getA106());
		customer.getFormularioUno().setA107(formularioUnoForm.getA107());
		customer.getFormularioUno().setA108(formularioUnoForm.getA108());
		customer.getFormularioUno().setA109(formularioUnoForm.getA109());
		customer.getFormularioUno().setA110(formularioUnoForm.getA110());
		customer.getFormularioUno().setA111(formularioUnoForm.getA111());
		customer.getFormularioUno().setA112(formularioUnoForm.getA112());
		customer.getFormularioUno().setA113(formularioUnoForm.getA113());

		// Persona de contacto
		customer.getFormularioUno().setA114(formularioUnoForm.getA114());
		customer.getFormularioUno().setA115(formularioUnoForm.getA115());
		customer.getFormularioUno().setA116(formularioUnoForm.getA116());
		customer.getFormularioUno().setA117(formularioUnoForm.getA117());
		customer.getFormularioUno().setA118(formularioUnoForm.getA118());

		return customer;
	}

	public Tipo3FormularioUnoForm formularioUnoToForm(TipoCIF3 customer) {
		Assert.notNull(customer);
		Tipo3FormularioUnoForm res;

		res = new Tipo3FormularioUnoForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioUno() == null) {
			res.setA102(null);
			res.setA103(null);
			res.setA104(null);
			res.setA105(null);
			res.setA106(null);
			res.setA107(null);
			res.setA108(null);
			res.setA109(null);
			res.setA110(null);
			res.setA111(null);
			res.setA112(null);
			res.setA113(null);
			res.setA114(null);
			res.setA115(null);
			res.setA116(null);
			res.setA117(null);
			res.setA118(null);

		} else {

			res.setA102(customer.getFormularioUno().getA102());
			res.setA103(customer.getFormularioUno().getA103());
			res.setA104(customer.getFormularioUno().getA104());
			res.setA105(customer.getFormularioUno().getA105());
			res.setA106(customer.getFormularioUno().getA106());
			res.setA107(customer.getFormularioUno().getA107());
			res.setA108(customer.getFormularioUno().getA108());
			res.setA109(customer.getFormularioUno().getA109());
			res.setA110(customer.getFormularioUno().getA110());
			res.setA111(customer.getFormularioUno().getA111());
			res.setA112(customer.getFormularioUno().getA112());
			res.setA113(customer.getFormularioUno().getA113());
			res.setA114(customer.getFormularioUno().getA114());
			res.setA115(customer.getFormularioUno().getA115());
			res.setA116(customer.getFormularioUno().getA116());
			res.setA117(customer.getFormularioUno().getA117());
			res.setA118(customer.getFormularioUno().getA118());

		}

		return res;
	}

	// //---------Pagina 2 --------------------------------------------

	public TipoCIF3 reconstructCreate2(Tipo3FormularioDosForm formularioDosForm) {
		Assert.notNull(formularioDosForm);

		TipoCIF3 customer;

		customer = findOne(formularioDosForm.getCustomerId());

		Tipo3FormularioDos formulario = new Tipo3FormularioDos();
		customer.setFormularioDos(formulario);

		customer.getFormularioDos().setA2111(formularioDosForm.getA2111());
		customer.getFormularioDos().setA2112(formularioDosForm.getA2112());
		customer.getFormularioDos().setA2113(formularioDosForm.getA2113());
		customer.getFormularioDos().setA22011(formularioDosForm.getA22011());
		customer.getFormularioDos().setA22012(formularioDosForm.getA22012());
		customer.getFormularioDos().setA22013(formularioDosForm.getA22013());
		customer.getFormularioDos().setA22021(formularioDosForm.getA22021());
		customer.getFormularioDos().setA22022(formularioDosForm.getA22022());
		customer.getFormularioDos().setA22023(formularioDosForm.getA22023());
		customer.getFormularioDos().setA22031(formularioDosForm.getA22031());
		customer.getFormularioDos().setA22032(formularioDosForm.getA22032());
		customer.getFormularioDos().setA22033(formularioDosForm.getA22033());
		customer.getFormularioDos().setA22041(formularioDosForm.getA22041());
		customer.getFormularioDos().setA22042(formularioDosForm.getA22042());
		customer.getFormularioDos().setA22043(formularioDosForm.getA22043());
		customer.getFormularioDos().setA22051(formularioDosForm.getA22051());
		customer.getFormularioDos().setA22052(formularioDosForm.getA22052());
		customer.getFormularioDos().setA22053(formularioDosForm.getA22053());
		customer.getFormularioDos().setA22061(formularioDosForm.getA22061());
		customer.getFormularioDos().setA22062(formularioDosForm.getA22062());
		customer.getFormularioDos().setA22063(formularioDosForm.getA22063());
		customer.getFormularioDos().setA22071(formularioDosForm.getA22071());
		customer.getFormularioDos().setA22072(formularioDosForm.getA22072());
		customer.getFormularioDos().setA22073(formularioDosForm.getA22073());
		customer.getFormularioDos().setA22081(formularioDosForm.getA22081());
		customer.getFormularioDos().setA22082(formularioDosForm.getA22082());
		customer.getFormularioDos().setA22083(formularioDosForm.getA22083());
		customer.getFormularioDos().setA22091(formularioDosForm.getA22091());
		customer.getFormularioDos().setA22092(formularioDosForm.getA22092());
		customer.getFormularioDos().setA22093(formularioDosForm.getA22093());
		customer.getFormularioDos().setA22101(formularioDosForm.getA22101());
		customer.getFormularioDos().setA22102(formularioDosForm.getA22102());
		customer.getFormularioDos().setA22103(formularioDosForm.getA22103());
		customer.getFormularioDos().setA22111(formularioDosForm.getA22111());
		customer.getFormularioDos().setA22112(formularioDosForm.getA22112());
		customer.getFormularioDos().setA22113(formularioDosForm.getA22113());
		customer.getFormularioDos().setA22121(formularioDosForm.getA22121());
		customer.getFormularioDos().setA22122(formularioDosForm.getA22122());
		customer.getFormularioDos().setA22123(formularioDosForm.getA22123());
		customer.getFormularioDos().setA22131(formularioDosForm.getA22131());
		customer.getFormularioDos().setA22132(formularioDosForm.getA22132());
		customer.getFormularioDos().setA22133(formularioDosForm.getA22133());
		customer.getFormularioDos().setA22141(formularioDosForm.getA22141());
		customer.getFormularioDos().setA22142(formularioDosForm.getA22142());
		customer.getFormularioDos().setA22143(formularioDosForm.getA22143());
		customer.getFormularioDos().setA22151(formularioDosForm.getA22151());
		customer.getFormularioDos().setA22152(formularioDosForm.getA22152());
		customer.getFormularioDos().setA22153(formularioDosForm.getA22153());
		customer.getFormularioDos().setA22161(formularioDosForm.getA22161());
		customer.getFormularioDos().setA22162(formularioDosForm.getA22162());
		customer.getFormularioDos().setA22163(formularioDosForm.getA22163());
		customer.getFormularioDos().setOtros(formularioDosForm.getOtros());
		customer.getFormularioDos().setCodOtros(formularioDosForm.getCodOtros());
		customer.getFormularioDos().setA22171(formularioDosForm.getA22171());
		customer.getFormularioDos().setA22172(formularioDosForm.getA22172());
		customer.getFormularioDos().setA22173(formularioDosForm.getA22173());




		return customer;
	}

	public Tipo3FormularioDosForm formularioDosToForm(TipoCIF3 customer) {
		Assert.notNull(customer);
		Tipo3FormularioDosForm res;

		res = new Tipo3FormularioDosForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioDos() == null) {
		res.setA2111(null);
		res.setA2112(null);
		res.setA2113(null);
		res.setA22011(null);
		res.setA22012(null);
		res.setA22013(null);
		res.setA22021(null);
		res.setA22022(null);
		res.setA22023(null);
		res.setA22031(null);
		res.setA22032(null);
		res.setA22033(null);
		res.setA22041(null);
		res.setA22042(null);
		res.setA22043(null);
		res.setA22051(null);
		res.setA22052(null);
		res.setA22053(null);
		res.setA22061(null);
		res.setA22062(null);
		res.setA22063(null);
		res.setA22071(null);
		res.setA22072(null);
		res.setA22073(null);
		res.setA22081(null);
		res.setA22082(null);
		res.setA22083(null);
		res.setA22091(null);
		res.setA22092(null);
		res.setA22093(null);
		res.setA22101(null);
		res.setA22102(null);
		res.setA22103(null);
		res.setA22111(null);
		res.setA22112(null);
		res.setA22113(null);
		res.setA22121(null);
		res.setA22122(null);
		res.setA22123(null);
		res.setA22131(null);
		res.setA22132(null);
		res.setA22133(null);
		res.setA22141(null);
		res.setA22142(null);
		res.setA22143(null);
		res.setA22151(null);
		res.setA22152(null);
		res.setA22153(null);
		res.setA22161(null);
		res.setA22162(null);
		res.setA22163(null);
		res.setOtros(null);
		res.setCodOtros(null);
		res.setA22171(null);
		res.setA22172(null);
		res.setA22173(null); 

		} else {

		res.setA2111(customer.getFormularioDos().getA2111());
		res.setA2112(customer.getFormularioDos().getA2112());
		res.setA2113(customer.getFormularioDos().getA2113());
		res.setA22011(customer.getFormularioDos().getA22011());
		res.setA22012(customer.getFormularioDos().getA22012());
		res.setA22013(customer.getFormularioDos().getA22013());
		res.setA22021(customer.getFormularioDos().getA22021());
		res.setA22022(customer.getFormularioDos().getA22022());
		res.setA22023(customer.getFormularioDos().getA22023());
		res.setA22031(customer.getFormularioDos().getA22031());
		res.setA22032(customer.getFormularioDos().getA22032());
		res.setA22033(customer.getFormularioDos().getA22033());
		res.setA22041(customer.getFormularioDos().getA22041());
		res.setA22042(customer.getFormularioDos().getA22042());
		res.setA22043(customer.getFormularioDos().getA22043());
		res.setA22051(customer.getFormularioDos().getA22051());
		res.setA22052(customer.getFormularioDos().getA22052());
		res.setA22053(customer.getFormularioDos().getA22053());
		res.setA22061(customer.getFormularioDos().getA22061());
		res.setA22062(customer.getFormularioDos().getA22062());
		res.setA22063(customer.getFormularioDos().getA22063());
		res.setA22071(customer.getFormularioDos().getA22071());
		res.setA22072(customer.getFormularioDos().getA22072());
		res.setA22073(customer.getFormularioDos().getA22073());
		res.setA22081(customer.getFormularioDos().getA22081());
		res.setA22082(customer.getFormularioDos().getA22082());
		res.setA22083(customer.getFormularioDos().getA22083());
		res.setA22091(customer.getFormularioDos().getA22091());
		res.setA22092(customer.getFormularioDos().getA22092());
		res.setA22093(customer.getFormularioDos().getA22093());
		res.setA22101(customer.getFormularioDos().getA22101());
		res.setA22102(customer.getFormularioDos().getA22102());
		res.setA22103(customer.getFormularioDos().getA22103());
		res.setA22111(customer.getFormularioDos().getA22111());
		res.setA22112(customer.getFormularioDos().getA22112());
		res.setA22113(customer.getFormularioDos().getA22113());
		res.setA22121(customer.getFormularioDos().getA22121());
		res.setA22122(customer.getFormularioDos().getA22122());
		res.setA22123(customer.getFormularioDos().getA22123());
		res.setA22131(customer.getFormularioDos().getA22131());
		res.setA22132(customer.getFormularioDos().getA22132());
		res.setA22133(customer.getFormularioDos().getA22133());
		res.setA22141(customer.getFormularioDos().getA22141());
		res.setA22142(customer.getFormularioDos().getA22142());
		res.setA22143(customer.getFormularioDos().getA22143());
		res.setA22151(customer.getFormularioDos().getA22151());
		res.setA22152(customer.getFormularioDos().getA22152());
		res.setA22153(customer.getFormularioDos().getA22153());
		res.setA22161(customer.getFormularioDos().getA22161());
		res.setA22162(customer.getFormularioDos().getA22162());
		res.setA22163(customer.getFormularioDos().getA22163());
		res.setOtros(customer.getFormularioDos().getOtros());
		res.setCodOtros(customer.getFormularioDos().getCodOtros());
		res.setA22171(customer.getFormularioDos().getA22171());
		res.setA22172(customer.getFormularioDos().getA22172());
		res.setA22173(customer.getFormularioDos().getA22173());


		}

		return res;
		}

	// //// Pagina 3 formulario tres

	public TipoCIF3 reconstructCreate3(
			Tipo3FormularioTresForm formularioTresForm) {
		Assert.notNull(formularioTresForm);

		TipoCIF3 customer;

		customer = findOne(formularioTresForm.getCustomerId());

		Tipo3FormularioTres formulario = new Tipo3FormularioTres();
		customer.setFormularioTres(formulario);

		// formulario A4
		customer.getFormularioTres().setA311(formularioTresForm.getA311());
		customer.getFormularioTres().setA312(formularioTresForm.getA312());
		customer.getFormularioTres().setA313(formularioTresForm.getA313());
		customer.getFormularioTres().setA314(formularioTresForm.getA314());
		customer.getFormularioTres().setA315(formularioTresForm.getA315());
		customer.getFormularioTres().setA316(formularioTresForm.getA316());
		
		customer.getFormularioTres().setA32011(formularioTresForm.getA32011());
		customer.getFormularioTres().setA32012(formularioTresForm.getA32012());
		customer.getFormularioTres().setA32013(formularioTresForm.getA32013());
		customer.getFormularioTres().setA32014(formularioTresForm.getA32014());
		customer.getFormularioTres().setA32015(formularioTresForm.getA32015());
		customer.getFormularioTres().setA32016(formularioTresForm.getA32016());
		
		customer.getFormularioTres().setA32021(formularioTresForm.getA32021());
		customer.getFormularioTres().setA32022(formularioTresForm.getA32022());
		customer.getFormularioTres().setA32023(formularioTresForm.getA32023());
		customer.getFormularioTres().setA32024(formularioTresForm.getA32024());
		customer.getFormularioTres().setA32025(formularioTresForm.getA32025());
		customer.getFormularioTres().setA32026(formularioTresForm.getA32026());
		
		customer.getFormularioTres().setA32031(formularioTresForm.getA32031());
		customer.getFormularioTres().setA32032(formularioTresForm.getA32032());
		customer.getFormularioTres().setA32033(formularioTresForm.getA32033());
		customer.getFormularioTres().setA32034(formularioTresForm.getA32034());
		customer.getFormularioTres().setA32035(formularioTresForm.getA32035());
		customer.getFormularioTres().setA32036(formularioTresForm.getA32036());

		customer.getFormularioTres().setA32041(formularioTresForm.getA32041());
		customer.getFormularioTres().setA32042(formularioTresForm.getA32042());
		customer.getFormularioTres().setA32043(formularioTresForm.getA32043());
		customer.getFormularioTres().setA32044(formularioTresForm.getA32044());
		customer.getFormularioTres().setA32045(formularioTresForm.getA32045());
		customer.getFormularioTres().setA32046(formularioTresForm.getA32046());
		
		customer.getFormularioTres().setA32051(formularioTresForm.getA32051());
		customer.getFormularioTres().setA32052(formularioTresForm.getA32052());
		customer.getFormularioTres().setA32053(formularioTresForm.getA32053());
		customer.getFormularioTres().setA32054(formularioTresForm.getA32054());
		customer.getFormularioTres().setA32055(formularioTresForm.getA32055());
		customer.getFormularioTres().setA32056(formularioTresForm.getA32056());
		
		customer.getFormularioTres().setA32061(formularioTresForm.getA32061());
		customer.getFormularioTres().setA32062(formularioTresForm.getA32062());
		customer.getFormularioTres().setA32063(formularioTresForm.getA32063());
		customer.getFormularioTres().setA32064(formularioTresForm.getA32064());
		customer.getFormularioTres().setA32065(formularioTresForm.getA32065());
		customer.getFormularioTres().setA32066(formularioTresForm.getA32066());
		
		customer.getFormularioTres().setA32071(formularioTresForm.getA32071());
		customer.getFormularioTres().setA32072(formularioTresForm.getA32072());
		customer.getFormularioTres().setA32073(formularioTresForm.getA32073());
		customer.getFormularioTres().setA32074(formularioTresForm.getA32074());
		customer.getFormularioTres().setA32075(formularioTresForm.getA32075());
		customer.getFormularioTres().setA32076(formularioTresForm.getA32076());
		
		customer.getFormularioTres().setA32081(formularioTresForm.getA32081());
		customer.getFormularioTres().setA32082(formularioTresForm.getA32082());
		customer.getFormularioTres().setA32083(formularioTresForm.getA32083());
		customer.getFormularioTres().setA32084(formularioTresForm.getA32084());
		customer.getFormularioTres().setA32085(formularioTresForm.getA32085());
		customer.getFormularioTres().setA32086(formularioTresForm.getA32086());
		
		customer.getFormularioTres().setA32091(formularioTresForm.getA32091());
		customer.getFormularioTres().setA32092(formularioTresForm.getA32092());
		customer.getFormularioTres().setA32093(formularioTresForm.getA32093());
		customer.getFormularioTres().setA32094(formularioTresForm.getA32094());
		customer.getFormularioTres().setA32095(formularioTresForm.getA32095());
		customer.getFormularioTres().setA32096(formularioTresForm.getA32096());
		
		customer.getFormularioTres().setA32101(formularioTresForm.getA32101());
		customer.getFormularioTres().setA32102(formularioTresForm.getA32102());
		customer.getFormularioTres().setA32103(formularioTresForm.getA32103());
		customer.getFormularioTres().setA32104(formularioTresForm.getA32104());
		customer.getFormularioTres().setA32105(formularioTresForm.getA32105());
		customer.getFormularioTres().setA32106(formularioTresForm.getA32106());
		
		customer.getFormularioTres().setA32111(formularioTresForm.getA32111());
		customer.getFormularioTres().setA32112(formularioTresForm.getA32112());
		customer.getFormularioTres().setA32113(formularioTresForm.getA32113());
		customer.getFormularioTres().setA32114(formularioTresForm.getA32114());
		customer.getFormularioTres().setA32115(formularioTresForm.getA32115());
		customer.getFormularioTres().setA32116(formularioTresForm.getA32116());
		
		customer.getFormularioTres().setA32121(formularioTresForm.getA32121());
		customer.getFormularioTres().setA32122(formularioTresForm.getA32122());
		customer.getFormularioTres().setA32123(formularioTresForm.getA32123());
		customer.getFormularioTres().setA32124(formularioTresForm.getA32124());
		customer.getFormularioTres().setA32125(formularioTresForm.getA32125());
		customer.getFormularioTres().setA32126(formularioTresForm.getA32126());
		
		customer.getFormularioTres().setA32131(formularioTresForm.getA32131());
		customer.getFormularioTres().setA32132(formularioTresForm.getA32132());
		customer.getFormularioTres().setA32133(formularioTresForm.getA32133());
		customer.getFormularioTres().setA32134(formularioTresForm.getA32134());
		customer.getFormularioTres().setA32135(formularioTresForm.getA32135());
		customer.getFormularioTres().setA32136(formularioTresForm.getA32136());
		
		customer.getFormularioTres().setA32141(formularioTresForm.getA32141());
		customer.getFormularioTres().setA32142(formularioTresForm.getA32142());
		customer.getFormularioTres().setA32143(formularioTresForm.getA32143());
		customer.getFormularioTres().setA32144(formularioTresForm.getA32144());
		customer.getFormularioTres().setA32145(formularioTresForm.getA32145());
		customer.getFormularioTres().setA32146(formularioTresForm.getA32146());
		
		customer.getFormularioTres().setA32151(formularioTresForm.getA32151());
		customer.getFormularioTres().setA32152(formularioTresForm.getA32152());
		customer.getFormularioTres().setA32153(formularioTresForm.getA32153());
		customer.getFormularioTres().setA32154(formularioTresForm.getA32154());
		customer.getFormularioTres().setA32155(formularioTresForm.getA32155());
		customer.getFormularioTres().setA32156(formularioTresForm.getA32156());
		
		customer.getFormularioTres().setA32161(formularioTresForm.getA32161());
		customer.getFormularioTres().setA32162(formularioTresForm.getA32162());
		customer.getFormularioTres().setA32163(formularioTresForm.getA32163());
		customer.getFormularioTres().setA32164(formularioTresForm.getA32164());
		customer.getFormularioTres().setA32165(formularioTresForm.getA32165());
		customer.getFormularioTres().setA32166(formularioTresForm.getA32166());
		
		customer.getFormularioTres().seteOtros(formularioTresForm.geteOtros());
		customer.getFormularioTres().seteCodOtros(formularioTresForm.geteCodOtros());
		
		customer.getFormularioTres().setA32171(formularioTresForm.getA32171());
		customer.getFormularioTres().setA32172(formularioTresForm.getA32172());
		customer.getFormularioTres().setA32173(formularioTresForm.getA32173());
		customer.getFormularioTres().setA32174(formularioTresForm.getA32174());
		customer.getFormularioTres().setA32175(formularioTresForm.getA32175());
		customer.getFormularioTres().setA32176(formularioTresForm.getA32176());
		
		customer.getFormularioTres().setA331(formularioTresForm.getA331());
		customer.getFormularioTres().setA332(formularioTresForm.getA332());
		customer.getFormularioTres().setA333(formularioTresForm.getA333());
		customer.getFormularioTres().setA334(formularioTresForm.getA334());
		customer.getFormularioTres().setA335(formularioTresForm.getA335());
		customer.getFormularioTres().setA336(formularioTresForm.getA336());
		
		return customer;
	}

	public Tipo3FormularioTresForm formularioTresToForm(TipoCIF3 customer) {
		Assert.notNull(customer);
		Tipo3FormularioTresForm res;

		res = new Tipo3FormularioTresForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioTres() == null) {
			res.setA311(null );
			res.setA312(null );
			res.setA313(null );
			res.setA314(null );
			res.setA315(null );
			res.setA316(null );
			
			res.setA32011(null );
			res.setA32012(null );
			res.setA32013(null );
			res.setA32014(null );
			res.setA32015(null );
			res.setA32016(null );
			
			res.setA32021(null );
			res.setA32022(null );
			res.setA32023(null );
			res.setA32024(null );
			res.setA32025(null );
			res.setA32026(null );
			
			res.setA32031(null );
			res.setA32032(null );
			res.setA32033(null );
			res.setA32034(null );
			res.setA32035(null );
			res.setA32036(null );

			res.setA32041(null );
			res.setA32042(null );
			res.setA32043(null );
			res.setA32044(null );
			res.setA32045(null );
			res.setA32046(null );
			
			res.setA32051(null );
			res.setA32052(null );
			res.setA32053(null );
			res.setA32054(null );
			res.setA32055(null );
			res.setA32056(null );
			
			res.setA32061(null );
			res.setA32062(null );
			res.setA32063(null );
			res.setA32064(null );
			res.setA32065(null );
			res.setA32066(null );
			
			res.setA32071(null );
			res.setA32072(null );
			res.setA32073(null );
			res.setA32074(null );
			res.setA32075(null );
			res.setA32076(null );
			
			res.setA32081(null );
			res.setA32082(null );
			res.setA32083(null );
			res.setA32084(null );
			res.setA32085(null );
			res.setA32086(null );
			
			res.setA32091(null );
			res.setA32092(null );
			res.setA32093(null );
			res.setA32094(null );
			res.setA32095(null );
			res.setA32096(null );
			
			res.setA32101(null );
			res.setA32102(null );
			res.setA32103(null );
			res.setA32104(null );
			res.setA32105(null );
			res.setA32106(null );
			
			res.setA32111(null );
			res.setA32112(null );
			res.setA32113(null );
			res.setA32114(null );
			res.setA32115(null );
			res.setA32116(null );
			
			res.setA32121(null );
			res.setA32122(null );
			res.setA32123(null );
			res.setA32124(null );
			res.setA32125(null );
			res.setA32126(null );
			
			res.setA32131(null );
			res.setA32132(null );
			res.setA32133(null );
			res.setA32134(null );
			res.setA32135(null );
			res.setA32136(null );
			
			res.setA32141(null );
			res.setA32142(null );
			res.setA32143(null );
			res.setA32144(null );
			res.setA32145(null );
			res.setA32146(null );
			
			res.setA32151(null );
			res.setA32152(null );
			res.setA32153(null );
			res.setA32154(null );
			res.setA32155(null );
			res.setA32156(null );
			
			res.setA32161(null );
			res.setA32162(null );
			res.setA32163(null );
			res.setA32164(null );
			res.setA32165(null );
			res.setA32166(null );
			
			res.seteOtros(null );
			res.seteCodOtros(null );
			
			res.setA32171(null );
			res.setA32172(null );
			res.setA32173(null );
			res.setA32174(null );
			res.setA32175(null );
			res.setA32176(null );
			
			res.setA331(null );
			res.setA331(null );
			res.setA331(null );
			res.setA331(null );
			res.setA331(null );
			res.setA331(null );

		} else {

			res.setA311(customer.getFormularioTres().getA311());
			res.setA312(customer.getFormularioTres().getA312());
			res.setA313(customer.getFormularioTres().getA313());
			res.setA314(customer.getFormularioTres().getA314());
			res.setA315(customer.getFormularioTres().getA315());
			res.setA316(customer.getFormularioTres().getA316());
			
			res.setA32011(customer.getFormularioTres().getA32011());
			res.setA32012(customer.getFormularioTres().getA32012());
			res.setA32013(customer.getFormularioTres().getA32013());
			res.setA32014(customer.getFormularioTres().getA32014());
			res.setA32015(customer.getFormularioTres().getA32015());
			res.setA32016(customer.getFormularioTres().getA32016());
			
			res.setA32021(customer.getFormularioTres().getA32021());
			res.setA32022(customer.getFormularioTres().getA32022());
			res.setA32023(customer.getFormularioTres().getA32023());
			res.setA32024(customer.getFormularioTres().getA32024());
			res.setA32025(customer.getFormularioTres().getA32025());
			res.setA32026(customer.getFormularioTres().getA32026());
			
			res.setA32031(customer.getFormularioTres().getA32031());
			res.setA32032(customer.getFormularioTres().getA32032());
			res.setA32033(customer.getFormularioTres().getA32033());
			res.setA32034(customer.getFormularioTres().getA32034());
			res.setA32035(customer.getFormularioTres().getA32035());
			res.setA32036(customer.getFormularioTres().getA32036());

			res.setA32041(customer.getFormularioTres().getA32041());
			res.setA32042(customer.getFormularioTres().getA32042());
			res.setA32043(customer.getFormularioTres().getA32043());
			res.setA32044(customer.getFormularioTres().getA32044());
			res.setA32045(customer.getFormularioTres().getA32045());
			res.setA32046(customer.getFormularioTres().getA32046());
			
			res.setA32051(customer.getFormularioTres().getA32051());
			res.setA32052(customer.getFormularioTres().getA32052());
			res.setA32053(customer.getFormularioTres().getA32053());
			res.setA32054(customer.getFormularioTres().getA32054());
			res.setA32055(customer.getFormularioTres().getA32055());
			res.setA32056(customer.getFormularioTres().getA32056());
			
			res.setA32061(customer.getFormularioTres().getA32061());
			res.setA32062(customer.getFormularioTres().getA32062());
			res.setA32063(customer.getFormularioTres().getA32063());
			res.setA32064(customer.getFormularioTres().getA32064());
			res.setA32065(customer.getFormularioTres().getA32065());
			res.setA32066(customer.getFormularioTres().getA32066());
			
			res.setA32071(customer.getFormularioTres().getA32071());
			res.setA32072(customer.getFormularioTres().getA32072());
			res.setA32073(customer.getFormularioTres().getA32073());
			res.setA32074(customer.getFormularioTres().getA32074());
			res.setA32075(customer.getFormularioTres().getA32075());
			res.setA32076(customer.getFormularioTres().getA32076());
			
			res.setA32081(customer.getFormularioTres().getA32081());
			res.setA32082(customer.getFormularioTres().getA32082());
			res.setA32083(customer.getFormularioTres().getA32083());
			res.setA32084(customer.getFormularioTres().getA32084());
			res.setA32085(customer.getFormularioTres().getA32085());
			res.setA32086(customer.getFormularioTres().getA32086());
			
			res.setA32091(customer.getFormularioTres().getA32091());
			res.setA32092(customer.getFormularioTres().getA32092());
			res.setA32093(customer.getFormularioTres().getA32093());
			res.setA32094(customer.getFormularioTres().getA32094());
			res.setA32095(customer.getFormularioTres().getA32095());
			res.setA32096(customer.getFormularioTres().getA32096());
			
			res.setA32101(customer.getFormularioTres().getA32101());
			res.setA32102(customer.getFormularioTres().getA32102());
			res.setA32103(customer.getFormularioTres().getA32103());
			res.setA32104(customer.getFormularioTres().getA32104());
			res.setA32105(customer.getFormularioTres().getA32105());
			res.setA32106(customer.getFormularioTres().getA32106());
			
			res.setA32111(customer.getFormularioTres().getA32111());
			res.setA32112(customer.getFormularioTres().getA32112());
			res.setA32113(customer.getFormularioTres().getA32113());
			res.setA32114(customer.getFormularioTres().getA32114());
			res.setA32115(customer.getFormularioTres().getA32115());
			res.setA32116(customer.getFormularioTres().getA32116());
			
			res.setA32121(customer.getFormularioTres().getA32121());
			res.setA32122(customer.getFormularioTres().getA32122());
			res.setA32123(customer.getFormularioTres().getA32123());
			res.setA32124(customer.getFormularioTres().getA32124());
			res.setA32125(customer.getFormularioTres().getA32125());
			res.setA32126(customer.getFormularioTres().getA32126());
			
			res.setA32131(customer.getFormularioTres().getA32131());
			res.setA32132(customer.getFormularioTres().getA32132());
			res.setA32133(customer.getFormularioTres().getA32133());
			res.setA32134(customer.getFormularioTres().getA32134());
			res.setA32135(customer.getFormularioTres().getA32135());
			res.setA32136(customer.getFormularioTres().getA32136());
			
			res.setA32141(customer.getFormularioTres().getA32141());
			res.setA32142(customer.getFormularioTres().getA32142());
			res.setA32143(customer.getFormularioTres().getA32143());
			res.setA32144(customer.getFormularioTres().getA32144());
			res.setA32145(customer.getFormularioTres().getA32145());
			res.setA32146(customer.getFormularioTres().getA32146());
			
			res.setA32151(customer.getFormularioTres().getA32151());
			res.setA32152(customer.getFormularioTres().getA32152());
			res.setA32153(customer.getFormularioTres().getA32153());
			res.setA32154(customer.getFormularioTres().getA32154());
			res.setA32155(customer.getFormularioTres().getA32155());
			res.setA32156(customer.getFormularioTres().getA32156());
			
			res.setA32161(customer.getFormularioTres().getA32161());
			res.setA32162(customer.getFormularioTres().getA32162());
			res.setA32163(customer.getFormularioTres().getA32163());
			res.setA32164(customer.getFormularioTres().getA32164());
			res.setA32165(customer.getFormularioTres().getA32165());
			res.setA32166(customer.getFormularioTres().getA32166());
			
			res.seteOtros(customer.getFormularioTres().geteOtros());
			res.seteCodOtros(customer.getFormularioTres().geteCodOtros());
			
			res.setA32171(customer.getFormularioTres().getA32171());
			res.setA32172(customer.getFormularioTres().getA32172());
			res.setA32173(customer.getFormularioTres().getA32173());
			res.setA32174(customer.getFormularioTres().getA32174());
			res.setA32175(customer.getFormularioTres().getA32175());
			res.setA32176(customer.getFormularioTres().getA32176());
			
			res.setA331(customer.getFormularioTres().getA331());
			res.setA332(customer.getFormularioTres().getA332());
			res.setA333(customer.getFormularioTres().getA333());
			res.setA334(customer.getFormularioTres().getA334());
			res.setA335(customer.getFormularioTres().getA335());
			res.setA336(customer.getFormularioTres().getA336());

		}

		return res;
	}

	// //// Pagina 4 formulario uno

	public TipoCIF3 reconstructCreate4(
			Tipo3FormularioCuatroForm formularioCuatroForm) {
		Assert.notNull(formularioCuatroForm);

		TipoCIF3 customer;

		customer = findOne(formularioCuatroForm.getCustomerId());

		Tipo3FormularioCuatro formulario = new Tipo3FormularioCuatro();
		customer.setFormularioCuatro(formulario);


		customer.getFormularioCuatro().setA3311(formularioCuatroForm.getA3311());
		customer.getFormularioCuatro().setA3312(formularioCuatroForm.getA3312());
		customer.getFormularioCuatro().setA3313(formularioCuatroForm.getA3313());
		customer.getFormularioCuatro().setA3314(formularioCuatroForm.getA3314());
		customer.getFormularioCuatro().setA3315(formularioCuatroForm.getA3315());
		customer.getFormularioCuatro().setA3316(formularioCuatroForm.getA3316());
		customer.getFormularioCuatro().setA3317(formularioCuatroForm.getA3317());
		customer.getFormularioCuatro().setA3318(formularioCuatroForm.getA3318());
		customer.getFormularioCuatro().setA3319(formularioCuatroForm.getA3319());
		customer.getFormularioCuatro().setA33110(formularioCuatroForm.getA33110());
		customer.getFormularioCuatro().setA33111(formularioCuatroForm.getA33111());
		customer.getFormularioCuatro().setA33112(formularioCuatroForm.getA33112());
		
		customer.getFormularioCuatro().setA3321S(formularioCuatroForm.getA3321S());
		customer.getFormularioCuatro().setA3321N(formularioCuatroForm.getA3321N());
		customer.getFormularioCuatro().setA3322S(formularioCuatroForm.getA3322S());
		customer.getFormularioCuatro().setA3322N(formularioCuatroForm.getA3322N());
		
		customer.getFormularioCuatro().setObservaciones(formularioCuatroForm.getObservaciones());

		return customer;
	}

	public Tipo3FormularioCuatroForm formularioCuatroToForm(TipoCIF3 customer) {
		Assert.notNull(customer);
		Tipo3FormularioCuatroForm res;

		res = new Tipo3FormularioCuatroForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCuatro() == null) {
			res.setA3311(null );
			res.setA3312(null );
			res.setA3313(null );
			res.setA3314(null );
			res.setA3315(null );
			res.setA3316(null );
			res.setA3317(null );
			res.setA3318(null );
			res.setA3319(null );
			res.setA33110(null );
			res.setA33111(null );
			res.setA33112(null );
			
			res.setA3321S(null );
			res.setA3321N(null );
			res.setA3322S(null );
			res.setA3322N(null );
			
			res.setObservaciones(null);

		} else {

			
			res.setA3311(customer.getFormularioCuatro().getA3311());
			res.setA3312(customer.getFormularioCuatro().getA3312());
			res.setA3313(customer.getFormularioCuatro().getA3313());
			res.setA3314(customer.getFormularioCuatro().getA3314());
			res.setA3315(customer.getFormularioCuatro().getA3315());
			res.setA3316(customer.getFormularioCuatro().getA3316());
			res.setA3317(customer.getFormularioCuatro().getA3317());
			res.setA3318(customer.getFormularioCuatro().getA3318());
			res.setA3319(customer.getFormularioCuatro().getA3319());
			res.setA33110(customer.getFormularioCuatro().getA33110());
			res.setA33111(customer.getFormularioCuatro().getA33111());
			res.setA33112(customer.getFormularioCuatro().getA33112());
			
			res.setA3321S(customer.getFormularioCuatro().getA3321S());
			res.setA3321N(customer.getFormularioCuatro().getA3321N());
			res.setA3322S(customer.getFormularioCuatro().getA3322S());
			res.setA3322N(customer.getFormularioCuatro().getA3322N());
			
			res.setObservaciones(customer.getFormularioCuatro().getObservaciones());


		}

		return res;
	}




	public void checkFinEncuestaTres() {
		TipoCIF3 CIF3 = findByPrincipal();
		Assert.isTrue(CIF3.getFormularioUno() != null);
		Assert.isTrue(CIF3.getFormularioDos() != null);
		Assert.isTrue(CIF3.getFormularioTres() != null);
		Assert.isTrue(CIF3.getFormularioCuatro() != null);
	}

	public void checkFinEncuestaTresAdmin(int TipoCIF3Id) {
		TipoCIF3 CIF3 = findOne(TipoCIF3Id);
		Assert.isTrue(CIF3.getFormularioUno() != null);
		Assert.isTrue(CIF3.getFormularioDos() != null);
		Assert.isTrue(CIF3.getFormularioTres() != null);
		Assert.isTrue(CIF3.getFormularioCuatro() != null);
		
	}

	public Long totalTipo3() {
		Long res;

		res = customerRepository.totalTipo3();

		return res;
	}

	public Long totalNoIncidenciasTipo3() {
		Long res;

		res = customerRepository.totalNoIncidenciasTipo3();

		return res;
	}

	public Long totalIncidenciasTipo3() {
		Long res;

		res = customerRepository.totalIncidenciasTipo3();

		return res;
	}

	public Long totalDevueltosPorSerNoAmbientalTipo3() {
		Long res;

		res = customerRepository.totalDevueltosPorSerNoAmbientalTipo3();

		return res;
	}

	public Long totalNumeroRevisadosTipo3() {
		Long res;

		res = customerRepository.totalNumeroRevisados();

		return res;
	}

	public Long totalNumeroValidadosTipo3() {
		Long res;

		res = customerRepository.totalNumeroValidados();

		return res;
	}

	public void encuestaRevisada(int TipoCIF3Id) {
		TipoCIF3 TipoCIF3;

		TipoCIF3 = findOne(TipoCIF3Id);
		Assert.notNull(TipoCIF3);

		TipoCIF3.setRevisado(true);

		save(TipoCIF3);
	}

	public void encuestaEliminarRevisada(int TipoCIF3Id) {
		TipoCIF3 TipoCIF3;

		TipoCIF3 = findOne(TipoCIF3Id);
		Assert.notNull(TipoCIF3);

		TipoCIF3.setRevisado(false);

		save(TipoCIF3);
	}

	public void encuestaNoAmbiental(int TipoCIF3Id) {
		TipoCIF3 TipoCIF3;

		TipoCIF3 = findOne(TipoCIF3Id);
		Assert.notNull(TipoCIF3);

		TipoCIF3.setNoAmbiental(true);

		save(TipoCIF3);
	}

	public void encuestaValida(int TipoCIF3Id) {
		TipoCIF3 TipoCIF3;
		Date now = new Date();

		TipoCIF3 = findOne(TipoCIF3Id);
		Assert.notNull(TipoCIF3);

		TipoCIF3.setValidado(true);
		TipoCIF3.setFechaValidada(now);

		save(TipoCIF3);
	}

	public Collection<TipoCIF3> findAll() {
		Collection<TipoCIF3> res;

		res = customerRepository.findAll();

		return res;
	}

	public Collection<TipoCIF3> encuestasTerminadas() {
		Collection<TipoCIF3> res;

		res = customerRepository.encuestasTerminadas();

		return res;
	}

	public Collection<TipoCIF3> encuestasRevisadas() {
		Collection<TipoCIF3> res;

		res = customerRepository.encuestasRevisadas();

		return res;
	}

	public Collection<TipoCIF3> encuestasNoAmbientales() {
		Collection<TipoCIF3> res;

		res = customerRepository.encuestasNoAmbientales();

		return res;
	}

	public Collection<TipoCIF3> encuestasValidadas() {
		Collection<TipoCIF3> res;

		res = customerRepository.encuestasValidadas();

		return res;
	}

	public Collection<TipoCIF3> encuestasIncidencias() {
		Collection<TipoCIF3> res;

		res = customerRepository.encuestasIncidencias();

		return res;
	}

	public void toTheBlackList(int TipoCIF3Id) {
		TipoCIF3 black;
		Authority authority = new Authority();

		black = customerRepository.findOne(TipoCIF3Id);
		black.getUserAccount().getAuthorities().clear();

		authority.setAuthority(Authority.FIN);
		black.getUserAccount().addAuthority(authority);

	}

	public Collection<TipoCIF3> searchCIF3b(String value) {
		Collection<TipoCIF3> result;

		result = customerRepository.buscarPorCifb(value);

		return result;
	}

	public TipoCIF3 reconstruct(Tipo3Form Tipo3Form) {
		TipoCIF3 Tipo3CIF = new TipoCIF3();

		UserAccount userAccount = new UserAccount();
		userAccount.setUsername(Tipo3Form.getCif());
		Authority authority = new Authority();
		authority.setAuthority("CIF3");
		userAccount.getAuthorities().add(authority);

		Tipo3CIF.setUserAccount(userAccount);
		return Tipo3CIF;
	}
	
	public String conversionArray(TipoCIF3 tipoCif3){
		
		String result;
		
		result = "";
		result += tipoCif3.getFormularioDos().getA22012().toString()+",";
		result += tipoCif3.getFormularioDos().getA22022().toString()+",";
		result += tipoCif3.getFormularioDos().getA22032().toString()+",";
		result += tipoCif3.getFormularioDos().getA22042().toString()+",";
		result += tipoCif3.getFormularioDos().getA22052().toString()+",";
		result += tipoCif3.getFormularioDos().getA22062().toString()+",";
		result += tipoCif3.getFormularioDos().getA22072().toString()+",";
		result += tipoCif3.getFormularioDos().getA22082().toString()+",";
		result += tipoCif3.getFormularioDos().getA22092().toString()+",";
		result += tipoCif3.getFormularioDos().getA22102().toString()+",";
		result += tipoCif3.getFormularioDos().getA22112().toString()+",";
		result += tipoCif3.getFormularioDos().getA22122().toString()+",";
		result += tipoCif3.getFormularioDos().getA22132().toString()+",";
		result += tipoCif3.getFormularioDos().getA22142().toString()+",";
		result += tipoCif3.getFormularioDos().getA22152().toString()+",";
		result += tipoCif3.getFormularioDos().getA22162().toString()+",";
		result += tipoCif3.getFormularioDos().getA22172().toString();
		
		return result;
		
		
	}

}
