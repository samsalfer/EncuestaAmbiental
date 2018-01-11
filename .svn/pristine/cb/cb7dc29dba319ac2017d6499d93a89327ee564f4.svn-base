/* Authority.java
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package security;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.security.core.GrantedAuthority;

@Embeddable
@Access(AccessType.PROPERTY)
public class Authority implements GrantedAuthority {

	// Constructors -----------------------------------------------------------

	private static final long serialVersionUID = 1L;

	public Authority() {
		super();
	}

	// Values -----------------------------------------------------------------

	public static final String ADMIN = "ADMIN";
	public static final String CIF1 = "CIF1";
	public static final String CIF2 = "CIF2";
	public static final String CIF3 = "CIF3";
	public static final String CIF4 = "CIF4";
	public static final String FIN = "FIN";

	// Attributes -------------------------------------------------------------

	private String authority;

	@NotBlank
	@Pattern(regexp = "^" + ADMIN + "|" + FIN + "|" + CIF1 + "|" + CIF2 + "|" + CIF3 + "|" + CIF4 +"$")
	@Override
	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public static Collection<Authority> listAuthorities() {
		Collection<Authority> result;
		Authority authority;

		result = new ArrayList<Authority>();

		authority = new Authority();
		authority.setAuthority(ADMIN);
		result.add(authority);

		authority = new Authority();
		authority.setAuthority(CIF1);
		result.add(authority);
		
		authority = new Authority();
		authority.setAuthority(CIF2);
		result.add(authority);
		
		authority = new Authority();
		authority.setAuthority(CIF3);
		result.add(authority);
		
		authority = new Authority();
		authority.setAuthority(CIF4);
		result.add(authority);
		
		authority = new Authority();
		authority.setAuthority(FIN);
		result.add(authority);

		return result;
	}

	// Equality ---------------------------------------------------------------

	@Override
	public int hashCode() {
		return this.getAuthority().hashCode();
	}

	@Override
	public boolean equals(Object other) {
		boolean result;

		if (this == other)
			result = true;
		else if (other == null)
			result = false;
		else if (!this.getClass().isInstance(other))
			result = false;
		else
			result = (this.getAuthority().equals(((Authority) other).getAuthority()));

		return result;
	}

}
