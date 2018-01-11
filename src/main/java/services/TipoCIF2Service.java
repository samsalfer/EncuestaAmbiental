package services;

import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.TipoCIF2Repository;
import security.Authority;
import security.LoginService;
import security.UserAccount;
import domain.Tipo2FormularioCinco;
import domain.Tipo2FormularioCuatro;
import domain.Tipo2FormularioDos;
import domain.Tipo2FormularioSeis;
import domain.Tipo2FormularioSiete;
import domain.Tipo2FormularioTres;
import domain.Tipo2FormularioUno;
import domain.TipoCIF2;
import forms.Tipo2Form;
import forms.Tipo2FormularioCincoForm;
import forms.Tipo2FormularioCuatroForm;
import forms.Tipo2FormularioDosForm;
import forms.Tipo2FormularioSeisForm;
import forms.Tipo2FormularioSieteForm;
import forms.Tipo2FormularioTresForm;
import forms.Tipo2FormularioUnoForm;

@Service
@Transactional
public class TipoCIF2Service {

	// Managed repository
	// -----------------------------------------------------------------------

	@Autowired
	private TipoCIF2Repository customerRepository;

	// Supporting services
	// -----------------------------------------------------------------------

	// Constructors
	// --------------------------------------------------------------------------------

	// Simple CRUD methods
	// ------------------------------------------------------------------

	public TipoCIF2 create() {
		TipoCIF2 result;
		UserAccount userAccount;

		result = new TipoCIF2();
		Assert.notNull(result);

		Authority authority = new Authority();
		authority.setAuthority(Authority.CIF2);

		userAccount = new UserAccount();
		userAccount.addAuthority(authority);

		result.setUserAccount(userAccount);

		return result;
	}

	public void saveCreate(TipoCIF2 tipoCIF2) {
		Assert.notNull(tipoCIF2);

		String password = "JdA2879";
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		password = encoder.encodePassword(password, null);
		tipoCIF2.getUserAccount().setPassword(password);
		
		if (customerRepository.exists(tipoCIF2.getId())) {
			tipoCIF2.setId(IdGenerator.generateUniqueId());
		}
		
		if (customerRepository.exists(tipoCIF2.getId())) {
			tipoCIF2.setId(IdGenerator.generateUniqueId());
		}

		customerRepository.save(tipoCIF2);
	}

	public void save(TipoCIF2 customer) {
		Assert.notNull(customer);
		customerRepository.save(customer);
	}

	public void saveEdit(TipoCIF2 customer) {
		Assert.notNull(customer);

		customerRepository.save(customer);

	}

	public void delete(TipoCIF2 customer) {
		Assert.notNull(customer);
		Assert.isTrue(customer.getId() != 0);
		Assert.isTrue(customerRepository.exists(customer.getId()));

		customerRepository.delete(customer);
	}

	// Other business methods
	// -----------------------------------------------------------------

	public TipoCIF2 findOne(int customerId) {
		TipoCIF2 res;

		res = customerRepository.findOne(customerId);

		return res;
	}

	public TipoCIF2 findByPrincipal() {
		TipoCIF2 result;
		UserAccount userAccount;

		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = findByUserAccount(userAccount);
		Assert.notNull(result);

		return result;
	}

	public TipoCIF2 findByUserAccount(UserAccount userAccount) {
		Assert.notNull(userAccount);

		TipoCIF2 result;

		result = customerRepository.findByUserAccountId(userAccount.getId());

		return result;
	}

	public TipoCIF2 reconstructCreate(Tipo2FormularioUnoForm formularioUnoForm) {
		Assert.notNull(formularioUnoForm);

		TipoCIF2 customer;

		customer = findOne(formularioUnoForm.getCustomerId());

		Tipo2FormularioUno formulario = new Tipo2FormularioUno();
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

		// Parte A2
		customer.getFormularioUno().setA311(formularioUnoForm.getA311());
		customer.getFormularioUno().setA312(formularioUnoForm.getA312());
		customer.getFormularioUno().setA313(formularioUnoForm.getA313());
		customer.getFormularioUno().setA314(formularioUnoForm.getA314());
		customer.getFormularioUno().setA315(formularioUnoForm.getA315());
		customer.getFormularioUno().setA3131(formularioUnoForm.getA3131());
		customer.getFormularioUno().setA3132(formularioUnoForm.getA3132());
		customer.getFormularioUno().setA3133(formularioUnoForm.getA3133());
		customer.getFormularioUno().setA3131P(formularioUnoForm.getA3131P());
		customer.getFormularioUno().setA3132P(formularioUnoForm.getA3132P());
		customer.getFormularioUno().setA3133P(formularioUnoForm.getA3133P());

		return customer;
	}

	public Tipo2FormularioUnoForm formularioUnoToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioUnoForm res;

		res = new Tipo2FormularioUnoForm();

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
			res.setA311(null);
			res.setA312(null);
			res.setA313(null);
			res.setA314(null);
			res.setA315(null);
			res.setA3131(null);
			res.setA3132(null);
			res.setA3133(null);
			res.setA3131P(null);
			res.setA3132P(null);
			res.setA3133P(null);
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
			res.setA311(customer.getFormularioUno().getA311());
			res.setA312(customer.getFormularioUno().getA312());
			res.setA313(customer.getFormularioUno().getA313());
			res.setA314(customer.getFormularioUno().getA314());
			res.setA315(customer.getFormularioUno().getA315());
			res.setA3131(customer.getFormularioUno().getA3131());
			res.setA3132(customer.getFormularioUno().getA3132());
			res.setA3133(customer.getFormularioUno().getA3133());
			res.setA3131P(customer.getFormularioUno().getA3131P());
			res.setA3132P(customer.getFormularioUno().getA3132P());
			res.setA3133P(customer.getFormularioUno().getA3133P());

		}

		return res;
	}

	// //---------Pagina 2 --------------------------------------------

	public TipoCIF2 reconstructCreate2(Tipo2FormularioDosForm formularioDosForm) {
		Assert.notNull(formularioDosForm);

		TipoCIF2 customer;

		customer = findOne(formularioDosForm.getCustomerId());

		Tipo2FormularioDos formulario = new Tipo2FormularioDos();
		customer.setFormularioDos(formulario);

		// formulario A3
		customer.getFormularioDos().setA31(formularioDosForm.getA31());
		customer.getFormularioDos().setA31c(formularioDosForm.getA31c());
		customer.getFormularioDos().setA32(formularioDosForm.getA32());
		customer.getFormularioDos().setA32c(formularioDosForm.getA32c());

		return customer;
	}

	public Tipo2FormularioDosForm formularioDosToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioDosForm res;

		res = new Tipo2FormularioDosForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioDos() == null) {
			res.setA31(null);
			res.setA31c(null);
			res.setA32(null);
			res.setA32c(null);

		} else {

			res.setA31(customer.getFormularioDos().getA31());
			res.setA31c(customer.getFormularioDos().getA31c());
			res.setA32(customer.getFormularioDos().getA32());
			res.setA32c(customer.getFormularioDos().getA32c());

		}

		return res;
	}

	// //// Pagina 3 formulario uno

	public TipoCIF2 reconstructCreate3(
			Tipo2FormularioTresForm formularioTresForm) {
		Assert.notNull(formularioTresForm);

		TipoCIF2 customer;

		customer = findOne(formularioTresForm.getCustomerId());

		Tipo2FormularioTres formulario = new Tipo2FormularioTres();
		customer.setFormularioTres(formulario);

		// formulario A4
		customer.getFormularioTres().setA411(formularioTresForm.getA411());
		customer.getFormularioTres().setA412(formularioTresForm.getA412());
		customer.getFormularioTres().setA413(formularioTresForm.getA413());
		customer.getFormularioTres().setA414(formularioTresForm.getA414());
		customer.getFormularioTres().setA421(formularioTresForm.getA421());
		customer.getFormularioTres().setA422(formularioTresForm.getA422());
		customer.getFormularioTres().setA423(formularioTresForm.getA423());
		customer.getFormularioTres().setA424(formularioTresForm.getA424());

		customer.getFormularioTres().setA43011(formularioTresForm.getA43011());
		customer.getFormularioTres().setA43012(formularioTresForm.getA43012());
		customer.getFormularioTres().setA43013(formularioTresForm.getA43013());
		customer.getFormularioTres().setA43014(formularioTresForm.getA43014());

		customer.getFormularioTres().setA43021(formularioTresForm.getA43021());
		customer.getFormularioTres().setA43022(formularioTresForm.getA43022());
		customer.getFormularioTres().setA43023(formularioTresForm.getA43023());
		customer.getFormularioTres().setA43024(formularioTresForm.getA43024());

		customer.getFormularioTres().setA43031(formularioTresForm.getA43031());
		customer.getFormularioTres().setA43032(formularioTresForm.getA43032());
		customer.getFormularioTres().setA43033(formularioTresForm.getA43033());
		customer.getFormularioTres().setA43034(formularioTresForm.getA43034());

		customer.getFormularioTres().setA43041(formularioTresForm.getA43041());
		customer.getFormularioTres().setA43042(formularioTresForm.getA43042());
		customer.getFormularioTres().setA43043(formularioTresForm.getA43043());
		customer.getFormularioTres().setA43044(formularioTresForm.getA43044());
		customer.getFormularioTres().setOtros1(formularioTresForm.getOtros1());

		customer.getFormularioTres().setA43051(formularioTresForm.getA43051());
		customer.getFormularioTres().setA43052(formularioTresForm.getA43052());
		customer.getFormularioTres().setA43053(formularioTresForm.getA43053());
		customer.getFormularioTres().setA43054(formularioTresForm.getA43054());
		customer.getFormularioTres().setOtros2(formularioTresForm.getOtros2());

		return customer;
	}

	public Tipo2FormularioTresForm formularioTresToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioTresForm res;

		res = new Tipo2FormularioTresForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioTres() == null) {
			res.setA411(null);
			res.setA412(null);
			res.setA413(null);
			res.setA414(null);
			res.setA421(null);
			res.setA422(null);
			res.setA423(null);
			res.setA424(null);
			res.setA43011(null);
			res.setA43012(null);
			res.setA43013(null);
			res.setA43014(null);
			res.setA43021(null);
			res.setA43022(null);
			res.setA43023(null);
			res.setA43024(null);
			res.setA43031(null);
			res.setA43032(null);
			res.setA43033(null);
			res.setA43034(null);
			res.setA43041(null);
			res.setA43042(null);
			res.setA43043(null);
			res.setA43044(null);
			res.setOtros1(null);
			res.setA43051(null);
			res.setA43052(null);
			res.setA43053(null);
			res.setA43054(null);
			res.setOtros2(null);

		} else {

			res.setA411(customer.getFormularioTres().getA411());
			res.setA412(customer.getFormularioTres().getA412());
			res.setA413(customer.getFormularioTres().getA413());
			res.setA414(customer.getFormularioTres().getA414());
			res.setA421(customer.getFormularioTres().getA421());
			res.setA422(customer.getFormularioTres().getA422());
			res.setA423(customer.getFormularioTres().getA423());
			res.setA424(customer.getFormularioTres().getA424());

			res.setA43011(customer.getFormularioTres().getA43011());
			res.setA43012(customer.getFormularioTres().getA43012());
			res.setA43013(customer.getFormularioTres().getA43013());
			res.setA43014(customer.getFormularioTres().getA43014());

			res.setA43021(customer.getFormularioTres().getA43021());
			res.setA43022(customer.getFormularioTres().getA43022());
			res.setA43023(customer.getFormularioTres().getA43023());
			res.setA43024(customer.getFormularioTres().getA43024());

			res.setA43031(customer.getFormularioTres().getA43031());
			res.setA43032(customer.getFormularioTres().getA43032());
			res.setA43033(customer.getFormularioTres().getA43033());
			res.setA43034(customer.getFormularioTres().getA43034());

			res.setA43041(customer.getFormularioTres().getA43041());
			res.setA43042(customer.getFormularioTres().getA43042());
			res.setA43043(customer.getFormularioTres().getA43043());
			res.setA43044(customer.getFormularioTres().getA43044());
			res.setOtros1(customer.getFormularioTres().getOtros1());

			res.setA43051(customer.getFormularioTres().getA43051());
			res.setA43052(customer.getFormularioTres().getA43052());
			res.setA43053(customer.getFormularioTres().getA43053());
			res.setA43054(customer.getFormularioTres().getA43054());
			res.setOtros2(customer.getFormularioTres().getOtros2());

		}

		return res;
	}

	// //// Pagina 4 formulario uno

	public TipoCIF2 reconstructCreate4(
			Tipo2FormularioCuatroForm formularioCuatroForm) {
		Assert.notNull(formularioCuatroForm);

		TipoCIF2 customer;

		customer = findOne(formularioCuatroForm.getCustomerId());

		Tipo2FormularioCuatro formulario = new Tipo2FormularioCuatro();
		customer.setFormularioCuatro(formulario);

		// formulario A5
		customer.getFormularioCuatro().setA61s(formularioCuatroForm.getA61s());
		customer.getFormularioCuatro().setA61n(formularioCuatroForm.getA61n());
		customer.getFormularioCuatro().setA62s(formularioCuatroForm.getA62s());
		customer.getFormularioCuatro().setA62n(formularioCuatroForm.getA62n());
		customer.getFormularioCuatro().setA63s(formularioCuatroForm.getA63s());
		customer.getFormularioCuatro().setA63n(formularioCuatroForm.getA63n());
		customer.getFormularioCuatro().setA64s(formularioCuatroForm.getA64s());
		customer.getFormularioCuatro().setA64n(formularioCuatroForm.getA64n());
		customer.getFormularioCuatro().setOtrosModalidad(
				formularioCuatroForm.getOtrosModalidad());
		;

		// formulario A6

		customer.getFormularioCuatro()
				.setA6011(formularioCuatroForm.getA6011());
		customer.getFormularioCuatro()
				.setA6012(formularioCuatroForm.getA6012());
		customer.getFormularioCuatro()
				.setA6021(formularioCuatroForm.getA6021());
		customer.getFormularioCuatro()
				.setA6022(formularioCuatroForm.getA6022());
		customer.getFormularioCuatro()
				.setA6031(formularioCuatroForm.getA6031());
		customer.getFormularioCuatro()
				.setA6032(formularioCuatroForm.getA6032());
		customer.getFormularioCuatro()
				.setA6041(formularioCuatroForm.getA6041());
		customer.getFormularioCuatro()
				.setA6042(formularioCuatroForm.getA6042());
		customer.getFormularioCuatro()
				.setA6051(formularioCuatroForm.getA6051());
		customer.getFormularioCuatro()
				.setA6052(formularioCuatroForm.getA6052());
		customer.getFormularioCuatro()
				.setA6061(formularioCuatroForm.getA6061());
		customer.getFormularioCuatro()
				.setA6062(formularioCuatroForm.getA6062());
		customer.getFormularioCuatro()
				.setA6071(formularioCuatroForm.getA6071());
		customer.getFormularioCuatro()
				.setA6072(formularioCuatroForm.getA6072());
		customer.getFormularioCuatro()
				.setA6081(formularioCuatroForm.getA6081());
		customer.getFormularioCuatro()
				.setA6082(formularioCuatroForm.getA6082());

		customer.getFormularioCuatro()
				.setA6091(formularioCuatroForm.getA6091());
		customer.getFormularioCuatro()
				.setA6101(formularioCuatroForm.getA6101());
		customer.getFormularioCuatro()
				.setA6111(formularioCuatroForm.getA6111());
		customer.getFormularioCuatro()
				.setA6121(formularioCuatroForm.getA6121());
		customer.getFormularioCuatro()
				.setA6131(formularioCuatroForm.getA6131());
		customer.getFormularioCuatro()
				.setA6141(formularioCuatroForm.getA6141());
		customer.getFormularioCuatro()
				.setA6092(formularioCuatroForm.getA6092());
		customer.getFormularioCuatro()
				.setA6102(formularioCuatroForm.getA6102());
		customer.getFormularioCuatro()
				.setA6112(formularioCuatroForm.getA6112());
		customer.getFormularioCuatro()
				.setA6122(formularioCuatroForm.getA6122());
		customer.getFormularioCuatro()
				.setA6132(formularioCuatroForm.getA6132());
		customer.getFormularioCuatro()
				.setA6142(formularioCuatroForm.getA6142());

		customer.getFormularioCuatro().setAotros(
				formularioCuatroForm.getAotros());

		return customer;
	}

	public Tipo2FormularioCuatroForm formularioCuatroToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioCuatroForm res;

		res = new Tipo2FormularioCuatroForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCuatro() == null) {
			res.setA61s(null);
			res.setA61n(null);
			res.setA62s(null);
			res.setA62n(null);
			res.setA63s(null);
			res.setA63s(null);
			res.setA64s(null);
			res.setA64n(null);
			res.setOtrosModalidad(null);
			res.setA6011(null);
			res.setA6012(null);
			res.setA6021(null);
			res.setA6022(null);
			res.setA6031(null);
			res.setA6032(null);
			res.setA6041(null);
			res.setA6042(null);
			res.setA6051(null);
			res.setA6052(null);
			res.setA6061(null);
			res.setA6062(null);
			res.setA6071(null);
			res.setA6072(null);
			res.setA6081(null);
			res.setA6082(null);
			res.setA6091(null);
			res.setA6101(null);
			res.setA6111(null);
			res.setA6121(null);
			res.setA6131(null);
			res.setA6141(null);
			res.setA6092(null);
			res.setA6102(null);
			res.setA6112(null);
			res.setA6122(null);
			res.setA6132(null);
			res.setA6142(null);
			res.setAotros(null);

		} else {

			res.setA61s(customer.getFormularioCuatro().getA61s());
			res.setA61n(customer.getFormularioCuatro().getA61n());
			res.setA62s(customer.getFormularioCuatro().getA62s());
			res.setA62n(customer.getFormularioCuatro().getA62n());
			res.setA63s(customer.getFormularioCuatro().getA63s());
			res.setA63n(customer.getFormularioCuatro().getA63n());
			res.setA64s(customer.getFormularioCuatro().getA64s());
			res.setA64n(customer.getFormularioCuatro().getA64n());
			res.setOtrosModalidad(customer.getFormularioCuatro()
					.getOtrosModalidad());

			res.setA6011(customer.getFormularioCuatro().getA6011());
			res.setA6012(customer.getFormularioCuatro().getA6012());
			res.setA6021(customer.getFormularioCuatro().getA6021());
			res.setA6022(customer.getFormularioCuatro().getA6022());
			res.setA6031(customer.getFormularioCuatro().getA6031());
			res.setA6032(customer.getFormularioCuatro().getA6032());
			res.setA6041(customer.getFormularioCuatro().getA6041());
			res.setA6042(customer.getFormularioCuatro().getA6042());
			res.setA6051(customer.getFormularioCuatro().getA6051());
			res.setA6052(customer.getFormularioCuatro().getA6052());
			res.setA6061(customer.getFormularioCuatro().getA6061());
			res.setA6062(customer.getFormularioCuatro().getA6062());
			res.setA6071(customer.getFormularioCuatro().getA6071());
			res.setA6072(customer.getFormularioCuatro().getA6072());
			res.setA6081(customer.getFormularioCuatro().getA6081());
			res.setA6082(customer.getFormularioCuatro().getA6082());

			res.setA6091(customer.getFormularioCuatro().getA6091());
			res.setA6101(customer.getFormularioCuatro().getA6101());
			res.setA6111(customer.getFormularioCuatro().getA6111());
			res.setA6121(customer.getFormularioCuatro().getA6121());
			res.setA6131(customer.getFormularioCuatro().getA6131());
			res.setA6141(customer.getFormularioCuatro().getA6141());
			res.setA6092(customer.getFormularioCuatro().getA6092());
			res.setA6102(customer.getFormularioCuatro().getA6102());
			res.setA6112(customer.getFormularioCuatro().getA6112());
			res.setA6122(customer.getFormularioCuatro().getA6122());
			res.setA6132(customer.getFormularioCuatro().getA6132());
			res.setA6142(customer.getFormularioCuatro().getA6142());
			res.setAotros(customer.getFormularioCuatro().getAotros());

		}

		return res;
	}

	// Pagina 5 formulario uno.

	public TipoCIF2 reconstructCreate5(
			Tipo2FormularioCincoForm formularioCincoForm) {
		Assert.notNull(formularioCincoForm);

		TipoCIF2 customer;

		customer = findOne(formularioCincoForm.getCustomerId());

		Tipo2FormularioCinco formulario = new Tipo2FormularioCinco();
		customer.setFormularioCinco(formulario);

		// formulario A5
		customer.getFormularioCinco().setA711(formularioCincoForm.getA711());
		customer.getFormularioCinco().setA712(formularioCincoForm.getA712());
		customer.getFormularioCinco().setA713(formularioCincoForm.getA713());
		customer.getFormularioCinco().setA714(formularioCincoForm.getA714());
		customer.getFormularioCinco().setA715(formularioCincoForm.getA715());
		customer.getFormularioCinco().setA716(formularioCincoForm.getA716());
		customer.getFormularioCinco().setA721(formularioCincoForm.getA721());
		customer.getFormularioCinco().setA722(formularioCincoForm.getA722());
		customer.getFormularioCinco().setA723(formularioCincoForm.getA723());
		customer.getFormularioCinco().setA724(formularioCincoForm.getA724());
		customer.getFormularioCinco().setA725(formularioCincoForm.getA725());
		customer.getFormularioCinco().setA726(formularioCincoForm.getA726());
		customer.getFormularioCinco().setA7211(formularioCincoForm.getA7211());
		customer.getFormularioCinco().setA7212(formularioCincoForm.getA7212());
		customer.getFormularioCinco().setA7213(formularioCincoForm.getA7213());
		customer.getFormularioCinco().setA7214(formularioCincoForm.getA7214());
		customer.getFormularioCinco().setA7215(formularioCincoForm.getA7215());
		customer.getFormularioCinco().setA7216(formularioCincoForm.getA7216());
		customer.getFormularioCinco().setA7217(formularioCincoForm.getA7217());
		customer.getFormularioCinco().setA7218(formularioCincoForm.getA7218());
		customer.getFormularioCinco().setA7219(formularioCincoForm.getA7219());
		customer.getFormularioCinco()
				.setA72110(formularioCincoForm.getA72110());
		customer.getFormularioCinco()
				.setA72111(formularioCincoForm.getA72111());
		customer.getFormularioCinco()
				.setA72112(formularioCincoForm.getA72112());
		customer.getFormularioCinco()
				.setA7221s(formularioCincoForm.getA7221s());
		customer.getFormularioCinco()
				.setA7222s(formularioCincoForm.getA7222s());
		customer.getFormularioCinco()
				.setA7221n(formularioCincoForm.getA7221n());
		customer.getFormularioCinco()
				.setA7222n(formularioCincoForm.getA7222n());

		return customer;
	}

	public Tipo2FormularioCincoForm formularioCincoToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioCincoForm res;

		res = new Tipo2FormularioCincoForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCinco() == null) {
			res.setA711(null);
			res.setA712(null);
			res.setA713(null);
			res.setA714(null);
			res.setA715(null);
			res.setA716(null);
			res.setA721(null);
			res.setA722(null);
			res.setA723(null);
			res.setA724(null);
			res.setA725(null);
			res.setA726(null);
			res.setA7211(null);
			res.setA7212(null);
			res.setA7213(null);
			res.setA7214(null);
			res.setA7215(null);
			res.setA7216(null);
			res.setA7217(null);
			res.setA7218(null);
			res.setA7219(null);
			res.setA72110(null);
			res.setA72111(null);
			res.setA72112(null);
			res.setA7221s(null);
			res.setA7222s(null);
			res.setA7221n(null);
			res.setA7222n(null);

		} else {

			res.setA711(customer.getFormularioCinco().getA711());
			res.setA712(customer.getFormularioCinco().getA712());
			res.setA713(customer.getFormularioCinco().getA713());
			res.setA714(customer.getFormularioCinco().getA714());
			res.setA715(customer.getFormularioCinco().getA715());
			res.setA716(customer.getFormularioCinco().getA716());
			res.setA721(customer.getFormularioCinco().getA721());
			res.setA722(customer.getFormularioCinco().getA722());
			res.setA723(customer.getFormularioCinco().getA723());
			res.setA724(customer.getFormularioCinco().getA724());
			res.setA725(customer.getFormularioCinco().getA725());
			res.setA726(customer.getFormularioCinco().getA726());
			res.setA7211(customer.getFormularioCinco().getA7211());
			res.setA7212(customer.getFormularioCinco().getA7212());
			res.setA7213(customer.getFormularioCinco().getA7213());
			res.setA7214(customer.getFormularioCinco().getA7214());
			res.setA7215(customer.getFormularioCinco().getA7215());
			res.setA7216(customer.getFormularioCinco().getA7216());
			res.setA7217(customer.getFormularioCinco().getA7217());
			res.setA7218(customer.getFormularioCinco().getA7218());
			res.setA7219(customer.getFormularioCinco().getA7219());
			res.setA72110(customer.getFormularioCinco().getA72110());
			res.setA72111(customer.getFormularioCinco().getA72111());
			res.setA72112(customer.getFormularioCinco().getA72112());
			res.setA7221s(customer.getFormularioCinco().getA7221s());
			res.setA7222s(customer.getFormularioCinco().getA7222s());
			res.setA7221n(customer.getFormularioCinco().getA7221n());
			res.setA7222n(customer.getFormularioCinco().getA7222n());

		}

		return res;
	}

	// //// Pagina 6formulario uno

	public TipoCIF2 reconstructCreate6(
			Tipo2FormularioSeisForm formularioSeisForm) {
		Assert.notNull(formularioSeisForm);

		TipoCIF2 customer;

		customer = findOne(formularioSeisForm.getCustomerId());

		Tipo2FormularioSeis formulario = new Tipo2FormularioSeis();
		customer.setFormularioSeis(formulario);

		// formulario A5
		customer.getFormularioSeis().setA8s(formularioSeisForm.getA8s());
		customer.getFormularioSeis().setA8n(formularioSeisForm.getA8n());
		customer.getFormularioSeis().setObservacionesA8(
				formularioSeisForm.getObservacionesA8());

		return customer;
	}

	public Tipo2FormularioSeisForm formularioSeisToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioSeisForm res;

		res = new Tipo2FormularioSeisForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioSeis() == null) {
			res.setA8s(null);
			res.setA8n(null);
			res.setObservacionesA8(null);

		} else {

			res.setA8s(customer.getFormularioSeis().getA8s());
			res.setA8n(customer.getFormularioSeis().getA8n());
			res.setObservacionesA8(customer.getFormularioSeis()
					.getObservacionesA8());

		}

		return res;
	}

	// //// Anexo1

	public TipoCIF2 reconstructCreate7(
			Tipo2FormularioSieteForm formularioSieteForm) {
		Assert.notNull(formularioSieteForm);

		TipoCIF2 customer;

		customer = findOne(formularioSieteForm.getCustomerId());

		Tipo2FormularioSiete formulario = new Tipo2FormularioSiete();
		customer.setFormularioSiete(formulario);

		customer.getFormularioSiete().setE100(formularioSieteForm.getE100());
		customer.getFormularioSiete().setE101(formularioSieteForm.getE101());
		customer.getFormularioSiete().setE102(formularioSieteForm.getE102());
		customer.getFormularioSiete().setE103(formularioSieteForm.getE103());
		customer.getFormularioSiete().setE104(formularioSieteForm.getE104());
		customer.getFormularioSiete().setE105(formularioSieteForm.getE105());
		customer.getFormularioSiete().setE106(formularioSieteForm.getE106());
		customer.getFormularioSiete().setE107(formularioSieteForm.getE107());
		customer.getFormularioSiete().setE108(formularioSieteForm.getE108());
		customer.getFormularioSiete().setE109(formularioSieteForm.getE109());
		customer.getFormularioSiete().setE110(formularioSieteForm.getE110());
		customer.getFormularioSiete().setE111(formularioSieteForm.getE111());

		customer.getFormularioSiete().setE200(formularioSieteForm.getE200());
		customer.getFormularioSiete().setE201(formularioSieteForm.getE201());
		customer.getFormularioSiete().setE202(formularioSieteForm.getE202());
		customer.getFormularioSiete().setE203(formularioSieteForm.getE203());
		customer.getFormularioSiete().setE204(formularioSieteForm.getE204());
		customer.getFormularioSiete().setE205(formularioSieteForm.getE205());
		customer.getFormularioSiete().setE206(formularioSieteForm.getE206());
		customer.getFormularioSiete().setE207(formularioSieteForm.getE207());
		customer.getFormularioSiete().setE208(formularioSieteForm.getE208());
		customer.getFormularioSiete().setE209(formularioSieteForm.getE209());
		customer.getFormularioSiete().setE210(formularioSieteForm.getE210());
		customer.getFormularioSiete().setE211(formularioSieteForm.getE211());

		customer.getFormularioSiete().setE300(formularioSieteForm.getE300());
		customer.getFormularioSiete().setE301(formularioSieteForm.getE301());
		customer.getFormularioSiete().setE302(formularioSieteForm.getE302());
		customer.getFormularioSiete().setE303(formularioSieteForm.getE303());
		customer.getFormularioSiete().setE304(formularioSieteForm.getE304());
		customer.getFormularioSiete().setE305(formularioSieteForm.getE305());
		customer.getFormularioSiete().setE306(formularioSieteForm.getE306());
		customer.getFormularioSiete().setE307(formularioSieteForm.getE307());
		customer.getFormularioSiete().setE308(formularioSieteForm.getE308());
		customer.getFormularioSiete().setE309(formularioSieteForm.getE309());
		customer.getFormularioSiete().setE310(formularioSieteForm.getE310());
		customer.getFormularioSiete().setE311(formularioSieteForm.getE311());

		customer.getFormularioSiete().setE400(formularioSieteForm.getE400());
		customer.getFormularioSiete().setE401(formularioSieteForm.getE401());
		customer.getFormularioSiete().setE402(formularioSieteForm.getE402());
		customer.getFormularioSiete().setE403(formularioSieteForm.getE403());
		customer.getFormularioSiete().setE404(formularioSieteForm.getE404());
		customer.getFormularioSiete().setE405(formularioSieteForm.getE405());
		customer.getFormularioSiete().setE406(formularioSieteForm.getE406());
		customer.getFormularioSiete().setE407(formularioSieteForm.getE407());
		customer.getFormularioSiete().setE408(formularioSieteForm.getE408());
		customer.getFormularioSiete().setE409(formularioSieteForm.getE409());
		customer.getFormularioSiete().setE410(formularioSieteForm.getE410());
		customer.getFormularioSiete().setE411(formularioSieteForm.getE411());

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

	public Tipo2FormularioSieteForm formularioSieteToForm(TipoCIF2 customer) {
		Assert.notNull(customer);
		Tipo2FormularioSieteForm res;

		res = new Tipo2FormularioSieteForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioSiete() == null) {

			res.setE100(null);
			res.setE101(null);
			res.setE102(null);
			res.setE103(null);
			res.setE104(null);
			res.setE105(null);
			res.setE106(null);
			res.setE107(null);
			res.setE108(null);
			res.setE109(null);
			res.setE110(null);
			res.setE111(null);

			res.setE200(null);
			res.setE201(null);
			res.setE202(null);
			res.setE203(null);
			res.setE204(null);
			res.setE205(null);
			res.setE206(null);
			res.setE207(null);
			res.setE208(null);
			res.setE209(null);
			res.setE210(null);
			res.setE211(null);

			res.setE300(null);
			res.setE301(null);
			res.setE302(null);
			res.setE303(null);
			res.setE304(null);
			res.setE305(null);
			res.setE306(null);
			res.setE307(null);
			res.setE308(null);
			res.setE309(null);
			res.setE310(null);
			res.setE311(null);

			res.setE400(null);
			res.setE401(null);
			res.setE402(null);
			res.setE403(null);
			res.setE404(null);
			res.setE405(null);
			res.setE406(null);
			res.setE407(null);
			res.setE408(null);
			res.setE409(null);
			res.setE410(null);
			res.setE411(null);

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

			res.setE100(customer.getFormularioSiete().getE100());
			res.setE101(customer.getFormularioSiete().getE101());
			res.setE102(customer.getFormularioSiete().getE102());
			res.setE103(customer.getFormularioSiete().getE103());
			res.setE104(customer.getFormularioSiete().getE104());
			res.setE105(customer.getFormularioSiete().getE105());
			res.setE106(customer.getFormularioSiete().getE106());
			res.setE107(customer.getFormularioSiete().getE107());
			res.setE108(customer.getFormularioSiete().getE108());
			res.setE109(customer.getFormularioSiete().getE109());
			res.setE110(customer.getFormularioSiete().getE110());
			res.setE111(customer.getFormularioSiete().getE111());

			res.setE200(customer.getFormularioSiete().getE200());
			res.setE201(customer.getFormularioSiete().getE201());
			res.setE202(customer.getFormularioSiete().getE202());
			res.setE203(customer.getFormularioSiete().getE203());
			res.setE204(customer.getFormularioSiete().getE204());
			res.setE205(customer.getFormularioSiete().getE205());
			res.setE206(customer.getFormularioSiete().getE206());
			res.setE207(customer.getFormularioSiete().getE207());
			res.setE208(customer.getFormularioSiete().getE208());
			res.setE209(customer.getFormularioSiete().getE209());
			res.setE210(customer.getFormularioSiete().getE210());
			res.setE211(customer.getFormularioSiete().getE211());

			res.setE300(customer.getFormularioSiete().getE300());
			res.setE301(customer.getFormularioSiete().getE301());
			res.setE302(customer.getFormularioSiete().getE302());
			res.setE303(customer.getFormularioSiete().getE303());
			res.setE304(customer.getFormularioSiete().getE304());
			res.setE305(customer.getFormularioSiete().getE305());
			res.setE306(customer.getFormularioSiete().getE306());
			res.setE307(customer.getFormularioSiete().getE307());
			res.setE308(customer.getFormularioSiete().getE308());
			res.setE309(customer.getFormularioSiete().getE309());
			res.setE310(customer.getFormularioSiete().getE310());
			res.setE311(customer.getFormularioSiete().getE311());

			res.setE400(customer.getFormularioSiete().getE400());
			res.setE401(customer.getFormularioSiete().getE401());
			res.setE402(customer.getFormularioSiete().getE402());
			res.setE403(customer.getFormularioSiete().getE403());
			res.setE404(customer.getFormularioSiete().getE404());
			res.setE405(customer.getFormularioSiete().getE405());
			res.setE406(customer.getFormularioSiete().getE406());
			res.setE407(customer.getFormularioSiete().getE407());
			res.setE408(customer.getFormularioSiete().getE408());
			res.setE409(customer.getFormularioSiete().getE409());
			res.setE410(customer.getFormularioSiete().getE410());
			res.setE411(customer.getFormularioSiete().getE411());

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
		TipoCIF2 CIF2 = findByPrincipal();
		Assert.isTrue(CIF2.getFormularioUno() != null);
		Assert.isTrue(CIF2.getFormularioDos() != null);
		Assert.isTrue(CIF2.getFormularioTres() != null);
		Assert.isTrue(CIF2.getFormularioCuatro() != null);
		Assert.isTrue(CIF2.getFormularioCinco() != null);
		Assert.isTrue(CIF2.getFormularioSeis() != null);
	}

	public void checkFinEncuestaUnoAdmin(int tipoCIF2Id) {
		TipoCIF2 CIF2 = findOne(tipoCIF2Id);
		Assert.isTrue(CIF2.getFormularioUno() != null);
		Assert.isTrue(CIF2.getFormularioDos() != null);
		Assert.isTrue(CIF2.getFormularioTres() != null);
		Assert.isTrue(CIF2.getFormularioCuatro() != null);
		Assert.isTrue(CIF2.getFormularioCinco() != null);
		Assert.isTrue(CIF2.getFormularioSeis() != null);
	}

	public Long totalTipo2() {
		Long res;

		res = customerRepository.totalTipo2();

		return res;
	}

	public Long totalNoIncidenciasTipo2() {
		Long res;

		res = customerRepository.totalNoIncidenciasTipo2();

		return res;
	}

	public Long totalIncidenciasTipo2() {
		Long res;

		res = customerRepository.totalIncidenciasTipo2();

		return res;
	}

	public Long totalDevueltosPorSerNoAmbientalTipo2() {
		Long res;

		res = customerRepository.totalDevueltosPorSerNoAmbientalTipo2();

		return res;
	}

	public Long totalNumeroRevisadosTipo2() {
		Long res;

		res = customerRepository.totalNumeroRevisados();

		return res;
	}

	public Long totalNumeroValidadosTipo2() {
		Long res;

		res = customerRepository.totalNumeroValidados();

		return res;
	}

	public void encuestaRevisada(int tipoCIF2Id) {
		TipoCIF2 tipoCIF2;

		tipoCIF2 = findOne(tipoCIF2Id);
		Assert.notNull(tipoCIF2);

		tipoCIF2.setRevisado(true);

		save(tipoCIF2);
	}

	public void encuestaEliminarRevisada(int tipoCIF2Id) {
		TipoCIF2 tipoCIF2;

		tipoCIF2 = findOne(tipoCIF2Id);
		Assert.notNull(tipoCIF2);

		tipoCIF2.setRevisado(false);

		save(tipoCIF2);
	}

	public void encuestaNoAmbiental(int tipoCIF2Id) {
		TipoCIF2 tipoCIF2;

		tipoCIF2 = findOne(tipoCIF2Id);
		Assert.notNull(tipoCIF2);

		tipoCIF2.setNoAmbiental(true);

		save(tipoCIF2);
	}

	public void encuestaValida(int tipoCIF2Id) {
		TipoCIF2 tipoCIF2;
		Date now = new Date();

		tipoCIF2 = findOne(tipoCIF2Id);
		Assert.notNull(tipoCIF2);

		tipoCIF2.setValidado(true);
		tipoCIF2.setFechaValidada(now);

		save(tipoCIF2);
	}

	public Collection<TipoCIF2> findAll() {
		Collection<TipoCIF2> res;

		res = customerRepository.findAll();

		return res;
	}

	public Collection<TipoCIF2> encuestasTerminadas() {
		Collection<TipoCIF2> res;

		res = customerRepository.encuestasTerminadas();

		return res;
	}

	public Collection<TipoCIF2> encuestasRevisadas() {
		Collection<TipoCIF2> res;

		res = customerRepository.encuestasRevisadas();

		return res;
	}

	public Collection<TipoCIF2> encuestasNoAmbientales() {
		Collection<TipoCIF2> res;

		res = customerRepository.encuestasNoAmbientales();

		return res;
	}

	public Collection<TipoCIF2> encuestasValidadas() {
		Collection<TipoCIF2> res;

		res = customerRepository.encuestasValidadas();

		return res;
	}

	public Collection<TipoCIF2> encuestasIncidencias() {
		Collection<TipoCIF2> res;

		res = customerRepository.encuestasIncidencias();

		return res;
	}

	public void toTheBlackList(int tipoCIF2Id) {
		TipoCIF2 black;
		Authority authority = new Authority();

		black = customerRepository.findOne(tipoCIF2Id);
		black.getUserAccount().getAuthorities().clear();

		authority.setAuthority(Authority.FIN);
		black.getUserAccount().addAuthority(authority);

	}

	public Collection<TipoCIF2> searchCIF2b(String value) {
		Collection<TipoCIF2> result;

		result = customerRepository.buscarPorCifb(value);

		return result;
	}

	public TipoCIF2 reconstruct(Tipo2Form Tipo2Form) {
		TipoCIF2 Tipo2CIF = new TipoCIF2();

		UserAccount userAccount = new UserAccount();
		userAccount.setUsername(Tipo2Form.getCif());
		Authority authority = new Authority();
		authority.setAuthority("CIF2");
		userAccount.getAuthorities().add(authority);

		Tipo2CIF.setUserAccount(userAccount);
		return Tipo2CIF;
	}

}
