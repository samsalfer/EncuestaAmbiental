package domain;

import java.math.BigDecimal;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo4FormularioDos {

	// Constructors -----------------------------------------------------------

	public Tipo4FormularioDos() {
		super();
	}

	// Attributes -------------------------------------------------------------

	// A3
	private String a31;
	private String a31c;
	private String a321;
	private String a322;
	private BigDecimal a411;
	private BigDecimal a412;

	public String getA31() {
		return a31;
	}

	public void setA31(String a31) {
		this.a31 = a31;
	}

	public String getA31c() {
		return a31c;
	}

	public void setA31c(String a31c) {
		this.a31c = a31c;
	}

	public String getA321() {
		return a321;
	}

	public void setA321(String a321) {
		this.a321 = a321;
	}

	public String getA322() {
		return a322;
	}

	public void setA322(String a322) {
		this.a322 = a322;
	}

	public BigDecimal getA411() {
		return a411;
	}

	public void setA411(BigDecimal a411) {
		this.a411 = a411;
	}

	public BigDecimal getA412() {
		return a412;
	}

	public void setA412(BigDecimal a412) {
		this.a412 = a412;
	}

}