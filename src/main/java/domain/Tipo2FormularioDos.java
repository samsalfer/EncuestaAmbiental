package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo2FormularioDos {

	// Constructors -----------------------------------------------------------

	public Tipo2FormularioDos() {
		super();
	}

	// Attributes -------------------------------------------------------------

	// A3
	private String a31;
	private String a31c;
	private String a32;
	private String a32c;

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

	public String getA32() {
		return a32;
	}

	public void setA32(String a32) {
		this.a32 = a32;
	}

	public String getA32c() {
		return a32c;
	}

	public void setA32c(String a32c) {
		this.a32c = a32c;
	}

}