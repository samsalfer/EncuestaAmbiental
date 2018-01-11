<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<div id="page-wrapper" style="margin-left: 50px; margin-right: 50px;">
	<form:form action="${requestURI}" modelAttribute="formularioSieteForm"
		id="commentForm" onsubmit="return validate7()">
		<form:hidden path="customerId" />
		<div class="row">
			<div class="col-lg-3 col-md-1" style="margin-top: 15px;">
				&nbsp;</div>
			<div class="col-lg-3 col-md-5" style="margin-top: 15px;">
				<img src="back/img/europa1.gif" class="img-responsive" alt="Europa">
			</div>
			<div class="col-lg-3 col-md-5" style="margin-top: 15px;">
				<img src="back/img/junta1.png" class="img-responsive"
					alt="Junta de andalucia">
			</div>
			<div class="col-lg-3 col-md-1" style="margin-top: 15px;">
				&nbsp;</div>
		</div>

		<div class="row">
			<div class="col-lg-12 col-md-12">
				<h1 class="page-header" style="text-align: center">Anexo con
					información de los establecimientos de la empresa que desarrollen
					una actividad ambiental en Andalucía</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="alert alert-success">
				Deberá de cumplimentar la ficha para el establecimiento principal de
				la empresa que desarrolle una actividad ambiental en Andalucía, así
				como una ficha para cada uno de los demás establecimientos de la
				empresa que desarrollen también en Andalucía alguna de las
				actividades ambientales de las especificadas en el <a
					href="front/anexo.pdf" target="_blank">Anexo de definiciones y
					normas de valoración</a>
			</div>
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>1. INFORMACIÓN DEL ESTABLECIMIENTO PRINCIPAL CON ACTIVIDAD
							AMBIENTAL EN ANDALUCÍA</b>
					</div>
					<div class="panel-body">

						<div class="row">

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="denominacionEstablecimientoPrincipal"
										class="form-control" />
									<form:errors cssClass="error"
										path="denominacionEstablecimientoPrincipal" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="domicilioEstablecimiento"
										class="form-control" />
									<form:errors cssClass="error" path="domicilioEstablecimiento" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CÓDIGO POSTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="codigoPostalAnexo" class="form-control" />
									<form:errors cssClass="error" path="codigoPostalAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>MUNICIPIO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="municipioAnexo" class="form-control" />
									<form:errors cssClass="error" path="municipioAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>PROVINCIA:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="provinciaAnexo" class="form-control" />
									<form:errors cssClass="error" path="provinciaAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>TELÉFONO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="telefonoAnexo" class="form-control" />
									<form:errors cssClass="error" path="telefonoAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>FAX:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="faxAnexo" class="form-control" />
									<form:errors cssClass="error" path="faxAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CORREO ELECTRÓNICO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="correoElectronicoAnexo" class="form-control" />
									<form:errors cssClass="error" path="correoElectronicoAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadPrincipalAnexo"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadPrincipalAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadAmbientalAnexo"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadAmbientalAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO TOTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoTotalAnexo" class="form-control" />
									<form:errors cssClass="error" path="empleoTotalAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoActidadAmbientalAnexo"
										class="form-control" />
									<form:errors cssClass="error"
										path="empleoActidadAmbientalAnexo" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<!-- Tab12 -->
		<div class="col-lg-12">&nbsp;</div>
		<!-- Tab12 -->

		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>2. INFORMACIÓN DE OTROS ESTABLECIMIENTOS CON ACTIVIDAD
							AMBIENTAL EN ANDALUCÍA</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">Deberá de cumplimentar la
							ficha para otros establecimientos que tengan actividad ambiental
							en Andalucía.</div>
						<div class="row">

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="denominacionEstablecimientoPrincipalAnexo1"
										class="form-control" />
									<form:errors cssClass="error"
										path="denominacionEstablecimientoPrincipalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="domicilioEstablecimientoAnexo1"
										class="form-control" />
									<form:errors cssClass="error"
										path="domicilioEstablecimientoAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CÓDIGO POSTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="codigoPostalAnexo1" class="form-control" />
									<form:errors cssClass="error" path="codigoPostalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>MUNICIPIO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="municipioAnexo1" class="form-control" />
									<form:errors cssClass="error" path="municipioAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>PROVINCIA:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="provinciaAnexo1" class="form-control" />
									<form:errors cssClass="error" path="provinciaAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>TELÉFONO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="telefonoAnexo1" class="form-control" />
									<form:errors cssClass="error" path="telefonoAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>FAX:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="faxAnexo1" class="form-control" />
									<form:errors cssClass="error" path="faxAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CORREO ELECTRÓNICO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="correoElectronicoAnexo1" class="form-control" />
									<form:errors cssClass="error" path="correoElectronicoAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadPrincipalAnexo1"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadPrincipalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadAmbientalAnexo1"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadAmbientalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO TOTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoTotalAnexo1" class="form-control" />
									<form:errors cssClass="error" path="empleoTotalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoActidadAmbientalAnexo1"
										class="form-control" />
									<form:errors cssClass="error"
										path="empleoActidadAmbientalAnexo1" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->


							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-10">
									<hr style="display: block; border-width: 1px;">
								</div>
								<div class="col-lg-11">&nbsp;</div>

							</div>

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="denominacionEstablecimientoPrincipalAnexo2"
										class="form-control" />
									<form:errors cssClass="error"
										path="denominacionEstablecimientoPrincipalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="domicilioEstablecimientoAnexo2"
										class="form-control" />
									<form:errors cssClass="error"
										path="domicilioEstablecimientoAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CÓDIGO POSTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="codigoPostalAnexo2" class="form-control" />
									<form:errors cssClass="error" path="codigoPostalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>MUNICIPIO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="municipioAnexo2" class="form-control" />
									<form:errors cssClass="error" path="municipioAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>PROVINCIA:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="provinciaAnexo2" class="form-control" />
									<form:errors cssClass="error" path="provinciaAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>TELÉFONO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="telefonoAnexo2" class="form-control" />
									<form:errors cssClass="error" path="telefonoAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>FAX:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="faxAnexo2" class="form-control" />
									<form:errors cssClass="error" path="faxAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CORREO ELECTRÓNICO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="correoElectronicoAnexo2" class="form-control" />
									<form:errors cssClass="error" path="correoElectronicoAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadPrincipalAnexo2"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadPrincipalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadAmbientalAnexo2"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadAmbientalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO TOTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoTotalAnexo2" class="form-control" />
									<form:errors cssClass="error" path="empleoTotalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoActidadAmbientalAnexo2"
										class="form-control" />
									<form:errors cssClass="error"
										path="empleoActidadAmbientalAnexo2" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->


							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-10">
									<hr style="display: block; border-width: 1px;">
								</div>
								<div class="col-lg-11">&nbsp;</div>

							</div>

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="denominacionEstablecimientoPrincipalAnexo3"
										class="form-control" />
									<form:errors cssClass="error"
										path="denominacionEstablecimientoPrincipalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="domicilioEstablecimientoAnexo3"
										class="form-control" />
									<form:errors cssClass="error"
										path="domicilioEstablecimientoAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CÓDIGO POSTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="codigoPostalAnexo3" class="form-control" />
									<form:errors cssClass="error" path="codigoPostalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>MUNICIPIO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="municipioAnexo3" class="form-control" />
									<form:errors cssClass="error" path="municipioAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>PROVINCIA:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="provinciaAnexo3" class="form-control" />
									<form:errors cssClass="error" path="provinciaAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>TELÉFONO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="telefonoAnexo3" class="form-control" />
									<form:errors cssClass="error" path="telefonoAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>FAX:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="faxAnexo3" class="form-control" />
									<form:errors cssClass="error" path="faxAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>CORREO ELECTRÓNICO:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="correoElectronicoAnexo3" class="form-control" />
									<form:errors cssClass="error" path="correoElectronicoAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadPrincipalAnexo3"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadPrincipalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:textarea path="descripcionActividadAmbientalAnexo3"
										class="form-control" maxlength="250" />
									<form:errors cssClass="error"
										path="descripcionActividadAmbientalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO TOTAL:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoTotalAnexo3" class="form-control" />
									<form:errors cssClass="error" path="empleoTotalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>
										<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
									</p>
								</div>
								<div class="col-lg-5">
									<form:input path="empleoActidadAmbientalAnexo3"
										class="form-control" />
									<form:errors cssClass="error"
										path="empleoActidadAmbientalAnexo3" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">&nbsp;</div>
							<!-- Tab12 -->

						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->

			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Añadir otros establecimientos con
						actividad ambiental en Andalucía</div>
					<!-- .panel-heading -->
					<div class="panel-body">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<jstl:choose>
											<jstl:when test="${requestURI == 'encuesta/paginaSiete.do'}">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseTwo">Añadir establecimiento #5</a>
											</jstl:when>
											<jstl:otherwise>
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseTwo">Ver establecimiento #5</a>
											</jstl:otherwise>
										</jstl:choose>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<div class="panel-body">

										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e500" class="form-control" />
												<form:errors cssClass="error" path="e500" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e501" class="form-control" />
												<form:errors cssClass="error" path="e501" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>CÓDIGO POSTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e502" class="form-control" />
												<form:errors cssClass="error" path="e502" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>MUNICIPIO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e503" class="form-control" />
												<form:errors cssClass="error" path="e503" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>PROVINCIA:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e504" class="form-control" />
												<form:errors cssClass="error" path="e504" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>TELÉFONO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e505" class="form-control" />
												<form:errors cssClass="error" path="e505" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>FAX:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e506" class="form-control" />
												<form:errors cssClass="error" path="e506" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>CORREO ELECTRÓNICO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e507" class="form-control" />
												<form:errors cssClass="error" path="e507" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:textarea path="e508" class="form-control"
													maxlength="250" />
												<form:errors cssClass="error" path="e508" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:textarea path="e509" class="form-control"
													maxlength="250" />
												<form:errors cssClass="error" path="e509" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>EMPLEO TOTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e510" class="form-control" />
												<form:errors cssClass="error" path="e510" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e511" class="form-control" />
												<form:errors cssClass="error" path="e511" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->


										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-10">
												<hr style="display: block; border-width: 1px;">
											</div>
											<div class="col-lg-11">&nbsp;</div>

										</div>

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">


										<jstl:choose>
											<jstl:when test="${requestURI == 'encuesta/paginaSiete.do'}">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseThree">Añadir establecimiento #6</a>
											</jstl:when>
											<jstl:otherwise>
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseThree">Ver establecimiento #6</a>
											</jstl:otherwise>
										</jstl:choose>

									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse">
									<div class="panel-body">

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DENOMINACIÓN DEL ESTABLECIMIENTO PRINCIPAL</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e600" class="form-control" />
												<form:errors cssClass="error" path="e600" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DOMICILIO DEL ESTABLECIMIENTO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e601" class="form-control" />
												<form:errors cssClass="error" path="e601" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>CÓDIGO POSTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e602" class="form-control" />
												<form:errors cssClass="error" path="e602" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>MUNICIPIO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e603" class="form-control" />
												<form:errors cssClass="error" path="e603" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>PROVINCIA:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e604" class="form-control" />
												<form:errors cssClass="error" path="e604" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>TELÉFONO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e605" class="form-control" />
												<form:errors cssClass="error" path="e605" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>FAX:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e606" class="form-control" />
												<form:errors cssClass="error" path="e606" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>CORREO ELECTRÓNICO:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e607" class="form-control" />
												<form:errors cssClass="error" path="e607" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DESCRIPCIÓN DE LA ACTIVIDAD PRINCIPAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:textarea path="e608" class="form-control"
													maxlength="250" />
												<form:errors cssClass="error" path="e608" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>DESCRIPCIÓN DE LA ACTIVIDAD AMBIENTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:textarea path="e609" class="form-control"
													maxlength="250" />
												<form:errors cssClass="error" path="e609" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>EMPLEO TOTAL:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e610" class="form-control" />
												<form:errors cssClass="error" path="e610" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-5">
												<p>
													<b>EMPLEO EN ACTIVIDADES AMBIENTALES:</b>
												</p>
											</div>
											<div class="col-lg-5">
												<form:input path="e611" class="form-control" />
												<form:errors cssClass="error" path="e611" />
											</div>
											<div class="col-lg-1">&nbsp;</div>
										</div>
										<!-- /Tab12 -->

										<!-- Tab12 -->
										<div class="col-lg-12">&nbsp;</div>
										<!-- Tab12 -->


										<div class="col-lg-12">
											<div class="col-lg-1">&nbsp;</div>
											<div class="col-lg-10">
												<hr style="display: block; border-width: 1px;">
											</div>
											<div class="col-lg-11">&nbsp;</div>

										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- .panel-body -->

				</div>
				<!-- /.panel -->
			</div>


			<div class="col-lg-12" align="center">
				<h3 id="errorSuma" hidden="true" style="color: #d9534f">La suma
					de los empleos totales de los distintos establecimientos debe de
					coincidir con el empleo total grabado en el cuestionario</h3>
				<h3 id="errorSuma1" hidden="true" style="color: #d9534f">La
					suma de los empleos ambientales de los distintos establecimientos
					debe de coincidir con el empleo ambiental grabado en el
					cuestionario</h3>

			</div>

			<div class="col-lg-12">&nbsp;</div>



			<!-- Tab12 -->
			<div class="col-lg-4">&nbsp;</div>
			<div class="col-lg-2">
				<security:authorize access="hasAnyRole('CIF1','CIF2','CIF3','CIF4')">
					<a href="encuesta/cif1/paginaSeis.do" class="btn btn-default"
						role="button">Paso anterior</a>
				</security:authorize>
				<security:authorize access="hasAnyRole('ADMIN')">
					<a href="encuesta/cif1/verPaginaSeis.do?tipoCIF1Id=${tipoCIF1Id}"
						class="btn btn-default" role="button">Paso anterior</a>
				</security:authorize>
			</div>
			<div class="col-lg-2">
				<button type="submit" class="btn btn-default" name="save">Terminar
					encuesta</button>
			</div>
			<div class="col-lg-4">&nbsp;</div>
			<!-- /Tab12 -->
			<div class="col-lg-12">&nbsp;</div>


			<!-- /.row -->
		</div>





	</form:form>
</div>
<script>
	function validate7() {
		validateRequired();
		res = validateSuma();
		return res;
	}

	function validateRequired() {

		if (denominacionEstablecimientoPrincipal.value.length > 0) {
			domicilioEstablecimiento.required = true;
			descripcionActividadPrincipalAnexo.required = true;
			descripcionActividadAmbientalAnexo.required = true;
			codigoPostalAnexo.required = true;
			municipioAnexo.required = true;
			provinciaAnexo.required = true;
		} else {
			domicilioEstablecimiento.required = false;
			descripcionActividadPrincipalAnexo.required = false;
			descripcionActividadAmbientalAnexo.required = false;
			codigoPostalAnexo.required = false;
			municipioAnexo.required = false;
			provinciaAnexo.required = false;
		}

		if (denominacionEstablecimientoPrincipalAnexo1.value.length > 0) {
			domicilioEstablecimientoAnexo1.required = true;
			descripcionActividadPrincipalAnexo1.required = true;
			descripcionActividadAmbientalAnexo1.required = true;
			codigoPostalAnexo1.required = true;
			municipioAnexo1.required = true;
			provinciaAnexo1.required = true;
		} else {
			domicilioEstablecimientoAnexo1.required = false;
			descripcionActividadPrincipalAnexo1.required = false;
			descripcionActividadAmbientalAnexo1.required = false;
			codigoPostalAnexo1.required = false;
			municipioAnexo1.required = false;
			provinciaAnexo1.required = false;
		}

		if (denominacionEstablecimientoPrincipalAnexo2.value.length > 0) {
			domicilioEstablecimientoAnexo2.required = true;
			descripcionActividadPrincipalAnexo2.required = true;
			descripcionActividadAmbientalAnexo2.required = true;
			codigoPostalAnexo2.required = true;
			municipioAnexo2.required = true;
			provinciaAnexo2.required = true;
		} else {
			domicilioEstablecimientoAnexo2.required = false;
			descripcionActividadPrincipalAnexo2.required = false;
			descripcionActividadAmbientalAnexo2.required = false;
			codigoPostalAnexo2.required = false;
			municipioAnexo2.required = false;
			provinciaAnexo2.required = false;
		}

		if (denominacionEstablecimientoPrincipalAnexo3.value.length > 0) {
			domicilioEstablecimientoAnexo3.required = true;
			descripcionActividadPrincipalAnexo3.required = true;
			descripcionActividadAmbientalAnexo3.required = true;
			codigoPostalAnexo3.required = true;
			municipioAnexo3.required = true;
			provinciaAnexo3.required = true;
		} else {
			domicilioEstablecimientoAnexo3.required = false;
			descripcionActividadPrincipalAnexo3.required = false;
			descripcionActividadAmbientalAnexo3.required = false;
			codigoPostalAnexo3.required = false;
			municipioAnexo3.required = false;
			provinciaAnexo3.required = false;

		}

		if (e500.value.length > 0) {
			e501.required = true;
			e502.required = true;
			e503.required = true;
			e504.required = true;
			e508.required = true;
			e509.required = true;
		} else {
			e501.required = false;
			e502.required = false;
			e503.required = false;
			e504.required = false;
			e508.required = false;
			e509.required = false;
		}

		if (e600.value.length > 0) {
			e601.required = true;
			e602.required = true;
			e603.required = true;
			e604.required = true;
			e608.required = true;
			e609.required = true;
		} else {
			e601.required = false;
			e602.required = false;
			e603.required = false;
			e604.required = false;
			e608.required = false;
			e609.required = false;
		}

	}

	function validateSuma() {
		res = true;
		total = "${numTotal}";
		ambiental = "${numAmbiental}";

		if (empleoActidadAmbientalAnexo.value.length == 0) {
			empleoActidadAmbientalAnexo.value = 0;
		}
		if (empleoActidadAmbientalAnexo1.value.length == 0) {
			empleoActidadAmbientalAnexo1.value = 0;
		}
		if (empleoActidadAmbientalAnexo2.value.length == 0) {
			empleoActidadAmbientalAnexo2.value = 0;
		}
		if (empleoActidadAmbientalAnexo3.value.length == 0) {
			empleoActidadAmbientalAnexo3.value = 0;
		}
		if (e511.value.length == 0) {
			e511.value = 0;
		}
		if (e611.value.length == 0) {
			e611.value = 0;
		}
		sumaAmbiental = parseInt(empleoActidadAmbientalAnexo.value)
				+ parseInt(empleoActidadAmbientalAnexo1.value)
				+ parseInt(empleoActidadAmbientalAnexo2.value)
				+ parseInt(empleoActidadAmbientalAnexo3.value)
				+ parseInt(e511.value) + parseInt(e611.value);

		if (empleoTotalAnexo.value.length == 0) {
			empleoTotalAnexo.value = 0;
		}
		if (empleoTotalAnexo1.value.length == 0) {
			empleoTotalAnexo1.value = 0;
		}
		if (empleoTotalAnexo2.value.length == 0) {
			empleoTotalAnexo2.value = 0;
		}
		if (empleoTotalAnexo3.value.length == 0) {
			empleoTotalAnexo3.value = 0;
		}
		if (e510.value.length == 0) {
			e510.value = 0;
		}
		if (e610.value.length == 0) {
			e610.value = 0;
		}
		sumaTotal = parseInt(empleoTotalAnexo.value)
				+ parseInt(empleoTotalAnexo1.value)
				+ parseInt(empleoTotalAnexo2.value)
				+ parseInt(empleoTotalAnexo3.value) + parseInt(e510.value)
				+ parseInt(e610.value);
		if (sumaTotal != total) {

			errorSuma.hidden = false;
			res = false;

		} else {

			errorSuma.hidden = true;
		}

		if (sumaAmbiental != ambiental) {
			errorSuma1.hidden = false;
			res = false;
		} else {
			errorSuma1.hidden = true;
		}

		return res;

	}
</script>
