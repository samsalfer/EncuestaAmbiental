<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<body onload="comprobacionPregunta();">
<div id="page-wrapper" style="margin-left: 50px; margin-right: 50px;">
	<form:form action="${requestURI}" modelAttribute="formularioCuatroForm"
		id="commentForm" onsubmit="return validate4()">
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
					<div class="panel-body">
						<div class="row">

							<div class="col-lg-12">
								<div class="form-group">
									<p>
										<b>5.3. Equipos e instalaciones integrados </b> (prevención de
										la contaminación)
									</p>
								</div>
							</div>

							<div class="col-lg-12">

								<div class="alert alert-success">
									<b>Equipos o instalaciones integrados en el proceso
										productivo</b> son aquellos que tienen una doble finalidad,
									industrial y de control y prevención de la contaminación.
									Consigne el valor del <b>incremento real de activos</b>, por
									adquisición de nuevos equipos, por reparaciones o
									modificaciones efectuadas en los equipos existentes. Consigne
									asimismo el valor de las <b>disminuciones de activos</b>, por
									ventas o cesiones de equipos. Véase definiciones y ejemplo en <a href="front/anexo4.pdf" target="_blank"><b>Anexo</b></a>.

								</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Ámbitos y actividades de protección ambiental</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2" align="center">
									<b>Adquisiciones y grandes mejoras</b>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2" align="center">
									<b>Ventas</b>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Protección del medio atmosférico:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.1. Instalaciones para la reducción de emisiones
											contaminantes al aire</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5311" type="number" path="a5311"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5312" type="number" path="a5312"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.2. Instalaciones para la reducción de ruidos y
											vibraciones</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5321" type="number" path="a5321"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5322" type="number" path="a5322"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Protección de recursos hídricos y descontaminación:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.3. Instalaciones para la prevención de las aguas
											residuales</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5331" type="number" path="a5331"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5332" type="number" path="a5332"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.4. Instalaciones para el ahorro y la reutilización
											de agua en procesos productivos</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5341" type="number" path="a5341"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5342" type="number" path="a5342"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.5 Instalaciones menos contaminantes para suelos y
											aguas subterráneas o cursos de aguas superficiales</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5351" type="number" path="a5351"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5352" type="number" path="a5352"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Gestión de residuos:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.6. Instalaciones que generan menos residuos</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5361" type="number" path="a5361"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5362" type="number" path="a5362"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.7 Instalaciones para reducir el consumo de materia
											prima</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5371" type="number" path="a5371"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5372" type="number" path="a5372"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.8 Instalaciones para reducir el uso de materias
											primas contaminantes</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5381" type="number" path="a5381"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5382" type="number" path="a5382"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Gestión sostenible de la energía: Energías renovables:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.9 Equipos para la producción de energías renovables
											como molinos de viento, paneles solares, etc.</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5391" type="number" path="a5391"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5392" type="number" path="a5392"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Otros ámbitos de protección ambiental:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.10. Otros equipos e instalaciones integrados
											(especificar):</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53101" type="number" path="a53101"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53102" type="number" path="a53102"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<form:textarea id="a5310otros" path="a5310otros"
											class="form-control" maxlength="250" />
									</div>
								</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Construcción sostenible:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.11. Equipos para el ahorro de calor y electricidad,
											intercambiadores de calor para el reciclaje de calor del aire
											y de aguas residuales, bombas de calor para la generación de
											calor, cogeneración de calor y electricidad.</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53111" type="number" path="a53111"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53112" type="number" path="a53112"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.12. Instalación de dispositivos para uso de energía
											procedente de fuentes renovables no fósiles</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53121" type="number" path="a53121"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53122" type="number" path="a53122"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<!--xxx-->
							<div class="col-lg-12">
								<div class="col-lg-5">
									<div class="form-group">
										<p>
											<b>Movilidad sostenible:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.3.13. Vehículos eficientes y tecnologías para estos
											vehículos limpios, verdes o de baja emisión</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53131" type="number" path="a53131"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a53132" type="number" path="a53132"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
															<div class="col-lg-12" align="center">
								<h3 id="errorSuma" hidden="true" style="color: #d9534f">
									Al responder SI a la realización de inversión en el establecimiento en protección ambiental, debe existir algún valor para la adquisición y grandes mejoras en alguno de los ámbitos y actividades de protección ambiental.</h3>
							</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				
			</div>
			<!-- /.col-lg-12 -->
			
		</div>



		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>A6. Gastos corrientes e ingresos relacionados con la
							protección ambiental</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							Se debe contabilizar exclusivamente los gastos corrientes en el
							año 2014. Véase definiciones en <a href="front/anexo4.pdf" target="_blank"><b>Anexo</b></a>.
						</div>

						<div class="col-lg-12">
							<div class="col-lg-2">
								<div class="form-group">
									<p>
										<b>6.1. Gastos corrientes</b>
									</p>
								</div>
							</div>
							<div class="col-lg-5">&nbsp;</div>
							<div class="col-lg-2">
								<div class="form-group" align="center">
									<p>
										<b>Importe</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>

						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.1. Compra de servicios de protección ambiental a
											otras empresas
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a611" type="number" path="a611"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.2. Impuestos, tasas y cánones medioambientales pagados a las Administraciones Públicas 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a612" type="number" path="a612"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.3. Gastos de personal ocupado en actividades de protección ambiental 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a613" type="number" path="a613"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.4. Gastos en actividades de I+D y formación en materia de protección ambiental 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a614" type="number" path="a614"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.5. Gastos relativos a ecoauditorías, certificación, análisis de impacto ambiental, etc
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a615" type="number" path="a615"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.1.6. Otros gastos corrientes relacionados con la protección ambiental (especificar) :
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a616" type="number" path="a616"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
										<form:textarea id="a616otros" path="a616otros"
											class="form-control" maxlength="250" />
									</div>
							</div>
							<div class="col-lg-5">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-2">
								<div class="form-group">
									<p>
										<b>6.2. Ingresos</b>
									</p>
								</div>
							</div>
							<div class="col-lg-5">&nbsp;</div>
							<div class="col-lg-2">
								<div class="form-group" align="center">
									<p>
										<b>Importe</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.2.1. Subvenciones y ayudas recibidas vinculadas a actividades ambientales: 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a621" type="number" path="a621"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.2.2. Venta de servicios ambientales: 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a622" type="number" path="a622"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.2.3. Venta de subproductos o residuos (productos reciclables, residuos combustibles, etc.) 
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a623" type="number" path="a623"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
									<p>
										6.2.4. Otros ingresos relacionados con la protección ambiental (especificar) :
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="a624" type="number" path="a624"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>
							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-6">
								<div class="form-group">
										<form:textarea id="a624otros" path="a624otros"
											class="form-control" maxlength="250" />
									</div>
							</div>
							<div class="col-lg-5">&nbsp;</div>
						</div>
						<div class="col-lg-12" align="center">
						<h3 id="errorSumaTodo" hidden="true" style="color: #d9534f">
									La suma de los gastos corrientes más las adquisiciones y grandes mejoras relacionados con la protección ambiental debe ser inferior al total de gastos del establecimiento.</h3>
						<h3 id="errorSumaIngresos" hidden="true" style="color: #d9534f">
									La suma de los ingresos corrientes relacionados con actividades ambientales debe ser inferior a la facturación del establecimiento.</h3>
						
						
						</div>
						<div class="col-lg-12">&nbsp;</div>
						<div class="col-lg-12">&nbsp;</div>
						

						<!-- Tab12 -->
						<div class="col-lg-4">&nbsp;</div>
						<div class="col-lg-2">
							<security:authorize access="hasAnyRole('CIF4')">
								<a href="encuesta/cif4/paginaTres.do" class="btn btn-default"
									role="button">Paso anterior</a>
							</security:authorize>
							<security:authorize access="hasAnyRole('ADMIN')">
								<a
									href="encuesta/cif4/verPaginaTres.do?tipoCIF4Id=${tipoCIF4Id}"
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
			</div>
		</div>




	</form:form>
</div>
<!-- /.row -->
<script>
function validate4(){
	
	res = comprobacion();

	
	return res;
}

function comprobacionPregunta(){
	//hago que no pueda responder nada si no ha puesot si.
	 preguntaNo = "${preguntaNo}";
	
	if(preguntaNo == "true"){
		var reg1 = /a53../;

		var frm = document.getElementById("commentForm");
		for (i=0;i<frm.elements.length;i++)
		{
			if(frm.elements[i].name.match(reg1)){
				frm.elements[i].value="0";
				frm.elements[i].readOnly="true";
			}
		

		}
	}	
	
	
}

function comprobacion(){
	res = true;
	sumaA52 = "${sumaA52}";
	resultadoA412 = "${resultadoA412}";
	resultadoA411 = "${resultadoA411}";
	var reg1 = /a53.1/;
	var reg2 = /a53..1/;
	var frm = document.getElementById("commentForm");
	var a53112 = document.getElementById("a53112");
	var suma = 0;

	//suma poniendo 0
	for (i=0;i<frm.elements.length;i++)
	{
		if(frm.elements[i].name.match(reg1)){
			
			if(frm.elements[i].value.length==0){
				frm.elements[i].value=0;
			}
			suma+=parseFloat(frm.elements[i].value);
		}
		
		else if(frm.elements[i].name.match(reg2)){
			
			if(frm.elements[i].value.length==0){
				frm.elements[i].value=0;
			}
			suma+=parseFloat(frm.elements[i].value);
		}

	}
	//se cuela uno y lo quito.
	suma-=parseFloat(a53112.value);
	
	if(parseFloat(suma) <= 0.0 && preguntaNo=="false" && parseFloat(sumaA52)==0.0){
		res=false;
		errorSuma.hidden = false;
		a53131.focus();
	}
	else{
		errorSuma.hidden = true;
	}
	
	
	//Suma a61i - i1 a i6
	var reg3 = /a61./;
	var reg4 = /a62./;
	var suma2 = 0.0;
	var suma3 = 0.0;
	for (i=0;i<frm.elements.length;i++)
	{
		if(frm.elements[i].name.match(reg3)){
			
			if(frm.elements[i].value.length==0){
				frm.elements[i].value=0;
			}
			
			suma2+=parseFloat(frm.elements[i].value);
		}
		
		if(frm.elements[i].name.match(reg4)){
			
			if(frm.elements[i].value.length==0){
				frm.elements[i].value=0;
			}
			suma3+=parseFloat(frm.elements[i].value);
		}
		
		
	}
	
	if(parseFloat(resultadoA412)<= parseFloat(suma)+parseFloat(suma2)+parseFloat(sumaA52)){
		res=false;
		errorSumaTodo.hidden = false;

	}
	else{
		errorSumaTodo.hidden = true;
	}
	
	if(parseFloat(resultadoA411)<= parseFloat(suma3)){
		res=false;
		errorSumaIngresos.hidden = false;

	}
	else{
		errorSumaIngresos.hidden = true;
	}
	
	
	return res;
}


</script>



