package forms;

import javax.persistence.Lob;

public class Tipo2FormularioSeisForm {

	// Constructors -----------------------------------------------------------

	public Tipo2FormularioSeisForm() {
		super();
	}

	// Attributes--------------------------------------------------------------

	private int customerId;

	// A8

	private Boolean a8s;
	private Boolean a8n;

	private String observacionesA8;

	public Boolean getA8s() {
		return a8s;
	}

	public void setA8s(Boolean a8s) {
		this.a8s = a8s;
	}

	public Boolean getA8n() {
		return a8n;
	}

	public void setA8n(Boolean a8n) {
		this.a8n = a8n;
	}

	@Lob
	public String getObservacionesA8() {
		return observacionesA8;
	}

	public void setObservacionesA8(String observacionesA8) {
		this.observacionesA8 = observacionesA8;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

}
