package forms;

import java.math.BigDecimal;


public class Tipo1FormularioTresForm {

	// Constructors -----------------------------------------------------------

	public Tipo1FormularioTresForm() {
		super();
	}

	// Attributes--------------------------------------------------------------

	private int customerId;

	//A4
	private BigDecimal facturacionTotal;
	private BigDecimal facturacionAmbiental;
	private Integer contaminacionAire;
	private Integer contaminacionRuido;
	private Integer gestionAgua;
	private Integer recogidaAguaResidual;
	private Integer saneamientoSuelos;
	private Integer recogidaResiduos;
	private Integer reciclajeResiduos;
	private Integer energiaRenovable;
	private Integer produccionEcologica;
	private Integer elaboracionProduccionEcologica;
	private Integer espaciosProtegisdos;
	private Integer gestionCasaRural;
	private Integer hotelRural;
	private Integer campingRural;
	private Integer mesonRural;
	private Integer turismoActivo;
	private Integer promocionEcoturistico;
	private Integer consultoriaAmbiental;
	private String otros;
	private Integer otrosPorcentaje;
	private Integer construccionSostenibleEdificios;
	private Integer instalacionRenovable;
	private Integer estudioSostenible;
	private Integer transporteSostenible;
	private Integer fabricacionEficiente;
	
	public BigDecimal getFacturacionTotal() {
		return facturacionTotal;
	}

	public void setFacturacionTotal(BigDecimal facturacionTotal) {
		this.facturacionTotal = facturacionTotal;
	}

	public BigDecimal getFacturacionAmbiental() {
		return facturacionAmbiental;
	}

	public void setFacturacionAmbiental(BigDecimal facturacionAmbiental) {
		this.facturacionAmbiental = facturacionAmbiental;
	}
	
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	public Integer getContaminacionAire() {
		return contaminacionAire;
	}
	public void setContaminacionAire(Integer contaminacionAire) {
		this.contaminacionAire = contaminacionAire;
	}
	public Integer getContaminacionRuido() {
		return contaminacionRuido;
	}
	public void setContaminacionRuido(Integer contaminacionRuido) {
		this.contaminacionRuido = contaminacionRuido;
	}
	public Integer getGestionAgua() {
		return gestionAgua;
	}
	public void setGestionAgua(Integer gestionAgua) {
		this.gestionAgua = gestionAgua;
	}
	public Integer getRecogidaAguaResidual() {
		return recogidaAguaResidual;
	}
	public void setRecogidaAguaResidual(Integer recogidaAguaResidual) {
		this.recogidaAguaResidual = recogidaAguaResidual;
	}
	public Integer getSaneamientoSuelos() {
		return saneamientoSuelos;
	}
	public void setSaneamientoSuelos(Integer saneamientoSuelos) {
		this.saneamientoSuelos = saneamientoSuelos;
	}
	public Integer getRecogidaResiduos() {
		return recogidaResiduos;
	}
	public void setRecogidaResiduos(Integer recogidaResiduos) {
		this.recogidaResiduos = recogidaResiduos;
	}
	public Integer getReciclajeResiduos() {
		return reciclajeResiduos;
	}
	public void setReciclajeResiduos(Integer reciclajeResiduos) {
		this.reciclajeResiduos = reciclajeResiduos;
	}
	public Integer getProduccionEcologica() {
		return produccionEcologica;
	}
	public void setProduccionEcologica(Integer produccionEcologica) {
		this.produccionEcologica = produccionEcologica;
	}
	public Integer getElaboracionProduccionEcologica() {
		return elaboracionProduccionEcologica;
	}
	public void setElaboracionProduccionEcologica(
			Integer elaboracionProduccionEcologica) {
		this.elaboracionProduccionEcologica = elaboracionProduccionEcologica;
	}
	public Integer getEspaciosProtegisdos() {
		return espaciosProtegisdos;
	}
	public void setEspaciosProtegisdos(Integer espaciosProtegisdos) {
		this.espaciosProtegisdos = espaciosProtegisdos;
	}
	public Integer getGestionCasaRural() {
		return gestionCasaRural;
	}
	public void setGestionCasaRural(Integer gestionCasaRural) {
		this.gestionCasaRural = gestionCasaRural;
	}
	public Integer getHotelRural() {
		return hotelRural;
	}
	public void setHotelRural(Integer hotelRural) {
		this.hotelRural = hotelRural;
	}
	public Integer getCampingRural() {
		return campingRural;
	}
	public void setCampingRural(Integer campingRural) {
		this.campingRural = campingRural;
	}
	public Integer getMesonRural() {
		return mesonRural;
	}
	public void setMesonRural(Integer mesonRural) {
		this.mesonRural = mesonRural;
	}
	public Integer getTurismoActivo() {
		return turismoActivo;
	}
	public void setTurismoActivo(Integer turismoActivo) {
		this.turismoActivo = turismoActivo;
	}
	public Integer getPromocionEcoturistico() {
		return promocionEcoturistico;
	}
	public void setPromocionEcoturistico(Integer promocionEcoturistico) {
		this.promocionEcoturistico = promocionEcoturistico;
	}
	public Integer getConsultoriaAmbiental() {
		return consultoriaAmbiental;
	}
	public void setConsultoriaAmbiental(Integer consultoriaAmbiental) {
		this.consultoriaAmbiental = consultoriaAmbiental;
	}
	public String getOtros() {
		return otros;
	}
	public void setOtros(String otros) {
		this.otros = otros;
	}
	public Integer getOtrosPorcentaje() {
		return otrosPorcentaje;
	}
	public void setOtrosPorcentaje(Integer otrosPorcentaje) {
		this.otrosPorcentaje = otrosPorcentaje;
	}
	public Integer getConstruccionSostenibleEdificios() {
		return construccionSostenibleEdificios;
	}
	public void setConstruccionSostenibleEdificios(
			Integer construccionSostenibleEdificios) {
		this.construccionSostenibleEdificios = construccionSostenibleEdificios;
	}
	public Integer getInstalacionRenovable() {
		return instalacionRenovable;
	}
	public void setInstalacionRenovable(Integer instalacionRenovable) {
		this.instalacionRenovable = instalacionRenovable;
	}
	public Integer getEstudioSostenible() {
		return estudioSostenible;
	}
	public void setEstudioSostenible(Integer estudioSostenible) {
		this.estudioSostenible = estudioSostenible;
	}
	public Integer getTransporteSostenible() {
		return transporteSostenible;
	}
	public void setTransporteSostenible(Integer transporteSostenible) {
		this.transporteSostenible = transporteSostenible;
	}
	public Integer getFabricacionEficiente() {
		return fabricacionEficiente;
	}
	public void setFabricacionEficiente(Integer fabricacionEficiente) {
		this.fabricacionEficiente = fabricacionEficiente;
	}
	public Integer getEnergiaRenovable() {
		return energiaRenovable;
	}
	public void setEnergiaRenovable(Integer energiaRenovable) {
		this.energiaRenovable = energiaRenovable;
	}
	
	
	
	
	


}
