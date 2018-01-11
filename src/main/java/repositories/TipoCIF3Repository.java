package repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import domain.TipoCIF3;

public interface TipoCIF3Repository extends JpaRepository<TipoCIF3, Integer>{

	
	//seleccionamos el customer desde un id específico
	@Query("select c from TipoCIF3 c where c.userAccount.id  = ?1")
	TipoCIF3 findByUserAccountId(int userAccountId);
	
	//total cuestionarios tipo 1 (el total lo buscamos por el cif ya que pueden tener incidencias)
	@Query("select count(c) from TipoCIF3 c where c.formularioUno.a104 is not null")
	Long totalTipo3();
	
	//total cuestionarios tipo 1 sin incidencias
	@Query("select count(c) from TipoCIF3 c where c.terminadaEncuestaTres = true")
	Long totalNoIncidenciasTipo3();
	
	//total cuestionarios tipo 1 con incidencias
	@Query("select count(c) from TipoCIF3 c where c.formularioUno.a104 is not null and c.terminadaEncuestaTres is null")
	Long totalIncidenciasTipo3();
	
	//total cuestionarios tipo 1 devueltos por ser no ambientales
	@Query("select count(c) from TipoCIF3 c where c.noAmbiental = true")
	Long totalDevueltosPorSerNoAmbientalTipo3();
	
	//total cuestionarios tipo 1 atendidas (estan en estado revisado)
	@Query("select count(c) from TipoCIF3 c where c.revisado = true")
	Long totalNumeroRevisados();
	
	//total cuestionarios tipo 1 validados (estan en estado validado)
	@Query("select count(c) from TipoCIF3 c where c.validado = true")
	Long totalNumeroValidados();
	
	//buscamos por cif
	@Query("select c from TipoCIF3 c where c.formularioUno.a104 like ?1")
	Collection<TipoCIF3> buscarPorCif(String value);
	
	//buscamos por cifb
	@Query("select c from TipoCIF3 c where c.userAccount.username = ?1")
	Collection<TipoCIF3> buscarPorCifb(String value);
	
	//encuestas terminadas
	@Query("select c from TipoCIF3 c where c.terminadaEncuestaTres = true and c.revisado = NULL and c.noAmbiental = NULL and c.validado = NULL ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF3> encuestasTerminadas();
	
	//encuestas revisadas
	@Query("select c from TipoCIF3 c where c.terminadaEncuestaTres = true and c.revisado = true and c.noAmbiental = NULL and c.validado = true ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF3> encuestasRevisadas();
	
	//encuestas no ambientales
	@Query("select c from TipoCIF3 c where c.terminadaEncuestaTres = true and c.revisado = NULL and c.noAmbiental = true and c.validado = NULL ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF3> encuestasNoAmbientales();
	
	//encuestas validadas
	@Query("select c from TipoCIF3 c where c.terminadaEncuestaTres = true and c.revisado = NULL and c.noAmbiental = NULL and c.validado = true ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF3> encuestasValidadas();
	
	//encuestas incidencias
	@Query("select c from TipoCIF3 c where c.formularioUno.a104 is not null and c.terminadaEncuestaTres is null")
	Collection<TipoCIF3> encuestasIncidencias();
	
	
	
}

