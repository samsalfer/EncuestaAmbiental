<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>



<body onload="checkbox1();comprobarSiEsCero();">
	<div id="page-wrapper" style="margin-left: 50px; margin-right: 50px;">
		<form:form action="${requestURI}"
			modelAttribute="formularioCuatroForm" id="commentForm"
			onsubmit="return validate4()">
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
					<h1 class="page-header">Encuesta sobre Actividad
						Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (4/6)</h1>
					<ul class="errorMessages"></ul>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b> A5. Mercado geográfico ambiental</b>
						</div>
						<div class="panel-body">
							<div class="alert alert-success">
								Se pretende conocer los <b>ámbitos geográficos de mercado</b> al
								que se destinó, durante 2014, la facturación total y ambiental <b>del
									total de los establecimientos de la empresa que desarrollan una
									actividad ambiental en Andalucía.</b> Consigne en este apartado los
								datos requeridos de % sobre la facturación total y facturación
								en actividades ambientales que corresponde a los distintos
								ámbitos geográficos.
							</div>
							<div class="row">

								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-2">&nbsp;</div>
									<div class="col-lg-1">&nbsp;</div>

									<div class="col-lg-2">
										<div class="form-group">
											<p align="center">
												<b>Andalucía:</b>
											</p>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group">
											<p align="center">
												<b>Resto de España:</b>
											</p>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group">
											<p align="center">
												<b>Unión Europea:</b>
											</p>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group">
											<p align="center">
												<b>Resto del Mundo:</b>
											</p>
										</div>
									</div>

									<div class="col-lg-1">&nbsp;</div>
								</div>
								<!-- /Tab12 -->
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-2">
										<label for="name">5.1 Facturación total:</label>
									</div>

									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fTotalAndalucia" path="fTotalAndalucia"
												min="0" max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fTotalAndalucia" />
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fTotalEspaña" path="fTotalEspaña" min="0"
												max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fTotalEspaña" />
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fTotalEuropa" path="fTotalEuropa" min="0"
												max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fTotalEuropa" />
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input if="fTotalMundo" path="fTotalMundo" min="0"
												max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fTotalMundo" />
										</div>
									</div>

									<div class="col-lg-1">
										<p id="errorSuma" hidden="true" style="color: #d9534f">La
											suma debe ser 100%</p>
									</div>
								</div>
								<!-- /Tab12 -->
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-2">
										<label for="name">5.2 Facturación ambiental:</label>
									</div>

									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fAmbientalAndalucia"
												path="fAmbientalAndalucia" min="0" max="100"
												class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fAmbientalAndalucia" />
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fAmbientalEspaña" path="fAmbientalEspaña"
												min="0" max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fAmbientalEspaña" />

										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fAmbientalEuropa" path="fAmbientalEuropa"
												min="0" max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fAmbientalEuropa" />
										</div>
									</div>
									<div class="col-lg-2">
										<div class="form-group input-group">
											<form:input id="fAmbientalMundo" path="fAmbientalMundo"
												min="0" max="100" class="form-control" />
											<span class="input-group-addon">%</span>
											<form:errors cssClass="error" path="fAmbientalMundo" />
										</div>
									</div>

									<div class="col-lg-1">
										<p id="errorSuma2" hidden="true" style="color: #d9534f">La
											suma debe ser 100%</p>
									</div>
								</div>
								<!-- /Tab12 -->

							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>A6. Certificación / acreditación de la actividad ambiental</b>
						</div>
						<div class="panel-body">
							<div class="alert alert-success">
								Señale la casilla [X] si la empresa cuenta con algún tipo de
								certificación o acreditación en relación a la producción de
								bienes y servicios ambientales. En su caso, especifique <b>denominación
									y autoridad competente</b> que la ha expedido.
							</div>
							<div class="row">

								<div class="col-lg-12" align="center">
									<div class="col-lg-4">&nbsp;</div>
									<div class="col-lg-3">
										<h3 id="errorDenominacion" hidden="true"
											style="color: #d9534f">Debe seleccionar si o no</h3>
									</div>
									<div class="col-lg-4">&nbsp;</div>

								</div>

								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-3">&nbsp;</div>
									<div class="col-lg-1">
										<div class="form-group">
											<div class="checkbox">
												<label> <acme:checkbox id="check1" path="a6si"
														onchange="checkbox1()" />Si
												</label>
											</div>
										</div>
									</div>

									<div class="col-lg-4">&nbsp;</div>
									<div class="col-lg-1">
										<div class="form-group">
											<div class="checkbox">
												<label> <acme:checkbox id="check2" path="a6no"
														onchange="checkbox2()" />No
												</label>
											</div>
										</div>
									</div>
									<div class="col-lg-3">&nbsp;</div>
								</div>
								<!-- /Tab12 -->

								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group">
											<p align="center">
												<b>Denominación:</b>
											</p>
										</div>
									</div>

									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group">
											<p align="center">
												<b>Autoridad competente:</b>
											</p>
										</div>
									</div>
									<div class="col-lg-1">&nbsp;</div>
								</div>
								<!-- /Tab12 -->
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">1. </span>
											<form:input id="denominacion1" path="denominacion1"
												class="form-control" disabled="true" required="true" />
											<form:errors cssClass="error" path="denominacion1" />
										</div>
									</div>

									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">1. </span>
											<form:input id="autoridad1" path="autoridad1"
												class="form-control" disabled="true" required="true" />
											<form:errors cssClass="error" path="autoridad1" />
										</div>
									</div>
									<div class="col-lg-1">&nbsp;</div>
								</div>
								<!-- /Tab12 -->
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">2. </span>
											<form:input id="denominacion2" path="denominacion2"
												class="form-control" disabled="true" />
											<form:errors cssClass="error" path="denominacion2" />
										</div>
									</div>

									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">2. </span>
											<form:input id="autoridad2" path="autoridad2"
												class="form-control" disabled="true" />
											<form:errors cssClass="error" path="autoridad2" />
										</div>
									</div>
									<div class="col-lg-1">&nbsp;</div>
								</div>
								<!-- /Tab12 -->
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">3. </span>
											<form:input id="denominacion3" path="denominacion3"
												class="form-control" disabled="true" />
											<form:errors cssClass="error" path="denominacion3" />
										</div>
									</div>

									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-4">
										<div class="form-group input-group">
											<span class="input-group-addon">3. </span>
											<form:input id="autoridad3" path="autoridad3"
												class="form-control" disabled="true" />
											<form:errors cssClass="error" path="autoridad3" />
										</div>
									</div>
									<div class="col-lg-1">&nbsp;</div>
								</div>
								<!-- /Tab12 -->

								<div class="col-lg-12">&nbsp;</div>
								<div class="col-lg-12">&nbsp;</div>

								<!-- Tab12 -->
								<div class="col-lg-4">&nbsp;</div>
								<div class="col-lg-2">
									<security:authorize
										access="hasAnyRole('CIF1','CIF2','CIF3','CIF4')">
										<a href="encuesta/cif1/paginaTres.do" class="btn btn-default"
											role="button">Paso anterior</a>
									</security:authorize>
									<security:authorize access="hasAnyRole('ADMIN')">
										<a
											href="encuesta/cif1/verPaginaTres.do?tipoCIF1Id=${tipoCIF1Id}"
											class="btn btn-default" role="button">Paso anterior</a>
									</security:authorize>
								</div>
								<div class="col-lg-2">
									<button type="submit" class="btn btn-default" name="save">Siguiente
										paso</button>
								</div>
								<div class="col-lg-4">&nbsp;</div>
								<!-- /Tab12 -->
								<!-- /Tab12 -->
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</form:form>
	</div>

	<script type="text/javascript">
		function validate4() {
			res = validateDenominacion();
			res2 = validateModalidades();
			res3 = suma();

			resTotal = res && res2 && res3;
			return resTotal;

		}

		function checkbox1() {

			denominacion1 = document.getElementById("denominacion1");
			denominacion2 = document.getElementById("denominacion2");
			denominacion3 = document.getElementById("denominacion3");
			autoridad1 = document.getElementById("autoridad1");
			autoridad2 = document.getElementById("autoridad2");
			autoridad3 = document.getElementById("autoridad3");

			check1 = document.getElementById("check1");
			check2 = document.getElementById("check2");

			if (check1.checked) {
				check2.checked = false;
				denominacion1.disabled = false;
				denominacion2.disabled = false;
				denominacion3.disabled = false;
				autoridad1.disabled = false;
				autoridad2.disabled = false;
				autoridad3.disabled = false;

			}
		}

		function checkbox2() {

			denominacion1 = document.getElementById("denominacion1");
			denominacion2 = document.getElementById("denominacion2");
			denominacion3 = document.getElementById("denominacion3");
			autoridad1 = document.getElementById("autoridad1");
			autoridad2 = document.getElementById("autoridad2");
			autoridad3 = document.getElementById("autoridad3");

			check1 = document.getElementById("check1");
			check2 = document.getElementById("check2");

			if (check2.checked) {
				check1.checked = false;
				denominacion1.disabled = true;
				denominacion2.disabled = true;
				denominacion3.disabled = true;
				autoridad1.disabled = true;
				autoridad2.disabled = true;
				autoridad3.disabled = true;

			}
		}

		function validateDenominacion() {
			denominacion2 = document.getElementById("denominacion2");
			denominacion3 = document.getElementById("denominacion3");
			autoridad2 = document.getElementById("autoridad2");
			autoridad3 = document.getElementById("autoridad3");

			//denominacion2
			if (denominacion2.value.length > 0) {
				autoridad2.required = true;
			} else {
				autoridad2.required = false;
			}
			if (autoridad2.value.length > 0) {
				denominacion2.required = true;
			} else {
				denominacion2.required = false;
			}
			//denominacion3
			if (denominacion3.value.length > 0) {
				autoridad3.required = true;
			} else {
				autoridad3.required = false;
			}
			if (autoridad3.value.length > 0) {
				denominacion3.required = true;
			} else {
				denominacion3.required = false;
			}

		}

		function validateModalidades() {
			res = true;
			check1 = document.getElementById("check1");
			check2 = document.getElementById("check2");
			if (check1.checked == false && check2.checked == false) {
				errorDenominacion.hidden = false;
				res = false;
			} else {
				errorDenominacion.hidden = true;
			}
			return res;
		}

		function suma() {
			resultado = true;
			fTotalAndalucia = document.getElementById("fTotalAndalucia");
			fTotalEspaña = document.getElementById("fTotalEspaña");
			fTotalEuropa = document.getElementById("fTotalEuropa");
			fTotalMundo = document.getElementById("fTotalMundo");

			fAmbientalAndalucia = document
					.getElementById("fAmbientalAndalucia");
			fAmbientalEspaña = document.getElementById("fAmbientalEspaña");
			fAmbientalEuropa = document.getElementById("fAmbientalEuropa");
			fAmbientalMundo = document.getElementById("fAmbientalMundo");

			facAux = "${facturacionAuxiliar}";
			if (fTotalAndalucia.value.length == 0) {
				fTotalAndalucia.value = 0;
			}
			if (fTotalEspaña.value.length == 0) {
				fTotalEspaña.value = 0;
			}
			if (fTotalEuropa.value.length == 0) {
				fTotalEuropa.value = 0;
			}
			if (fTotalMundo.value.length == 0) {
				fTotalMundo.value = 0;
			}
			if ((parseInt(fTotalMundo.value) + parseInt(fTotalEspaña.value)
					+ parseInt(fTotalEuropa.value) + parseInt(fTotalAndalucia.value)) != parseInt(100)) {
				resultado = false;
				errorSuma.hidden = false;
				fTotalMundo.focus();

			} else {
				errorSuma.hidden = true;
			}

			if (facAux != 0.0) {
				if (fAmbientalAndalucia.value.length == 0) {
					fAmbientalAndalucia.value = 0;
				}
				if (fAmbientalEspaña.value.length == 0) {
					fAmbientalEspaña.value = 0;
				}
				if (fAmbientalEuropa.value.length == 0) {
					fAmbientalEuropa.value = 0;
				}
				if (fAmbientalMundo.value.length == 0) {
					fAmbientalMundo.value = 0;
				}
				if ((parseInt(fAmbientalMundo.value)
						+ parseInt(fAmbientalEspaña.value)
						+ parseInt(fAmbientalEuropa.value) + parseInt(fAmbientalAndalucia.value)) != parseInt(100)) {
					resultado = false;
					errorSuma2.hidden = false;
					fAmbientalMundo.focus();

				} else {
					errorSuma2.hidden = true;
				}
			}
			return resultado;
		}

		function comprobarSiEsCero() {
			facAux = "${facturacionAuxiliar}";
			fAmbientalAndalucia = document
					.getElementById("fAmbientalAndalucia");
			fAmbientalEspaña = document.getElementById("fAmbientalEspaña");
			fAmbientalEuropa = document.getElementById("fAmbientalEuropa");
			fAmbientalMundo = document.getElementById("fAmbientalMundo");
			if (facAux == 0.0) {
				fAmbientalAndalucia.value = 0;
				fAmbientalAndalucia.readOnly = true;
				fAmbientalEspaña.value = 0;
				fAmbientalEspaña.readOnly = true;
				fAmbientalEuropa.value = 0;
				fAmbientalEuropa.readOnly = true;
				fAmbientalMundo.value = 0;
				fAmbientalMundo.readOnly = true;
			}
		}
	</script>