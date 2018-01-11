package repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import domain.TipoCIF4;

public interface TipoCIF4Repository extends JpaRepository<TipoCIF4, Integer>{

	
	//seleccionamos el customer desde un id específico
	@Query("select c from TipoCIF4 c where c.userAccount.id  = ?1")
	TipoCIF4 findByUserAccountId(int userAccountId);
	
	//total cuestionarios tipo 1 (el total lo buscamos por el cif ya que pueden tener incidencias)
	@Query("select count(c) from TipoCIF4 c where c.formularioUno.a104 is not null")
	Long totalTipo4();
	
	//total cuestionarios tipo 1 sin incidencias
	@Query("select count(c) from TipoCIF4 c where c.terminadaEncuestaCuatro = true")
	Long totalNoIncidenciasTipo4();
	
	//total cuestionarios tipo 1 con incidencias
	@Query("select count(c) from TipoCIF4 c where c.formularioUno.a104 is not null and c.terminadaEncuestaCuatro is null")
	Long totalIncidenciasTipo4();
	
	//total cuestionarios tipo 1 devueltos por ser no ambientales
	@Query("select count(c) from TipoCIF4 c where c.noAmbiental = true")
	Long totalDevueltosPorSerNoAmbientalTipo4();
	
	//total cuestionarios tipo 1 atendidas (estan en estado revisado)
	@Query("select count(c) from TipoCIF4 c where c.revisado = true")
	Long totalNumeroRevisados();
	
	//total cuestionarios tipo 1 validados (estan en estado validado)
	@Query("select count(c) from TipoCIF4 c where c.validado = true")
	Long totalNumeroValidados();
	
	//buscamos por cif
	@Query("select c from TipoCIF4 c where c.formularioUno.a104 like ?1")
	Collection<TipoCIF4> buscarPorCif(String value);
	
	//buscamos por cifb
	@Query("select c from TipoCIF4 c where c.userAccount.username = ?1")
	Collection<TipoCIF4> buscarPorCifb(String value);
	
	//encuestas terminadas
	@Query("select c from TipoCIF4 c where c.terminadaEncuestaCuatro = true and c.revisado = NULL and c.noAmbiental = NULL and c.validado = NULL ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF4> encuestasTerminadas();
	
	//encuestas revisadas
	@Query("select c from TipoCIF4 c where c.terminadaEncuestaCuatro = true and c.revisado = true and c.noAmbiental = NULL and c.validado = true ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF4> encuestasRevisadas();
	
	//encuestas no ambientales
	@Query("select c from TipoCIF4 c where c.terminadaEncuestaCuatro = true and c.revisado = NULL and c.noAmbiental = true and c.validado = NULL ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF4> encuestasNoAmbientales();
	
	//encuestas validadas
	@Query("select c from TipoCIF4 c where c.terminadaEncuestaCuatro = true and c.revisado = NULL and c.noAmbiental = NULL and c.validado = true ORDER BY c.fechaEnvio ASC")
	Collection<TipoCIF4> encuestasValidadas();
	
	//encuestas incidencias
	@Query("select c from TipoCIF4 c where c.formularioUno.a104 is not null and c.terminadaEncuestaCuatro is null")
	Collection<TipoCIF4> encuestasIncidencias();
	
	
	
}

