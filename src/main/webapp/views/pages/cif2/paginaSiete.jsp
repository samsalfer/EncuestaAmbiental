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
					href="front/anexo2.pdf" target="_blank">Anexo de definiciones y
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
									<form:input path="e100"
										class="form-control" />
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
									<form:input path="e101"
										class="form-control" />
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
									<form:input path="e102" class="form-control" />
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
									<form:input path="e103" class="form-control" />
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
									<form:input path="e104" class="form-control" />
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
									<form:input path="e105" class="form-control" />
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
									<form:input path="e106" class="form-control" />
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
									<form:input path="e107" class="form-control" />
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
									<form:textarea path="e108"
										class="form-control" maxlength="250" />

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
									<form:textarea path="e109"
										class="form-control" maxlength="250" />

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
									<form:input path="e110" class="form-control" />
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
									<form:input path="e111"
										class="form-control" />

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
									<form:input path="e200"
										class="form-control" />

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
									<form:input path="e201"
										class="form-control" />

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
									<form:input path="e202" class="form-control" />
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
									<form:input path="e203" class="form-control" />
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
									<form:input path="e204" class="form-control" />
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
									<form:input path="e205" class="form-control" />
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
									<form:input path="e206" class="form-control" />
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
									<form:input path="e207" class="form-control" />
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
									<form:textarea path="e208"
										class="form-control" maxlength="250" />

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
									<form:textarea path="e209"
										class="form-control" maxlength="250" />

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
									<form:input path="e210" class="form-control" />

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
									<form:input path="e211"
										class="form-control" />

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
									<form:input path="e300"
										class="form-control" />

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
									<form:input path="e301"
										class="form-control" />

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
									<form:input path="e302" class="form-control" />

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
									<form:input path="e303" class="form-control" />
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
									<form:input path="e304" class="form-control" />
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
									<form:input path="e305" class="form-control" />
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
									<form:input path="e306" class="form-control" />
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
									<form:input path="e307" class="form-control" />
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
									<form:textarea path="e308"
										class="form-control" maxlength="250" />

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
									<form:textarea path="e309"
										class="form-control" maxlength="250" />

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
									<form:input path="e310" class="form-control" />

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
									<form:input path="e311"
										class="form-control" />

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
									<form:input path="e400"
										class="form-control" />

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
									<form:input path="e401"
										class="form-control" />

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
									<form:input path="e402" class="form-control" />

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
									<form:input path="e403" class="form-control" />
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
									<form:input path="e404" class="form-control" />
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
									<form:input path="e405" class="form-control" />
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
									<form:input path="e406" class="form-control" />
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
									<form:input path="e407" class="form-control" />
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
									<form:textarea path="e408"
										class="form-control" maxlength="250" />
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
									<form:textarea path="e409"
										class="form-control" maxlength="250" />
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
									<form:input path="e410" class="form-control" />
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
									<form:input path="e411"
										class="form-control" />
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
				<security:authorize access="hasAnyRole('CIF2')">
					<a href="encuesta/cif2/paginaSeis.do" class="btn btn-default"
						role="button">Paso anterior</a>
				</security:authorize>
				<security:authorize access="hasAnyRole('ADMIN')">
					<a href="encuesta/cif2/verPaginaSeis.do?tipoCIF2Id=${tipoCIF2Id}"
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

		if (e100.value.length > 0 || e111.value!=0 || e110.value!=0) {
			e100.required = true;
			e101.required = true;
			e108.required = true;
			e109.required = true;
			e103.required = true;
			e104.required = true;
		} else {
			e100.required = false;
			e101.required = false;
			e102.required = false;
			e108.required = false;
			e109.required = false;
			e103.required = false;
			e104.required = false;
		}

		if (e200.value.length > 0 || e211.value!=0 || e210.value!=0) {
			e200.required = true;
			e201.required = true;
			e208.required = true;
			e209.required = true;
			e203.required = true;
			e204.required = true;
		} else {
			e200.required = false;
			e201.required = false;
			e202.required = false;
			e208.required = false;
			e209.required = false;
			e203.required = false;
			e204.required = false;
		}

		if (e300.value.length > 0 || e311.value!=0 || e310.value!=0) {
			e300.required = true;
			e301.required = true;
			e302.required = true;
			e308.required = true;
			e309.required = true;
			e303.required = true;
			e304.required = true;
		} else {
			e300.required = false;
			e301.required = false;
			e302.required = false;
			e308.required = false;
			e309.required = false;
			e303.required = false;
			e304.required = false;
		}

		if (e400.value.length > 0 || e411.value!=0 || e410.value!=0) {
			e400.required = true;
			e401.required = true;
			e408.required = true;
			e409.required = true;
			e403.required = true;
			e404.required = true;
		} else {
			e400.required = false;
			e401.required = false;
			e402.required = false;
			e408.required = false;
			e409.required = false;
			e403.required = false;
			e404.required = false;
		}

		if (e500.value.length > 0 || e511.value!=0 || e510.value!=0) {
			e500.required = true;
			e501.required = true;
			e502.required = true;
			e503.required = true;
			e504.required = true;
			e508.required = true;
			e509.required = true;
		} else {
			e500.required = false;
			e501.required = false;
			e501.required = false;
			e502.required = false;
			e503.required = false;
			e504.required = false;
			e508.required = false;
			e509.required = false;
		}

		if (e600.value.length > 0 || e611.value!=0 || e610.value!=0) {
			e600.required = true;
			e601.required = true;
			e602.required = true;
			e603.required = true;
			e604.required = true;
			e608.required = true;
			e609.required = true;
		} else {
			e600.required = false;
			
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

		if (e111.value.length == 0) {
			e111.value = 0;
		}
		if (e211.value.length == 0) {
			e211.value = 0;
		}
		if (e311.value.length == 0) {
			e311.value = 0;
		}
		if (e411.value.length == 0) {
			e411.value = 0;
		}
		if (e511.value.length == 0) {
			e511.value = 0;
		}
		if (e611.value.length == 0) {
			e611.value = 0;
		}
		sumaAmbiental = parseInt(e111.value)
				+ parseInt(e211.value)
				+ parseInt(e311.value)
				+ parseInt(e411.value)
				+ parseInt(e511.value) + parseInt(e611.value);

		if (e110.value.length == 0) {
			e110.value = 0;
		}
		if (e210.value.length == 0) {
			e210.value = 0;
		}
		if (e310.value.length == 0) {
			e310.value = 0;
		}
		if (e410.value.length == 0) {
			e410.value = 0;
		}
		if (e510.value.length == 0) {
			e510.value = 0;
		}
		if (e610.value.length == 0) {
			e610.value = 0;
		}
		sumaTotal = parseInt(e110.value)
				+ parseInt(e210.value)
				+ parseInt(e310.value)
				+ parseInt(e410.value) + parseInt(e510.value)
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


