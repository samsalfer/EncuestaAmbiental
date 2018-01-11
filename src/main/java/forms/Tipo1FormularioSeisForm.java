package forms;

import javax.persistence.Lob;

public class Tipo1FormularioSeisForm {

	// Constructors -----------------------------------------------------------

	public Tipo1FormularioSeisForm() {
		super();
	}

	// Attributes--------------------------------------------------------------

	private int customerId;

	//A8
	
	private Boolean ambientalAndaluciaSi;
	private Boolean ambientalAndaluciaNo;
	
	private String observacionesA8;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public Boolean getAmbientalAndaluciaSi() {
		return ambientalAndaluciaSi;
	}

	public void setAmbientalAndaluciaSi(Boolean ambientalAndaluciaSi) {
		this.ambientalAndaluciaSi = ambientalAndaluciaSi;
	}

	public Boolean getAmbientalAndaluciaNo() {
		return ambientalAndaluciaNo;
	}

	public void setAmbientalAndaluciaNo(Boolean ambientalAndaluciaNo) {
		this.ambientalAndaluciaNo = ambientalAndaluciaNo;
	}

	@Lob
	public String getObservacionesA8() {
		return observacionesA8;
	}

	public void setObservacionesA8(String observacionesA8) {
		this.observacionesA8 = observacionesA8;
	}
	
	

}
