package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo2FormularioUno {

	// Constructors -----------------------------------------------------------

	public Tipo2FormularioUno() {
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

	private Boolean a311; // Privada nacional
	private Boolean a312; // privada multinacional
	private Boolean a313; // sin animo de lucro
	private Boolean a314; // publica
	private Boolean a315; // participacion publica
	private String a3131; // participacion publica1
	private String a3132; // participacion publica2
	private String a3133; // participacion publica 3
	private Integer a3131P; // porcentaje 1
	private Integer a3132P; // porcentaje 2
	private Integer a3133P; // porcentaje 3

	// Nombre
	public String getA102() {
		return a102;
	}

	public void setA102(String a102) {
		this.a102 = a102;
	}

	// Acronimo
	public String getA103() {
		return a103;
	}

	public void setA103(String a103) {
		this.a103 = a103;
	}

	// Nif
	public String getA104() {
		return a104;
	}

	public void setA104(String a104) {
		this.a104 = a104;
	}

	// Direccion
	public String getA105() {
		return a105;
	}

	public void setA105(String a105) {
		this.a105 = a105;
	}

	// Codigo postal

	public Integer getA106() {
		return a106;
	}

	public void setA106(Integer a106) {
		this.a106 = a106;
	}

	// provincia

	public String getA107() {
		return a107;
	}

	public void setA107(String a107) {
		this.a107 = a107;
	}

	// municipio

	public String getA108() {
		return a108;
	}

	public void setA108(String a108) {
		this.a108 = a108;
	}

	// Codigo municipal

	public Integer getA109() {
		return a109;
	}

	public void setA109(Integer a109) {
		this.a109 = a109;
	}

	// TelefonoEmpresa

	public Integer getA110() {
		return a110;
	}

	public void setA110(Integer a110) {
		this.a110 = a110;
	}

	// Fax empresa

	public Integer getA111() {
		return a111;
	}

	public void setA111(Integer a111) {
		this.a111 = a111;
	}

	// CorreoEmpresa

	public String getA112() {
		return a112;
	}

	public void setA112(String a112) {
		this.a112 = a112;
	}

	// Web
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

	public Boolean getA311() {
		return a311;
	}

	public void setA311(Boolean a311) {
		this.a311 = a311;
	}

	public Boolean getA312() {
		return a312;
	}

	public void setA312(Boolean a312) {
		this.a312 = a312;
	}

	public Boolean getA313() {
		return a313;
	}

	public void setA313(Boolean a313) {
		this.a313 = a313;
	}

	public String getA3131() {
		return a3131;
	}

	public void setA3131(String a3131) {
		this.a3131 = a3131;
	}

	public String getA3132() {
		return a3132;
	}

	public void setA3132(String a3132) {
		this.a3132 = a3132;
	}

	public String getA3133() {
		return a3133;
	}

	public void setA3133(String a3133) {
		this.a3133 = a3133;
	}

	public Integer getA3131P() {
		return a3131P;
	}

	public void setA3131P(Integer a3131p) {
		a3131P = a3131p;
	}

	public Integer getA3132P() {
		return a3132P;
	}

	public void setA3132P(Integer a3132p) {
		a3132P = a3132p;
	}

	public Integer getA3133P() {
		return a3133P;
	}

	public void setA3133P(Integer a3133p) {
		a3133P = a3133p;
	}

	public Boolean getA314() {
		return a314;
	}

	public void setA314(Boolean a314) {
		this.a314 = a314;
	}

	public Boolean getA315() {
		return a315;
	}

	public void setA315(Boolean a315) {
		this.a315 = a315;
	}

}
