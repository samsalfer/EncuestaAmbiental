package forms;

import javax.persistence.Access;
import javax.persistence.AccessType;



@Access(AccessType.PROPERTY)
public class Tipo4Form {

	private String cif;

	public String getCif() {
		return cif;
	}

	public void setCif(String cif) {
		this.cif = cif;
	}


		
}
