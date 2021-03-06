package services;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.TipoCIF4Repository;
import security.Authority;
import security.LoginService;
import security.UserAccount;
import domain.Tipo4FormularioCinco;
import domain.Tipo4FormularioCuatro;
import domain.Tipo4FormularioDos;
import domain.Tipo4FormularioSeis;
import domain.Tipo4FormularioTres;
import domain.Tipo4FormularioUno;
import domain.TipoCIF4;
import forms.Tipo4Form;
import forms.Tipo4FormularioCincoForm;
import forms.Tipo4FormularioCuatroForm;
import forms.Tipo4FormularioDosForm;
import forms.Tipo4FormularioSeisForm;
import forms.Tipo4FormularioTresForm;
import forms.Tipo4FormularioUnoForm;

@Service
@Transactional
public class TipoCIF4Service {

	// Managed repository
	// -----------------------------------------------------------------------

	@Autowired
	private TipoCIF4Repository customerRepository;

	// Supporting services
	// -----------------------------------------------------------------------

	// Constructors
	// --------------------------------------------------------------------------------

	// Simple CRUD methods
	// ------------------------------------------------------------------

	public TipoCIF4 create() {
		TipoCIF4 result;
		UserAccount userAccount;

		result = new TipoCIF4();
		Assert.notNull(result);

		Authority authority = new Authority();
		authority.setAuthority(Authority.CIF4);

		userAccount = new UserAccount();
		userAccount.addAuthority(authority);

		result.setUserAccount(userAccount);

		return result;
	}

	public void saveCreate(TipoCIF4 tipoCIF4) {
		Assert.notNull(tipoCIF4);

		String password = "JdA2879";
		Md5PasswordEncoder encoder = new Md5PasswordEncoder();
		password = encoder.encodePassword(password, null);
		tipoCIF4.getUserAccount().setPassword(password);
		
		if (customerRepository.exists(tipoCIF4.getId())) {
			tipoCIF4.setId(IdGenerator.generateUniqueId());
		}
		
		if (customerRepository.exists(tipoCIF4.getId())) {
			tipoCIF4.setId(IdGenerator.generateUniqueId());
		}

		customerRepository.save(tipoCIF4);
	}

	public void save(TipoCIF4 customer) {
		Assert.notNull(customer);
		customerRepository.save(customer);
	}

	public void saveEdit(TipoCIF4 customer) {
		Assert.notNull(customer);

		customerRepository.save(customer);

	}

	public void delete(TipoCIF4 customer) {
		Assert.notNull(customer);
		Assert.isTrue(customer.getId() != 0);
		Assert.isTrue(customerRepository.exists(customer.getId()));

		customerRepository.delete(customer);
	}

	// Other business methods
	// -----------------------------------------------------------------

	public TipoCIF4 findOne(int customerId) {
		TipoCIF4 res;

		res = customerRepository.findOne(customerId);

		return res;
	}

	public TipoCIF4 findByPrincipal() {
		TipoCIF4 result;
		UserAccount userAccount;

		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = findByUserAccount(userAccount);
		Assert.notNull(result);

		return result;
	}

	public TipoCIF4 findByUserAccount(UserAccount userAccount) {
		Assert.notNull(userAccount);

		TipoCIF4 result;

		result = customerRepository.findByUserAccountId(userAccount.getId());

		return result;
	}

	public TipoCIF4 reconstructCreate(Tipo4FormularioUnoForm formularioUnoForm) {
		Assert.notNull(formularioUnoForm);

		TipoCIF4 customer;

		customer = findOne(formularioUnoForm.getCustomerId());

		Tipo4FormularioUno formulario = new Tipo4FormularioUno();
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
		customer.getFormularioUno().setA211(formularioUnoForm.getA211());
		customer.getFormularioUno().setA212(formularioUnoForm.getA212());
		customer.getFormularioUno().setA213(formularioUnoForm.getA213());
		customer.getFormularioUno().setA2131(formularioUnoForm.getA2131());
		customer.getFormularioUno().setA2132(formularioUnoForm.getA2132());
		customer.getFormularioUno().setA2133(formularioUnoForm.getA2133());
		customer.getFormularioUno().setA2131P(formularioUnoForm.getA2131P());
		customer.getFormularioUno().setA2132P(formularioUnoForm.getA2132P());
		customer.getFormularioUno().setA2133P(formularioUnoForm.getA2133P());

		return customer;
	}

	public Tipo4FormularioUnoForm formularioUnoToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioUnoForm res;

		res = new Tipo4FormularioUnoForm();

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
			res.setA211(null);
			res.setA212(null);
			res.setA213(null);
			res.setA2131(null);
			res.setA2132(null);
			res.setA2133(null);
			res.setA2131P(null);
			res.setA2132P(null);
			res.setA2133P(null);
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
			res.setA211(customer.getFormularioUno().getA211());
			res.setA212(customer.getFormularioUno().getA212());
			res.setA213(customer.getFormularioUno().getA213());
			res.setA2131(customer.getFormularioUno().getA2131());
			res.setA2132(customer.getFormularioUno().getA2132());
			res.setA2133(customer.getFormularioUno().getA2133());
			res.setA2131P(customer.getFormularioUno().getA2131P());
			res.setA2132P(customer.getFormularioUno().getA2132P());
			res.setA2133P(customer.getFormularioUno().getA2133P());

		}

		return res;
	}

	// //---------Pagina 2 --------------------------------------------

	public TipoCIF4 reconstructCreate2(Tipo4FormularioDosForm formularioDosForm) {
		Assert.notNull(formularioDosForm);

		TipoCIF4 customer;

		customer = findOne(formularioDosForm.getCustomerId());

		Tipo4FormularioDos formulario = new Tipo4FormularioDos();
		customer.setFormularioDos(formulario);

		// formulario A3
		customer.getFormularioDos().setA31(formularioDosForm.getA31());
		customer.getFormularioDos().setA31c(formularioDosForm.getA31c());
		customer.getFormularioDos().setA321(formularioDosForm.getA321());
		customer.getFormularioDos().setA322(formularioDosForm.getA322());
		customer.getFormularioDos().setA411(formularioDosForm.getA411());
		customer.getFormularioDos().setA412(formularioDosForm.getA412());

		return customer;
	}

	public Tipo4FormularioDosForm formularioDosToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioDosForm res;

		res = new Tipo4FormularioDosForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioDos() == null) {
			res.setA31(null);
			res.setA31c(null);
			res.setA321(null);
			res.setA322(null);
			res.setA411(null);
			res.setA412(null);

		} else {

			res.setA31(customer.getFormularioDos().getA31());
			res.setA31c(customer.getFormularioDos().getA31c());
			res.setA321(customer.getFormularioDos().getA321());
			res.setA322(customer.getFormularioDos().getA322());
			res.setA411(customer.getFormularioDos().getA411());
			res.setA412(customer.getFormularioDos().getA412());

		}

		return res;
	}

	// //// Pagina 3 formulario uno

	public TipoCIF4 reconstructCreate3(
			Tipo4FormularioTresForm formularioTresForm) {
		Assert.notNull(formularioTresForm);

		TipoCIF4 customer;

		customer = findOne(formularioTresForm.getCustomerId());

		Tipo4FormularioTres formulario = new Tipo4FormularioTres();
		customer.setFormularioTres(formulario);

		// formulario A4
		customer.getFormularioTres().setA51n(formularioTresForm.getA51n());
		customer.getFormularioTres().setA51s(formularioTresForm.getA51s());
		customer.getFormularioTres().setA5211(formularioTresForm.getA5211());
		customer.getFormularioTres().setA5212(formularioTresForm.getA5212());
		customer.getFormularioTres().setA5221(formularioTresForm.getA5221());
		customer.getFormularioTres().setA5222(formularioTresForm.getA5222());
		customer.getFormularioTres().setA5231(formularioTresForm.getA5231());
		customer.getFormularioTres().setA5232(formularioTresForm.getA5232());
		customer.getFormularioTres().setA5241(formularioTresForm.getA5241());
		customer.getFormularioTres().setA5242(formularioTresForm.getA5242());
		customer.getFormularioTres().setA5251(formularioTresForm.getA5251());
		customer.getFormularioTres().setA5252(formularioTresForm.getA5252());
		customer.getFormularioTres().setA5261(formularioTresForm.getA5261());
		customer.getFormularioTres().setA5262(formularioTresForm.getA5262());
		customer.getFormularioTres().setA5271(formularioTresForm.getA5271());
		customer.getFormularioTres().setA5272(formularioTresForm.getA5272());
		customer.getFormularioTres().setA528otros1(
				formularioTresForm.getA528otros1());
		customer.getFormularioTres().setA5281(formularioTresForm.getA5281());
		customer.getFormularioTres().setA5282(formularioTresForm.getA5282());
		customer.getFormularioTres().setA5291(formularioTresForm.getA5291());
		customer.getFormularioTres().setA5292(formularioTresForm.getA5292());

		return customer;
	}

	public Tipo4FormularioTresForm formularioTresToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioTresForm res;

		res = new Tipo4FormularioTresForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioTres() == null) {
			res.setA51s(null);
			res.setA51n(null);
			res.setA5211(null);
			res.setA5212(null);
			res.setA5221(null);
			res.setA5222(null);
			res.setA5231(null);
			res.setA5232(null);
			res.setA5241(null);
			res.setA5242(null);
			res.setA5251(null);
			res.setA5252(null);
			res.setA5261(null);
			res.setA5262(null);
			res.setA5271(null);
			res.setA5272(null);
			res.setA528otros1(null);
			res.setA5281(null);
			res.setA5282(null);
			res.setA5291(null);
			res.setA5292(null);

		} else {
			
			res.setA51n(customer.getFormularioTres().getA51n());
			res.setA51s(customer.getFormularioTres().getA51s());
			res.setA5211(customer.getFormularioTres().getA5211());
			res.setA5212(customer.getFormularioTres().getA5212());
			res.setA5221(customer.getFormularioTres().getA5221());
			res.setA5222(customer.getFormularioTres().getA5222());
			res.setA5231(customer.getFormularioTres().getA5231());
			res.setA5232(customer.getFormularioTres().getA5232());
			res.setA5241(customer.getFormularioTres().getA5241());
			res.setA5242(customer.getFormularioTres().getA5242());
			res.setA5251(customer.getFormularioTres().getA5251());
			res.setA5252(customer.getFormularioTres().getA5252());
			res.setA5261(customer.getFormularioTres().getA5261());
			res.setA5262(customer.getFormularioTres().getA5262());
			res.setA5271(customer.getFormularioTres().getA5271());
			res.setA5272(customer.getFormularioTres().getA5272());
			res.setA528otros1(customer.getFormularioTres().getA528otros1());
			res.setA5281(customer.getFormularioTres().getA5281());
			res.setA5282(customer.getFormularioTres().getA5282());
			res.setA5291(customer.getFormularioTres().getA5291());
			res.setA5292(customer.getFormularioTres().getA5292());

		}

		return res;
	}

	// //// Pagina 4 formulario uno

	public TipoCIF4 reconstructCreate4(
			Tipo4FormularioCuatroForm formularioCuatroForm) {
		Assert.notNull(formularioCuatroForm);

		TipoCIF4 customer;

		customer = findOne(formularioCuatroForm.getCustomerId());

		Tipo4FormularioCuatro formulario = new Tipo4FormularioCuatro();
		customer.setFormularioCuatro(formulario);

		customer.getFormularioCuatro()
				.setA5311(formularioCuatroForm.getA5311());
		customer.getFormularioCuatro()
				.setA5312(formularioCuatroForm.getA5312());
		customer.getFormularioCuatro()
				.setA5321(formularioCuatroForm.getA5321());
		customer.getFormularioCuatro()
				.setA5322(formularioCuatroForm.getA5322());
		customer.getFormularioCuatro()
				.setA5331(formularioCuatroForm.getA5331());
		customer.getFormularioCuatro()
				.setA5332(formularioCuatroForm.getA5332());
		customer.getFormularioCuatro()
				.setA5341(formularioCuatroForm.getA5341());
		customer.getFormularioCuatro()
				.setA5342(formularioCuatroForm.getA5342());
		customer.getFormularioCuatro()
				.setA5351(formularioCuatroForm.getA5351());
		customer.getFormularioCuatro()
				.setA5352(formularioCuatroForm.getA5352());
		customer.getFormularioCuatro()
				.setA5361(formularioCuatroForm.getA5361());
		customer.getFormularioCuatro()
				.setA5362(formularioCuatroForm.getA5362());
		customer.getFormularioCuatro()
				.setA5371(formularioCuatroForm.getA5371());
		customer.getFormularioCuatro()
				.setA5372(formularioCuatroForm.getA5372());
		customer.getFormularioCuatro()
				.setA5381(formularioCuatroForm.getA5381());
		customer.getFormularioCuatro()
				.setA5382(formularioCuatroForm.getA5382());
		customer.getFormularioCuatro()
				.setA5391(formularioCuatroForm.getA5391());
		customer.getFormularioCuatro()
				.setA5392(formularioCuatroForm.getA5392());
		customer.getFormularioCuatro().setA5310otros(
				formularioCuatroForm.getA5310otros());
		customer.getFormularioCuatro().setA53101(
				formularioCuatroForm.getA53101());
		customer.getFormularioCuatro().setA53102(
				formularioCuatroForm.getA53102());
		customer.getFormularioCuatro().setA53111(
				formularioCuatroForm.getA53111());
		customer.getFormularioCuatro().setA53112(
				formularioCuatroForm.getA53112());
		customer.getFormularioCuatro().setA53121(
				formularioCuatroForm.getA53121());
		customer.getFormularioCuatro().setA53122(
				formularioCuatroForm.getA53122());
		customer.getFormularioCuatro().setA53131(
				formularioCuatroForm.getA53131());
		customer.getFormularioCuatro().setA53132(
				formularioCuatroForm.getA53132());
		customer.getFormularioCuatro().setA611(formularioCuatroForm.getA611());
		customer.getFormularioCuatro().setA612(formularioCuatroForm.getA612());
		customer.getFormularioCuatro().setA613(formularioCuatroForm.getA613());
		customer.getFormularioCuatro().setA614(formularioCuatroForm.getA614());
		customer.getFormularioCuatro().setA615(formularioCuatroForm.getA615());
		customer.getFormularioCuatro().setA616otros(
				formularioCuatroForm.getA616otros());
		customer.getFormularioCuatro().setA616(formularioCuatroForm.getA616());
		customer.getFormularioCuatro().setA621(formularioCuatroForm.getA621());
		customer.getFormularioCuatro().setA622(formularioCuatroForm.getA622());
		customer.getFormularioCuatro().setA623(formularioCuatroForm.getA623());
		customer.getFormularioCuatro().setA624otros(
				formularioCuatroForm.getA624otros());
		customer.getFormularioCuatro().setA624(formularioCuatroForm.getA624());

		return customer;
	}

	public Tipo4FormularioCuatroForm formularioCuatroToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioCuatroForm res;

		res = new Tipo4FormularioCuatroForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioCuatro() == null) {
			res.setA5311(null);
			res.setA5312(null);
			res.setA5321(null);
			res.setA5322(null);
			res.setA5331(null);
			res.setA5332(null);
			res.setA5341(null);
			res.setA5342(null);
			res.setA5351(null);
			res.setA5352(null);
			res.setA5361(null);
			res.setA5362(null);
			res.setA5371(null);
			res.setA5372(null);
			res.setA5381(null);
			res.setA5382(null);
			res.setA5391(null);
			res.setA5392(null);
			res.setA5310otros(null);
			res.setA53101(null);
			res.setA53102(null);
			res.setA53111(null);
			res.setA53112(null);
			res.setA53121(null);
			res.setA53122(null);
			res.setA53131(null);
			res.setA53132(null);
			res.setA611(null);
			res.setA612(null);
			res.setA613(null);
			res.setA614(null);
			res.setA615(null);
			res.setA616otros(null);
			res.setA616(null);
			res.setA621(null);
			res.setA622(null);
			res.setA623(null);
			res.setA624otros(null);
			res.setA624(null);

		} else {
			res.setA5311(customer.getFormularioCuatro().getA5311());
			res.setA5312(customer.getFormularioCuatro().getA5312());
			res.setA5321(customer.getFormularioCuatro().getA5321());
			res.setA5322(customer.getFormularioCuatro().getA5322());
			res.setA5331(customer.getFormularioCuatro().getA5331());
			res.setA5332(customer.getFormularioCuatro().getA5332());
			res.setA5341(customer.getFormularioCuatro().getA5341());
			res.setA5342(customer.getFormularioCuatro().getA5342());
			res.setA5351(customer.getFormularioCuatro().getA5351());
			res.setA5352(customer.getFormularioCuatro().getA5352());
			res.setA5361(customer.getFormularioCuatro().getA5361());
			res.setA5362(customer.getFormularioCuatro().getA5362());
			res.setA5371(customer.getFormularioCuatro().getA5371());
			res.setA5372(customer.getFormularioCuatro().getA5372());
			res.setA5381(customer.getFormularioCuatro().getA5381());
			res.setA5382(customer.getFormularioCuatro().getA5382());
			res.setA5391(customer.getFormularioCuatro().getA5391());
			res.setA5392(customer.getFormularioCuatro().getA5392());
			res.setA5310otros(customer.getFormularioCuatro().getA5310otros());
			res.setA53101(customer.getFormularioCuatro().getA53101());
			res.setA53102(customer.getFormularioCuatro().getA53102());
			res.setA53111(customer.getFormularioCuatro().getA53111());
			res.setA53112(customer.getFormularioCuatro().getA53112());
			res.setA53121(customer.getFormularioCuatro().getA53121());
			res.setA53122(customer.getFormularioCuatro().getA53122());
			res.setA53131(customer.getFormularioCuatro().getA53131());
			res.setA53132(customer.getFormularioCuatro().getA53132());
			res.setA611(customer.getFormularioCuatro().getA611());
			res.setA612(customer.getFormularioCuatro().getA612());
			res.setA613(customer.getFormularioCuatro().getA613());
			res.setA614(customer.getFormularioCuatro().getA614());
			res.setA615(customer.getFormularioCuatro().getA615());
			res.setA616otros(customer.getFormularioCuatro().getA616otros());
			res.setA616(customer.getFormularioCuatro().getA616());
			res.setA621(customer.getFormularioCuatro().getA621());
			res.setA622(customer.getFormularioCuatro().getA622());
			res.setA623(customer.getFormularioCuatro().getA623());
			res.setA624otros(customer.getFormularioCuatro().getA624otros());
			res.setA624(customer.getFormularioCuatro().getA624());

		}

		return res;
	}

	// Pagina 5 formulario uno.

	public TipoCIF4 reconstructCreate5(
			Tipo4FormularioCincoForm formularioCincoForm) {
		Assert.notNull(formularioCincoForm);

		TipoCIF4 customer;

		customer = findOne(formularioCincoForm.getCustomerId());

		Tipo4FormularioCinco formulario = new Tipo4FormularioCinco();
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
		customer.getFormularioCinco().setA7221s(formularioCincoForm.getA7221s());
		customer.getFormularioCinco().setA7221n(formularioCincoForm.getA7221n());
		customer.getFormularioCinco().setA7222s(formularioCincoForm.getA7222s());
		customer.getFormularioCinco().setA7222n(formularioCincoForm.getA7222n());

		return customer;
	}

	public Tipo4FormularioCincoForm formularioCincoToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioCincoForm res;

		res = new Tipo4FormularioCincoForm();

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
			res.setA7221n(null);
			res.setA7222s(null);
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
			res.setA7221n(customer.getFormularioCinco().getA7221n());
			res.setA7222s(customer.getFormularioCinco().getA7222s());
			res.setA7222n(customer.getFormularioCinco().getA7222n());

		}

		return res;
	}

	// //// Pagina 6formulario cuatro

	public TipoCIF4 reconstructCreate6(
			Tipo4FormularioSeisForm formularioSeisForm) {
		Assert.notNull(formularioSeisForm);

		TipoCIF4 customer;

		customer = findOne(formularioSeisForm.getCustomerId());

		Tipo4FormularioSeis formulario = new Tipo4FormularioSeis();
		customer.setFormularioSeis(formulario);

		// formulario A5
		customer.getFormularioSeis().setA811(formularioSeisForm.getA811());
		customer.getFormularioSeis().setA812(formularioSeisForm.getA812());
		customer.getFormularioSeis().setA813(formularioSeisForm.getA813());
		customer.getFormularioSeis().setA814(formularioSeisForm.getA814());
		customer.getFormularioSeis().setA815(formularioSeisForm.getA815());
		customer.getFormularioSeis().setA816(formularioSeisForm.getA816());
		customer.getFormularioSeis().setA817(formularioSeisForm.getA817());
		customer.getFormularioSeis().setA818(formularioSeisForm.getA818());
		customer.getFormularioSeis().setA819(formularioSeisForm.getA819());
		customer.getFormularioSeis().setA8110otros(
				formularioSeisForm.getA8110otros());
		customer.getFormularioSeis().setA8110(formularioSeisForm.getA8110());
		customer.getFormularioSeis().setA821(formularioSeisForm.getA821());
		customer.getFormularioSeis().setA822(formularioSeisForm.getA822());
		customer.getFormularioSeis().setA823(formularioSeisForm.getA823());
		customer.getFormularioSeis().setA824(formularioSeisForm.getA824());
		customer.getFormularioSeis().setA825(formularioSeisForm.getA825());
		customer.getFormularioSeis().setA826(formularioSeisForm.getA826());
		customer.getFormularioSeis().setA827(formularioSeisForm.getA827());
		customer.getFormularioSeis().setA828otros(
				formularioSeisForm.getA828otros());
		customer.getFormularioSeis().setA828(formularioSeisForm.getA828());
		customer.getFormularioSeis().setA831S(formularioSeisForm.getA831S());
		customer.getFormularioSeis().setA831N(formularioSeisForm.getA831N());
		customer.getFormularioSeis().setA8311(formularioSeisForm.getA8311());
		customer.getFormularioSeis().setA8312(formularioSeisForm.getA8312());
		customer.getFormularioSeis().setObservaciones(formularioSeisForm.getObservaciones());

		return customer;
	}

	public Tipo4FormularioSeisForm formularioSeisToForm(TipoCIF4 customer) {
		Assert.notNull(customer);
		Tipo4FormularioSeisForm res;

		res = new Tipo4FormularioSeisForm();

		res.setCustomerId(customer.getId());

		if (customer.getFormularioSeis() == null) {

			res.setA811(null);
			res.setA812(null);
			res.setA813(null);
			res.setA814(null);
			res.setA815(null);
			res.setA816(null);
			res.setA817(null);
			res.setA818(null);
			res.setA819(null);
			res.setA8110otros(null);
			res.setA8110(null);
			res.setA821(null);
			res.setA822(null);
			res.setA823(null);
			res.setA824(null);
			res.setA825(null);
			res.setA826(null);
			res.setA827(null);
			res.setA828otros(null);
			res.setA828(null);
			res.setA831S(null);
			res.setA831N(null);
			res.setA8311(null);
			res.setA8312(null);
			res.setObservaciones(null);

		} else {
			
			res.setA811(customer.getFormularioSeis().getA811());
			res.setA812(customer.getFormularioSeis().getA812());
			res.setA813(customer.getFormularioSeis().getA813());
			res.setA814(customer.getFormularioSeis().getA814());
			res.setA815(customer.getFormularioSeis().getA815());
			res.setA816(customer.getFormularioSeis().getA816());
			res.setA817(customer.getFormularioSeis().getA817());
			res.setA818(customer.getFormularioSeis().getA818());
			res.setA819(customer.getFormularioSeis().getA819());
			res.setA8110otros(
					customer.getFormularioSeis().getA8110otros());
			res.setA8110(customer.getFormularioSeis().getA8110());
			res.setA821(customer.getFormularioSeis().getA821());
			res.setA822(customer.getFormularioSeis().getA822());
			res.setA823(customer.getFormularioSeis().getA823());
			res.setA824(customer.getFormularioSeis().getA824());
			res.setA825(customer.getFormularioSeis().getA825());
			res.setA826(customer.getFormularioSeis().getA826());
			res.setA827(customer.getFormularioSeis().getA827());
			res.setA828otros(
					customer.getFormularioSeis().getA828otros());
			res.setA828(customer.getFormularioSeis().getA828());
			res.setA831S(customer.getFormularioSeis().getA831S());
			res.setA831N(customer.getFormularioSeis().getA831N());
			res.setA8311(customer.getFormularioSeis().getA8311());
			res.setA8312(customer.getFormularioSeis().getA8312());
			res.setObservaciones(customer.getFormularioSeis().getObservaciones());

		}

		return res;
	}

	public void checkFinEncuestaCuatro() {
		TipoCIF4 cif1 = findByPrincipal();
		Assert.isTrue(cif1.getFormularioUno() != null);
		Assert.isTrue(cif1.getFormularioDos() != null);
		Assert.isTrue(cif1.getFormularioTres() != null);
		Assert.isTrue(cif1.getFormularioCuatro() != null);
		Assert.isTrue(cif1.getFormularioCinco() != null);
	}

	public void checkFinEncuestaCuatroAdmin(int tipoCIF4Id) {
		TipoCIF4 cif1 = findOne(tipoCIF4Id);
		Assert.isTrue(cif1.getFormularioUno() != null);
		Assert.isTrue(cif1.getFormularioDos() != null);
		Assert.isTrue(cif1.getFormularioTres() != null);
		Assert.isTrue(cif1.getFormularioCuatro() != null);
		Assert.isTrue(cif1.getFormularioCinco() != null);
	}

	public Long totalTipo4() {
		Long res;

		res = customerRepository.totalTipo4();

		return res;
	}

	public Long totalNoIncidenciasTipo4() {
		Long res;

		res = customerRepository.totalNoIncidenciasTipo4();

		return res;
	}

	public Long totalIncidenciasTipo4() {
		Long res;

		res = customerRepository.totalIncidenciasTipo4();

		return res;
	}

	public Long totalDevueltosPorSerNoAmbientalTipo4() {
		Long res;

		res = customerRepository.totalDevueltosPorSerNoAmbientalTipo4();

		return res;
	}

	public Long totalNumeroRevisadosTipo4() {
		Long res;

		res = customerRepository.totalNumeroRevisados();

		return res;
	}

	public Long totalNumeroValidadosTipo4() {
		Long res;

		res = customerRepository.totalNumeroValidados();

		return res;
	}

	public void encuestaRevisada(int tipoCIF4Id) {
		TipoCIF4 tipoCIF4;

		tipoCIF4 = findOne(tipoCIF4Id);
		Assert.notNull(tipoCIF4);

		tipoCIF4.setRevisado(true);

		save(tipoCIF4);
	}

	public void encuestaEliminarRevisada(int tipoCIF4Id) {
		TipoCIF4 tipoCIF4;

		tipoCIF4 = findOne(tipoCIF4Id);
		Assert.notNull(tipoCIF4);

		tipoCIF4.setRevisado(false);

		save(tipoCIF4);
	}

	public void encuestaNoAmbiental(int tipoCIF4Id) {
		TipoCIF4 tipoCIF4;

		tipoCIF4 = findOne(tipoCIF4Id);
		Assert.notNull(tipoCIF4);

		tipoCIF4.setNoAmbiental(true);

		save(tipoCIF4);
	}

	public void encuestaValida(int tipoCIF4Id) {
		TipoCIF4 tipoCIF4;
		Date now = new Date();

		tipoCIF4 = findOne(tipoCIF4Id);
		Assert.notNull(tipoCIF4);

		tipoCIF4.setValidado(true);
		tipoCIF4.setFechaValidada(now);

		save(tipoCIF4);
	}

	public Collection<TipoCIF4> findAll() {
		Collection<TipoCIF4> res;

		res = customerRepository.findAll();

		return res;
	}

	public Collection<TipoCIF4> encuestasTerminadas() {
		Collection<TipoCIF4> res;

		res = customerRepository.encuestasTerminadas();

		return res;
	}

	public Collection<TipoCIF4> encuestasRevisadas() {
		Collection<TipoCIF4> res;

		res = customerRepository.encuestasRevisadas();

		return res;
	}

	public Collection<TipoCIF4> encuestasNoAmbientales() {
		Collection<TipoCIF4> res;

		res = customerRepository.encuestasNoAmbientales();

		return res;
	}

	public Collection<TipoCIF4> encuestasValidadas() {
		Collection<TipoCIF4> res;

		res = customerRepository.encuestasValidadas();

		return res;
	}

	public Collection<TipoCIF4> encuestasIncidencias() {
		Collection<TipoCIF4> res;

		res = customerRepository.encuestasIncidencias();

		return res;
	}

	public void toTheBlackList(int tipoCIF4Id) {
		TipoCIF4 black;
		Authority authority = new Authority();

		black = customerRepository.findOne(tipoCIF4Id);
		black.getUserAccount().getAuthorities().clear();

		authority.setAuthority(Authority.FIN);
		black.getUserAccount().addAuthority(authority);

	}

	public Collection<TipoCIF4> searchCIF1b(String value) {
		Collection<TipoCIF4> result;

		result = customerRepository.buscarPorCifb(value);

		return result;
	}

	public TipoCIF4 reconstruct(Tipo4Form tipo4Form) {
		TipoCIF4 tipo4CIF = new TipoCIF4();

		UserAccount userAccount = new UserAccount();
		userAccount.setUsername(tipo4Form.getCif());
		Authority authority = new Authority();
		authority.setAuthority("CIF4");
		userAccount.getAuthorities().add(authority);

		tipo4CIF.setUserAccount(userAccount);
		return tipo4CIF;
	}

	public BigDecimal sumaA52i(TipoCIF4 tipoCif4){
		BigDecimal result= new BigDecimal(0.0);
		
		result=result.add(tipoCif4.getFormularioTres().getA5211());
		result=result.add(tipoCif4.getFormularioTres().getA5221());
		result=result.add(tipoCif4.getFormularioTres().getA5231());
		result=result.add(tipoCif4.getFormularioTres().getA5241());
		result=result.add(tipoCif4.getFormularioTres().getA5251());
		result=result.add(tipoCif4.getFormularioTres().getA5261());
		result=result.add(tipoCif4.getFormularioTres().getA5271());
		result=result.add(tipoCif4.getFormularioTres().getA5281());
		result=result.add(tipoCif4.getFormularioTres().getA5291());
		
		return result;
		
	}
}
