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
	<form:form action="${requestURI}" modelAttribute="formularioTresForm"
		id="commentForm" onsubmit="return validate3()">
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
					Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (3/6)</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b> A4. Informaci&oacuten econ&oacutemica</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							La facturaci&oacuten se refiere a la venta de bienes y servicios
							<b>del total de los establecimientos de la empresa que
								desarrollan una actividad ambiental en Andaluc&iacutea</b>, y su
							cuant&iacutea se corresponde con el importe neto de la cifra de
							negocios. Consigne en este apartado los datos requeridos sobre
							facturaci&oacuten total y facturaci&oacuten en actividades
							ambientales durante el <b>a&ntildeo 2014</b>, as&iacute como el
							porcentaje que representan las distintas actividades ambientales
							seg&uacuten se definen en <a href="front/anexo.pdf"
								target="_blank"><b>Anexo</b></a>.
						</div>
						<div class="row">
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-4">
									<div class="form-group">
										<label>4.1 Facturaci&oacuten total en euros:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>

								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="facturacionTotal" type="number"
											path="facturacionTotal" class="form-control" required="true"
											min="1" step="any" />
										<span class="input-group-addon">&#8364</span>
										<form:errors cssClass="error" path="facturacionTotal" />
									</div>
								</div>

								<div class="col-lg-2">&nbsp;</div>
							</div>

							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-4">
									<div class="form-group">
										<label>4.2 Facturaci&oacuten en actividades
											ambientales en euros:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>

								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="facturacionAmbiental" type="number"
											path="facturacionAmbiental" class="form-control"
											required="true" step="any" />
										<span class="input-group-addon">&#8364</span>
										<form:errors cssClass="error" path="facturacionAmbiental" />
									</div>
								</div>
								<div class="col-lg-2">
									<p id="errorAmbiental" hidden="true" style="color: #d9534f">La
										facturaci&oacuten ambiental debe ser menor a total</p>
								</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-6">
									<div class="form-group">
										<label>4.3 Reparto porcentual de la facturaci&oacuten
											entre las distintas actividades ambientales:</label>
										<div class="alert alert-success">
											V&eacutease clasificaci&oacuten y definiciones en <a
												href="front/anexo.pdf" target="_blank"><b>Anexo</b></a>.
											Compruebe que la suma de la columna es 100%.
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>

								<div class="col-lg-2">
									<div class="form-group">
										<h2>% de facturaci&oacuten</h2>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Gesti&oacuten ambiental del medio
											atmosf&eacuterico:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Control y reducci&oacuten de la
										contaminaci&oacuten del aire</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="uno" path="contaminacionAire" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="contaminacionAire" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Control y reducci&oacuten de la
										contaminaci&oacuten por ruidos y vibraciones</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="dos" path="contaminacionRuido" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="contaminacionRuido" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Gesti&oacuten sostenible de recursos
											h&iacutedricos y descontaminaci&oacuten de espacios:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Gesti&oacuten del agua</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="tres" path="gestionAgua" min="0" max="100"
											class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="gestionAgua" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Recogida y tratamiento de aguas
										residuales</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="cuatro" path="recogidaAguaResidual" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="recogidaAguaResidual" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Saneamiento y restauraci&oacuten
										de suelos, cursos y masas de agua contaminados</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="cinco" path="saneamientoSuelos" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="saneamientoSuelos" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Gesti&oacuten de residuos y reciclaje:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Recogida, transporte,
										almacenamiento y eliminaci&oacuten de residuos</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="seis" path="recogidaResiduos" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="recogidaResiduos" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Reciclaje y valorizaci&oacuten de
										residuos</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="siete" path="reciclajeResiduos" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="reciclajeResiduos" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Gesti&oacuten sostenible de la energ&iacutea:
											Energ&iacutea renovable</label>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="ocho" path="energiaRenovable" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="energiaRenovable" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Agricultura y ganader&iacutea ecol&oacutegicas:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Producci&oacuten agr&iacutecola y
										ganadera ecol&oacutegica</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="nueve" path="produccionEcologica" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="produccionEcologica" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Elaboraci&oacuten,
										comercializaci&oacuten y otros servicios relacionados con la
										producci&oacuten ecol&oacutegica</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="diez" path="elaboracionProduccionEcologica"
											min="0" max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error"
											path="elaboracionProduccionEcologica" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Gesti&oacuten de espacios protegidos y
											actividades forestales sostenibles</label>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="once" path="espaciosProtegisdos"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="espaciosProtegisdos" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Ecoturismo:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Alojamiento ecotur&iacutestico:</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7" style="padding-left: 45px;">
									<div class="form-group">Gesti&oacuten de casa rural o
										apartamento rural</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="doce" path="gestionCasaRural"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="gestionCasaRural" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7" style="padding-left: 45px;">
									<div class="form-group">Hotel / Villa rural</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="trece" path="hotelRural" class="form-control"
											min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="hotelRural" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7" style="padding-left: 45px;">
									<div class="form-group">Camping y otro tipo de
										alojamiento rural</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="catorce" path="campingRural"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="campingRural" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Restauraci&oacuten en el medio
										rural ("mes&oacuten rural")</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="quince" path="mesonRural" class="form-control"
											min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="mesonRural" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Actividades recreativo-deportivas
										("turismo activo")</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="dieciseis" path="turismoActivo"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="turismoActivo" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Promoci&oacuten y
										comercializaci&oacuten de servicios ecotur&iacutesticos</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="diecisiete" path="promocionEcoturistico"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="promocionEcoturistico" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Otros servicios ambientales a empresas y
											entidades:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Consultor&iacutea e
										ingenier&iacutea ambiental multi-&aacutembito (no clasificable
										en otro apartado)</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="dieciocho" path="consultoriaAmbiental"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="consultoriaAmbiental" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-2">
									<div class="form-group">Otros (especificar):</div>
								</div>
								<div class="col-lg-5">
									<div class="form-group">
										<form:input path="otros" class="form-control" />
										<form:errors cssClass="error" path="otros" />
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="diecinueve" path="otrosPorcentaje"
											class="form-control" min="0" max="100" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="otrosPorcentaje" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Construcci&oacuten sostenible:
											Edificaci&oacuten, rehabilitaci&oacuten y eficiencia
											energ&eacutetica:</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Construcci&oacuten y
										rehabilitaci&oacuten sostenible de edificios</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="veinte" path="construccionSostenibleEdificios"
											min="0" max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error"
											path="construccionSostenibleEdificios" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Instalaciones de energ&iacutea
										renovable</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="veintiuno" path="instalacionRenovable" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="instalacionRenovable" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Estudios de bioarquitectura y
										arquitectura sostenible</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="veintidos" path="estudioSostenible" min="0"
											max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="estudioSostenible" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-8">
									<div class="form-group">
										<label>Movilidad sostenible</label>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>

							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Transporte sostenible de personas
										y mercanc&iacuteas</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="veintitres" path="transporteSostenible"
											min="0" max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="transporteSostenible" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<div class="col-lg-12">

								<div class="col-lg-1">
									<p align="right">&nbsp;</p>
								</div>
								<div class="col-lg-7">
									<div class="form-group">Fabricaci&oacuten de
										veh&iacuteculos eficientes e industria auxiliar</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="veinticuatro" path="fabricacionEficiente"
											min="0" max="100" class="form-control" type="number" />
										<span class="input-group-addon">%</span>
										<form:errors cssClass="error" path="fabricacionEficiente" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">
								<div class="col-lg-2">&nbsp;</div>
								<div class="col-lg-6">
									<h3 align="right">Total facturaci&oacuten en actividades
										ambientales:</h3>
								</div>
								<div class="col-lg-2" align="center">
									<h2 align="center">100%</h2>
									<h3 id="errorSuma" hidden="true" style="color: #d9534f">La
										suma debe ser 100</h3>
									<h3 id="errorSuma1" hidden="true" style="color: #d9534f">No
										debe haber ning&uacuten porcentaje</h3>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>

							<div class="col-lg-12">&nbsp;</div>
							<div class="col-lg-12">&nbsp;</div>


							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize
									access="hasAnyRole('CIF1','CIF2','CIF3','CIF4')">
									<a href="encuesta/cif1/paginaDos.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif1/verPaginaDos.do?tipoCIF1Id=${tipoCIF1Id}"
										class="btn btn-default" role="button">Paso anterior</a>
								</security:authorize>
							</div>
							<div class="col-lg-2">
								<button type="submit" class="btn btn-default" name="save">Siguiente
									paso</button>
							</div>
							<div class="col-lg-4">&nbsp;</div>
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
	function validate3() {
		res1 = validateTotalMayor();
		res2 = validateTotalSuma();

		resTotal = res1 && res2;
		return resTotal;
	}

	function validateTotalMayor() {
		res = true;
		factTotal = document.getElementById("facturacionTotal");
		factAmbiental = document.getElementById("facturacionAmbiental");
		if (parseInt(factTotal.value) < parseInt(factAmbiental.value)) {
			res = false;
			errorAmbiental.hidden = false;
			factAmbiental.focus();
		} else {
			errorAmbiental.hidden = true;
		}

		return res;

	}

	function validateTotalSuma() {
		res = true;
		uno = document.getElementById("uno");
		dos = document.getElementById("dos");
		tres = document.getElementById("tres");
		cuatro = document.getElementById("cuatro");
		cinco = document.getElementById("cinco");
		seis = document.getElementById("seis");
		siete = document.getElementById("siete");
		ocho = document.getElementById("ocho");
		nueve = document.getElementById("nueve");
		diez = document.getElementById("diez");
		once = document.getElementById("once");
		doce = document.getElementById("doce");
		trece = document.getElementById("trece");
		catorce = document.getElementById("catorce");
		quince = document.getElementById("quince");
		dieciseis = document.getElementById("dieciseis");
		diecisiete = document.getElementById("diecisiete");
		dieciocho = document.getElementById("dieciocho");
		diecinueve = document.getElementById("diecinueve");
		veinte = document.getElementById("veinte");
		veintiuno = document.getElementById("veintiuno");
		veintidos = document.getElementById("veintidos");
		veintitres = document.getElementById("veintitres");
		veinticuatro = document.getElementById("veinticuatro");
		factAmbiental = document.getElementById("facturacionAmbiental");

		if (uno.value.length == 0) {
			uno.value = 0;
		}
		if (dos.value.length == 0) {
			dos.value = 0;
		}
		if (tres.value.length == 0) {
			tres.value = 0;
		}
		if (cuatro.value.length == 0) {
			cuatro.value = 0;
		}
		if (cinco.value.length == 0) {
			cinco.value = 0;
		}
		if (seis.value.length == 0) {
			seis.value = 0;
		}
		if (siete.value.length == 0) {
			siete.value = 0;
		}
		if (ocho.value.length == 0) {
			ocho.value = 0;
		}
		if (nueve.value.length == 0) {
			nueve.value = 0;
		}
		if (diez.value.length == 0) {
			diez.value = 0;
		}
		if (once.value.length == 0) {
			once.value = 0;
		}
		if (doce.value.length == 0) {
			doce.value = 0;
		}
		if (trece.value.length == 0) {
			trece.value = 0;
		}
		if (catorce.value.length == 0) {
			catorce.value = 0;
		}
		if (quince.value.length == 0) {
			quince.value = 0;
		}
		if (dieciseis.value.length == 0) {
			dieciseis.value = 0;
		}
		if (diecisiete.value.length == 0) {
			diecisiete.value = 0;
		}
		if (dieciocho.value.length == 0) {
			dieciocho.value = 0;
		}
		if (diecinueve.value.length == 0) {
			diecinueve.value = 0;
		}
		if (veinte.value.length == 0) {
			veinte.value = 0;
		}
		if (veintiuno.value.length == 0) {
			veintiuno.value = 0;
		}
		if (veintidos.value.length == 0) {
			veintidos.value = 0;
		}
		if (veintitres.value.length == 0) {
			veintitres.value = 0;
		}
		if (veinticuatro.value.length == 0) {
			veinticuatro.value = 0;
		}

		var total = parseInt(uno.value) + parseInt(dos.value)
				+ parseInt(tres.value) + parseInt(cuatro.value)
				+ parseInt(cinco.value) + parseInt(seis.value)
				+ parseInt(siete.value) + parseInt(ocho.value)
				+ parseInt(nueve.value) + parseInt(diez.value)
				+ parseInt(once.value) + parseInt(doce.value)
				+ parseInt(trece.value) + parseInt(catorce.value)
				+ parseInt(quince.value) + parseInt(dieciseis.value)
				+ parseInt(diecisiete.value) + parseInt(dieciocho.value)
				+ parseInt(diecinueve.value) + parseInt(veinte.value)
				+ parseInt(veintiuno.value) + parseInt(veintidos.value)
				+ parseInt(veintitres.value) + parseInt(veinticuatro.value);
		if (factAmbiental.value != 0) {
			if (total != 100) {
				errorSuma.hidden = false;
				errorSuma1.hidden = true;
				res = false;

			} else {
				errorSuma.hidden = true;

			}
		} else {
			if (total != 0) {
				errorSuma1.hidden = false;
				errorSuma.hidden = true;
				res = false;

			} else {
				errorSuma1.hidden = true;

			}

		}

		return res

	}
</script>

