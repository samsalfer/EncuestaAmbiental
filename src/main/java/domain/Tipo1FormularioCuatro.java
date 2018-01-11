package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Embeddable;

@Embeddable
@Access(AccessType.PROPERTY)
public class Tipo1FormularioCuatro{

	// Constructors -----------------------------------------------------------

	public Tipo1FormularioCuatro() {
		super();
	}

	// Attributes -------------------------------------------------------------

	//A5

	private Integer a511;
	private Integer a512;
	private Integer a513;
	private Integer a514;
	
	private Integer a521;
	private Integer a522;
	private Integer a523;
	private Integer a524;
	
	//A6
	private Boolean a6si;
	private Boolean a6no;
	private String a61;
	private String a62;
	private String a63;
	private String a61a;
	private String a62a;
	private String a63a;
	
	public Integer getA511() {
		return a511;
	}
	public void setA511(Integer a511) {
		this.a511 = a511;
	}
	public Integer getA512() {
		return a512;
	}
	public void setA512(Integer a512) {
		this.a512 = a512;
	}
	public Integer getA513() {
		return a513;
	}
	public void setA513(Integer a513) {
		this.a513 = a513;
	}
	public Integer getA514() {
		return a514;
	}
	public void setA514(Integer a514) {
		this.a514 = a514;
	}
	public Integer getA521() {
		return a521;
	}
	public void setA521(Integer a521) {
		this.a521 = a521;
	}
	public Integer getA522() {
		return a522;
	}
	public void setA522(Integer a522) {
		this.a522 = a522;
	}
	public Integer getA523() {
		return a523;
	}
	public void setA523(Integer a523) {
		this.a523 = a523;
	}
	public Integer getA524() {
		return a524;
	}
	public void setA524(Integer a524) {
		this.a524 = a524;
	}
	public Boolean getA6si() {
		return a6si;
	}
	public void setA6si(Boolean a6si) {
		this.a6si = a6si;
	}
	public Boolean getA6no() {
		return a6no;
	}
	public void setA6no(Boolean a6no) {
		this.a6no = a6no;
	}
	public String getA61() {
		return a61;
	}
	public void setA61(String a61) {
		this.a61 = a61;
	}
	public String getA62() {
		return a62;
	}
	public void setA62(String a62) {
		this.a62 = a62;
	}
	public String getA63() {
		return a63;
	}
	public void setA63(String a63) {
		this.a63 = a63;
	}
	public String getA61a() {
		return a61a;
	}
	public void setA61a(String a61a) {
		this.a61a = a61a;
	}
	public String getA62a() {
		return a62a;
	}
	public void setA62a(String a62a) {
		this.a62a = a62a;
	}
	public String getA63a() {
		return a63a;
	}
	public void setA63a(String a63a) {
		this.a63a = a63a;
	}

	
	
}