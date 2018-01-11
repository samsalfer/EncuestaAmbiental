package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;
import javax.persistence.Lob;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo3FormularioCuatro {

	// Constructors -----------------------------------------------------------

	public Tipo3FormularioCuatro() {
		super();
	}

	// Attributes -------------------------------------------------------------

	private Integer a3311;
	private Integer a3312;
	private Integer a3313;
	private Integer a3314;
	private Integer a3315;
	private Integer a3316;
	private Integer a3317;
	private Integer a3318;
	private Integer a3319;
	private Integer a33110;
	private Integer a33111;
	private Integer a33112;
	private Boolean a3321S;
	private Boolean a3321N;
	private Boolean a3322S;
	private Boolean a3322N;
	private String observaciones;

	public Integer getA3311() {
		return a3311;
	}

	public void setA3311(Integer a3311) {
		this.a3311 = a3311;
	}

	public Integer getA3312() {
		return a3312;
	}

	public void setA3312(Integer a3312) {
		this.a3312 = a3312;
	}

	public Integer getA3313() {
		return a3313;
	}

	public void setA3313(Integer a3313) {
		this.a3313 = a3313;
	}

	public Integer getA3314() {
		return a3314;
	}

	public void setA3314(Integer a3314) {
		this.a3314 = a3314;
	}

	public Integer getA3315() {
		return a3315;
	}

	public void setA3315(Integer a3315) {
		this.a3315 = a3315;
	}

	public Integer getA3316() {
		return a3316;
	}

	public void setA3316(Integer a3316) {
		this.a3316 = a3316;
	}

	public Integer getA3317() {
		return a3317;
	}

	public void setA3317(Integer a3317) {
		this.a3317 = a3317;
	}

	public Integer getA3318() {
		return a3318;
	}

	public void setA3318(Integer a3318) {
		this.a3318 = a3318;
	}

	public Integer getA3319() {
		return a3319;
	}

	public void setA3319(Integer a3319) {
		this.a3319 = a3319;
	}

	public Integer getA33110() {
		return a33110;
	}

	public void setA33110(Integer a33110) {
		this.a33110 = a33110;
	}

	public Integer getA33111() {
		return a33111;
	}

	public void setA33111(Integer a33111) {
		this.a33111 = a33111;
	}

	public Integer getA33112() {
		return a33112;
	}

	public void setA33112(Integer a33112) {
		this.a33112 = a33112;
	}

	public Boolean getA3321S() {
		return a3321S;
	}

	public void setA3321S(Boolean a3321s) {
		a3321S = a3321s;
	}

	public Boolean getA3321N() {
		return a3321N;
	}

	public void setA3321N(Boolean a3321n) {
		a3321N = a3321n;
	}

	public Boolean getA3322S() {
		return a3322S;
	}

	public void setA3322S(Boolean a3322s) {
		a3322S = a3322s;
	}

	public Boolean getA3322N() {
		return a3322N;
	}

	public void setA3322N(Boolean a3322n) {
		a3322N = a3322n;
	}

	@Lob
	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

}