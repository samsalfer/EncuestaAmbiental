package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo1FormularioDos {

	// Constructors -----------------------------------------------------------

	public Tipo1FormularioDos() {
		super();
	}

	// Attributes -------------------------------------------------------------

	// A3
	private String a21;
	private String a21c;
	private String a221;
	private String a222;
	private String a33;
	private String a33c;
	private String a341;
	private String a342;
	
	public String getA21() {
		return a21;
	}
	public void setA21(String a21) {
		this.a21 = a21;
	}
	public String getA21c() {
		return a21c;
	}
	public void setA21c(String a21c) {
		this.a21c = a21c;
	}
	public String getA221() {
		return a221;
	}
	public void setA221(String a221) {
		this.a221 = a221;
	}
	public String getA222() {
		return a222;
	}
	public void setA222(String a222) {
		this.a222 = a222;
	}
	public String getA33() {
		return a33;
	}
	public void setA33(String a33) {
		this.a33 = a33;
	}
	public String getA33c() {
		return a33c;
	}
	public void setA33c(String a33c) {
		this.a33c = a33c;
	}
	public String getA341() {
		return a341;
	}
	public void setA341(String a341) {
		this.a341 = a341;
	}
	public String getA342() {
		return a342;
	}
	public void setA342(String a342) {
		this.a342 = a342;
	}

	
}