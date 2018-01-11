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
public class TipoCIF2 extends Actor {

	// Atributes------------------------------

	// Relaciones -------------------------------------------
	private Tipo2FormularioUno formularioUno;
	private Tipo2FormularioDos formularioDos;
	private Tipo2FormularioTres formularioTres;
	private Tipo2FormularioCuatro formularioCuatro;
	private Tipo2FormularioCinco formularioCinco;
	private Tipo2FormularioSeis formularioSeis;
	private Tipo2FormularioSiete formularioSiete;
	private Boolean terminadaEncuestaDos;
	private Boolean validado;
	private Boolean noAmbiental;
	private Boolean revisado;
	private Date fechaEnvio;
	private Date fechaValidada;
	private String tipo;
	private String telefonoCIF2;

	@Valid
	public Tipo2FormularioUno getFormularioUno() {
		return formularioUno;
	}

	public void setFormularioUno(Tipo2FormularioUno formularioUno) {
		this.formularioUno = formularioUno;
	}

	@Valid
	public Tipo2FormularioDos getFormularioDos() {
		return formularioDos;
	}

	public void setFormularioDos(Tipo2FormularioDos formularioDos) {
		this.formularioDos = formularioDos;
	}

	public Tipo2FormularioTres getFormularioTres() {
		return formularioTres;
	}

	public void setFormularioTres(Tipo2FormularioTres formularioTres) {
		this.formularioTres = formularioTres;
	}

	public Tipo2FormularioCuatro getFormularioCuatro() {
		return formularioCuatro;
	}

	public void setFormularioCuatro(Tipo2FormularioCuatro formularioCuatro) {
		this.formularioCuatro = formularioCuatro;
	}

	public Tipo2FormularioCinco getFormularioCinco() {
		return formularioCinco;
	}

	public void setFormularioCinco(Tipo2FormularioCinco formularioCinco) {
		this.formularioCinco = formularioCinco;
	}

	public Tipo2FormularioSeis getFormularioSeis() {
		return formularioSeis;
	}

	public void setFormularioSeis(Tipo2FormularioSeis formularioSeis) {
		this.formularioSeis = formularioSeis;
	}

	public Tipo2FormularioSiete getFormularioSiete() {
		return formularioSiete;
	}

	public void setFormularioSiete(Tipo2FormularioSiete formularioSiete) {
		this.formularioSiete = formularioSiete;
	}

	public Boolean getTerminadaEncuestaDos() {
		return terminadaEncuestaDos;
	}

	public void setTerminadaEncuestaDos(Boolean terminadaEncuestaDos) {
		this.terminadaEncuestaDos = terminadaEncuestaDos;
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

	public String getTelefonoCIF2() {
		return telefonoCIF2;
	}

	public void setTelefonoCIF2(String telefonoCIF2) {
		this.telefonoCIF2 = telefonoCIF2;
	}

}
