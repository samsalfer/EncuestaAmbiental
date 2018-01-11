package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;
import javax.persistence.Index;
import javax.persistence.Table;

@Embeddable
@Access(AccessType.PROPERTY)
@Table(indexes = { @Index(columnList = "a104") })
public class Tipo4FormularioUno {

	// Constructors -----------------------------------------------------------

	public Tipo4FormularioUno() {
		super();
	}

	// Attributes -------------------------------------------------------------

	// Parte primera del formulario A1
	private String a102; // nombre empresa
	private String a103; // acronimo
	private String a104; // Cif
	private String a105; // Direccion
	private Integer a106; // Codigo postal
	private String a107; // Provincia
	private String a108; // Municipio
	private Integer a109; // Codigo municipal
	private Integer a110; // Telefono
	private Integer a111; // Fax
	private String a112; // Correo Electronico
	private String a113; // Web

	// Persona de contacto

	private String a114; // nombre persona
	private String a115; // cargo
	private Integer a116; // telefono
	private Integer a117; // fax
	private String a118; // correo electronico persona

	// Parte A2

	private Boolean a211; // Privada nacional
	private Boolean a212; // privada multinacional
	private Boolean a213; // publica
	private String a2131; // participacion publica1
	private Integer a2131P; // porcentaje 1
	private String a2132; // participacion publica2
	private Integer a2132P; // porcentaje 2
	private String a2133; // participacion publica 3
	private Integer a2133P; // porcentaje 3

	public String getA102() {
		return a102;
	}

	public void setA102(String a102) {
		this.a102 = a102;
	}

	public String getA103() {
		return a103;
	}

	public void setA103(String a103) {
		this.a103 = a103;
	}

	public String getA104() {
		return a104;
	}

	public void setA104(String a104) {
		this.a104 = a104;
	}

	public String getA105() {
		return a105;
	}

	public void setA105(String a105) {
		this.a105 = a105;
	}

	public Integer getA106() {
		return a106;
	}

	public void setA106(Integer a106) {
		this.a106 = a106;
	}

	public String getA107() {
		return a107;
	}

	public void setA107(String a107) {
		this.a107 = a107;
	}

	public String getA108() {
		return a108;
	}

	public void setA108(String a108) {
		this.a108 = a108;
	}

	public Integer getA109() {
		return a109;
	}

	public void setA109(Integer a109) {
		this.a109 = a109;
	}

	public Integer getA110() {
		return a110;
	}

	public void setA110(Integer a110) {
		this.a110 = a110;
	}

	public Integer getA111() {
		return a111;
	}

	public void setA111(Integer a111) {
		this.a111 = a111;
	}

	public String getA112() {
		return a112;
	}

	public void setA112(String a112) {
		this.a112 = a112;
	}

	public String getA113() {
		return a113;
	}

	public void setA113(String a113) {
		this.a113 = a113;
	}

	public String getA114() {
		return a114;
	}

	public void setA114(String a114) {
		this.a114 = a114;
	}

	public String getA115() {
		return a115;
	}

	public void setA115(String a115) {
		this.a115 = a115;
	}

	public Integer getA116() {
		return a116;
	}

	public void setA116(Integer a116) {
		this.a116 = a116;
	}

	public Integer getA117() {
		return a117;
	}

	public void setA117(Integer a117) {
		this.a117 = a117;
	}

	public String getA118() {
		return a118;
	}

	public void setA118(String a118) {
		this.a118 = a118;
	}

	public Boolean getA211() {
		return a211;
	}

	public void setA211(Boolean a211) {
		this.a211 = a211;
	}

	public Boolean getA212() {
		return a212;
	}

	public void setA212(Boolean a212) {
		this.a212 = a212;
	}

	public Boolean getA213() {
		return a213;
	}

	public void setA213(Boolean a213) {
		this.a213 = a213;
	}

	public String getA2131() {
		return a2131;
	}

	public void setA2131(String a2131) {
		this.a2131 = a2131;
	}

	public Integer getA2131P() {
		return a2131P;
	}

	public void setA2131P(Integer a2131p) {
		a2131P = a2131p;
	}

	public String getA2132() {
		return a2132;
	}

	public void setA2132(String a2132) {
		this.a2132 = a2132;
	}

	public Integer getA2132P() {
		return a2132P;
	}

	public void setA2132P(Integer a2132p) {
		a2132P = a2132p;
	}

	public String getA2133() {
		return a2133;
	}

	public void setA2133(String a2133) {
		this.a2133 = a2133;
	}

	public Integer getA2133P() {
		return a2133P;
	}

	public void setA2133P(Integer a2133p) {
		a2133P = a2133p;
	}

}
