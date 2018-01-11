package domain;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.validation.Valid;

@Entity
@Access(AccessType.PROPERTY)
@Table(indexes = { @Index(columnList = "fechaEnvio") })
public class TipoCIF4 extends Actor {

	// Atributes------------------------------

	// Relaciones -------------------------------------------
	private Tipo4FormularioUno formularioUno;
	private Tipo4FormularioDos formularioDos;
	private Tipo4FormularioTres formularioTres;
	private Tipo4FormularioCuatro formularioCuatro;
	private Tipo4FormularioCinco formularioCinco;
	private Tipo4FormularioSeis formularioSeis;
	private Boolean terminadaEncuestaCuatro;
	private Boolean validado;
	private Boolean noAmbiental;
	private Boolean revisado;
	private Date fechaEnvio;
	private Date fechaValidada;
	private String tipo;
	private String telefonoCIF4;

	@Valid
	public Tipo4FormularioUno getFormularioUno() {
		return formularioUno;
	}

	public void setFormularioUno(Tipo4FormularioUno formularioUno) {
		this.formularioUno = formularioUno;
	}

	@Valid
	public Tipo4FormularioDos getFormularioDos() {
		return formularioDos;
	}

	public void setFormularioDos(Tipo4FormularioDos formularioDos) {
		this.formularioDos = formularioDos;
	}

	public Tipo4FormularioTres getFormularioTres() {
		return formularioTres;
	}

	public void setFormularioTres(Tipo4FormularioTres formularioTres) {
		this.formularioTres = formularioTres;
	}

	public Tipo4FormularioCuatro getFormularioCuatro() {
		return formularioCuatro;
	}

	public void setFormularioCuatro(Tipo4FormularioCuatro formularioCuatro) {
		this.formularioCuatro = formularioCuatro;
	}

	public Tipo4FormularioCinco getFormularioCinco() {
		return formularioCinco;
	}

	public void setFormularioCinco(Tipo4FormularioCinco formularioCinco) {
		this.formularioCinco = formularioCinco;
	}

	public Tipo4FormularioSeis getFormularioSeis() {
		return formularioSeis;
	}

	public void setFormularioSeis(Tipo4FormularioSeis formularioSeis) {
		this.formularioSeis = formularioSeis;
	}

	public Boolean getTerminadaEncuestaCuatro() {
		return terminadaEncuestaCuatro;
	}

	public void setTerminadaEncuestaCuatro(Boolean terminadaEncuestaCuatro) {
		this.terminadaEncuestaCuatro = terminadaEncuestaCuatro;
	}

	public Boolean getValidado() {
		return validado;
	}

	public void setValidado(Boolean validado) {
		this.validado = validado;
	}

	public Boolean getNoAmbiental() {
		return noAmbiental;
	}

	public void setNoAmbiental(Boolean noAmbiental) {
		this.noAmbiental = noAmbiental;
	}

	public Boolean getRevisado() {
		return revisado;
	}

	public void setRevisado(Boolean revisado) {
		this.revisado = revisado;
	}

	public Date getFechaEnvio() {
		return fechaEnvio;
	}

	public void setFechaEnvio(Date fechaEnvio) {
		this.fechaEnvio = fechaEnvio;
	}

	public Date getFechaValidada() {
		return fechaValidada;
	}

	public void setFechaValidada(Date fechaValidada) {
		this.fechaValidada = fechaValidada;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getTelefonoCIF4() {
		return telefonoCIF4;
	}

	public void setTelefonoCIF4(String telefonoCIF4) {
		this.telefonoCIF4 = telefonoCIF4;
	}

}
