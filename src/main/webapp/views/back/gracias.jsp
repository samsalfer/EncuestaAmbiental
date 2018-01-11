<%-- * action-1.jsp * * Copyright (C) 2013 Universidad de Sevilla * * The use of this project is hereby constrained to the conditions of the * TDG Licence, a copy of which you may download from * http://www.tdg-seville.info/License.html --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<security:authorize
	access="hasAnyRole('CIF1','CIF2','CIF3','CIF4','ADMIN')">
	<div class="row">

		<div class="col-lg-12">
			<div class="col-md-4 col-md-offset-4">
				<img src="back/img/ok1.png" align="middle" alt="Junta"
					style="margin-top: 20px; display: block; margin-left: auto; margin-right: auto;" />
			</div>
		</div>

		<div class="col-lg-4">
			&nbsp;
			<!-- /.col-lg-4 -->
		</div>
		<div class="col-lg-4" style="margin-top: 20px;">
			<div class="panel panel-green">
				<div class="panel-heading">Gracias por terminar el registro</div>
				<div class="panel-body">
					<p align="justify">Sus datos han sido enviados
						satisfactoriamente, gracias por su colaboraci�n.</p>
					<p align="justify">Una vez que la encuesta ha sido enviada sin
						ning�n tipo de error y alg�n revisor haya validado la encuesta,
						�sta pasar� a estar totalmente cumplimentada y terminada por lo
						que no es necesario que el usuario que rellena la encuesta realize
						m�s acciones. En el caso que la encuesta no quede validada, el
						usuario podr� volver a entrar en el sistema con los mismos
						credenciales para terminar de cumplimentar la encuesta.</p>
				</div>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<div class="col-lg-4">
			&nbsp;
			<!-- /.col-lg-4 -->
		</div>
	</div>
</security:authorize>

<security:authorize access="hasAnyRole('ADMIN')">



	<div class="row" align="center">

		<h2>Esta encuesta tiene marcados los siguientes estados:</h2>
		<br>
		<br>
		<div class="col-lg-2 col-lg-offset-2">
			<jstl:choose>
				<jstl:when test="${tipoCIF1.terminadaEncuestaUno == true}">
					<div class="panel panel-green">
				</jstl:when>
				<jstl:when test="${tipoCIF2.terminadaEncuestaDos == true}">
					<div class="panel panel-green">
				</jstl:when>
				<jstl:when test="${tipoCIF3.terminadaEncuestaTres == true}">
					<div class="panel panel-green">
				</jstl:when>
				<jstl:when test="${tipoCIF4.terminadaEncuestaCuatro == true}">
					<div class="panel panel-green">
				</jstl:when>
				<jstl:otherwise>
					<div class="panel panel-yellow">
				</jstl:otherwise>
			</jstl:choose>

			<div class="panel-heading">Encuesta terminada
				satisfactoriamente</div>
			<div class="panel-body">
				<p align="justify">La encuesta ha sido completada sin ning�n
					tipo de error y cumpliendo todas las reglas de validaci�n. Queda
					pendiente la validaci�n de esta por parte de un revisor.</p>
			</div>
			<div class="panel-footer">
				<jstl:choose>
					<jstl:when test="${tipoCIF1.terminadaEncuestaUno == true}">
						<button type="button" class="btn btn-success disabled">Estado
							ya asignado</button>
					</jstl:when>
					<jstl:when test="${tipoCIF2.terminadaEncuestaDos == true}">
						<button type="button" class="btn btn-success disabled">Estado
							ya asignado</button>
					</jstl:when>
					<jstl:when test="${tipoCIF3.terminadaEncuestaTres == true}">
						<button type="button" class="btn btn-success disabled">Estado
							ya asignado</button>
					</jstl:when>
					<jstl:when test="${tipoCIF4.terminadaEncuestaCuatro == true}">
						<button type="button" class="btn btn-success disabled">Estado
							ya asignado</button>
					</jstl:when>
					<jstl:otherwise>
						<button type="button" class="btn btn-warning disabled">Estado
							ya asignado</button>
					</jstl:otherwise>
				</jstl:choose>
			</div>
		</div>
		<!-- /.col-lg-4 -->
	</div>
	<div class="col-lg-2">
		<jstl:choose>
			<jstl:when test="${tipoCIF1.revisado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF2.revisado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF3.revisado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF4.revisado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:otherwise>
				<div class="panel panel-yellow">
			</jstl:otherwise>
		</jstl:choose>
		<div class="panel-heading">Encuesta revisada</div>
		<div class="panel-body">
			<p align="justify">La encuesta ha sido revisada.</p>
		</div>
		<div class="panel-footer">
			<jstl:choose>
				<jstl:when test="${tipoCIF1.revisado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>

				</jstl:when>
				<jstl:when test="${tipoCIF2.revisado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>

				</jstl:when>
				<jstl:when test="${tipoCIF3.revisado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>

				</jstl:when>
				<jstl:when test="${tipoCIF4.revisado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>

				</jstl:when>
				<jstl:when test="${tipoCIF1 !=null and tipoCIF1.revisado != true}">
					<a
						href="encuesta/cif1/encuestaRevisada.do?tipoCIF1Id=${tipoCIF1.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF2 !=null and tipoCIF2.revisado != true}">
					<a
						href="encuesta/cif2/encuestaRevisada.do?tipoCIF2Id=${tipoCIF2.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF3 !=null and tipoCIF3.revisado != true}">
					<a
						href="encuesta/cif3/encuestaRevisada.do?tipoCIF3Id=${tipoCIF3.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF4 !=null and tipoCIF4.revisado != true}">
					<a
						href="encuesta/cif4/encuestaRevisada.do?tipoCIF4Id=${tipoCIF4.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>

			</jstl:choose>
		</div>
	</div>
	<!-- /.col-lg-4 -->
	</div>

	<div class="col-lg-2">
		<jstl:choose>
			<jstl:when test="${tipoCIF1.noAmbiental == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF2.noAmbiental == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF3.noAmbiental == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF4.noAmbiental == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:otherwise>
				<div class="panel panel-yellow">
			</jstl:otherwise>
		</jstl:choose>
		<div class="panel-heading">Encuesta no ambiental</div>
		<div class="panel-body">
			<p align="justify">Un revisor ha revisado esta encuesta y ha
				determinado que la encuesta no es ambiental.</p>
		</div>
		<div class="panel-footer">
			<jstl:choose>
				<jstl:when test="${tipoCIF1.noAmbiental == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF2.noAmbiental == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF3.noAmbiental == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF4.noAmbiental == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when
					test="${tipoCIF1 !=null and tipoCIF1.noAmbiental != true}">
					<a
						href="encuesta/cif1/encuestaNoAmbiental.do?tipoCIF1Id=${tipoCIF1.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when
					test="${tipoCIF2 !=null and tipoCIF2.noAmbiental != true}">
					<a
						href="encuesta/cif2/encuestaNoAmbiental.do?tipoCIF2Id=${tipoCIF2.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when
					test="${tipoCIF3 !=null and tipoCIF3.noAmbiental != true}">
					<a
						href="encuesta/cif3/encuestaNoAmbiental.do?tipoCIF3Id=${tipoCIF3.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when
					test="${tipoCIF4 !=null and tipoCIF4.noAmbiental != true}">
					<a
						href="encuesta/cif4/encuestaNoAmbiental.do?tipoCIF4Id=${tipoCIF4.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
			</jstl:choose>
		</div>
	</div>
	<!-- /.col-lg-4 -->
	</div>
	<div class="col-lg-2">
		<jstl:choose>
			<jstl:when test="${tipoCIF1.validado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF2.validado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF3.validado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:when test="${tipoCIF4.validado == true}">
				<div class="panel panel-green">
			</jstl:when>
			<jstl:otherwise>
				<div class="panel panel-yellow">
			</jstl:otherwise>
		</jstl:choose>
		<div class="panel-heading">Encuesta v�lida</div>
		<div class="panel-body">
			<p align="justify">Un revisor ha revisado esta encuesta y ha
				determinado que es totalmente v�lida.</p>
		</div>
		<div class="panel-footer">
			<jstl:choose>
				<jstl:when test="${tipoCIF1.validado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF2.validado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF3.validado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF4.validado == true}">
					<button type="button" class="btn btn-success disabled">Estado
						ya asignado</button>
				</jstl:when>
				<jstl:when test="${tipoCIF1 !=null and tipoCIF1.validado != true}">
					<a
						href="encuesta/cif1/encuestaValidada.do?tipoCIF1Id=${tipoCIF1.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF2 !=null and tipoCIF2.validado != true}">
					<a
						href="encuesta/cif2/encuestaValidada.do?tipoCIF2Id=${tipoCIF2.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF3 !=null and tipoCIF3.validado != true}">
					<a
						href="encuesta/cif3/encuestaValidada.do?tipoCIF3Id=${tipoCIF3.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
				<jstl:when test="${tipoCIF4 !=null and tipoCIF4.validado != true}">
					<a
						href="encuesta/cif4/encuestaValidada.do?tipoCIF4Id=${tipoCIF4.id}"><button
							type="button" class="btn btn-warning">Asignar este
							estado</button></a>
				</jstl:when>
			</jstl:choose>
		</div>
	</div>
	<!-- /.col-lg-4 -->
	</div>

	</div>
</security:authorize>
