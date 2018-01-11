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
	<form:form action="${requestURI}" modelAttribute="formularioDosForm"
		id="commentForm" onsubmit="return validate2()">
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
					Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (2/4)</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>A2. Informaci�n sobre Gasto Liquidado</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success" align="justify">
							Consigne los datos relativos al Gasto total, Gasto de personal y
							Gasto en inversiones reales correspondientes al total del <b>Presupuesto
								Liquidado de 2014</b>, as� como para cada uno de las <b>actividades
								ambientales</b>, seg�n la descripci�n y correspondencia aproximada
							con la Clasificaci�n por Programas del Presupuesto de Gastos que
							figura en <a href="front/anexo3.pdf" target="_blank">Anexo</a>. El Gasto total corresponde a la <b>suma de
								los cap�tulos 1 a 9</b> de la Clasificaci�n Econ�mica del
							Presupuesto de Gastos; el Gasto de personal al <b>cap�tulo 1</b>
							y las Inversiones reales al <b>cap�tulo 6</b> de dicha
							clasificaci�n.
						</div>
					

		<div class="row">

			<!-- Tab12 -->
			<div class="col-lg-12">
				<div class="col-lg-5">&nbsp;</div>

				<div class="col-lg-2">
					<div class="form-group">
						<p align="center">
							<b>Gasto total:</b>
						</p>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group">
						<p align="center">
							<b>Gasto de personal:</b>
						</p>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group">
						<p align="center">
							<b>Inversiones reales:</b>
						</p>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
			<!-- /Tab12 -->

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>2.1. Total Presupuesto de Gasto Liquidado:</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a2111" path="a2111" type="number" step="any" required="true" min="1" class="form-control" />
						<span class="input-group-addon">&#8364;</span>

					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a2112" path="a2112" type="number" step="any" required="true" min="1" class="form-control" />
						<span class="input-group-addon">&#8364;</span>

					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a2113" path="a2113" type="number" step="any" required="true" min="0" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-1">&nbsp;</div>
			</div>
									<div class="col-lg-12" align="center">
							<h3 id="errorSuma1" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							
			</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>2.2. Presupuesto de Gasto Liquidado en actuaciones
							ambientales</b>
					</p>
				</div>
				<div class="col-lg-7">&nbsp;</div>
			</div>

			<div class="col-lg-12">&nbsp;</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Gesti�n ambiental del medio atmosf�rico:</b>
					</p>
				</div>
				<div class="col-lg-7">&nbsp;</div>
			</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Control y reducci�n de la contaminaci�n del aire</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22011" path="a22011" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22012" path="a22012" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22013" path="a22013" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				
			</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma10" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
			<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Control de la contaminaci�n por ruidos y vibraciones</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22021" path="a22021" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22022" path="a22022" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22023" path="a22023" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-1">&nbsp;</div>
			</div>
								<div class="col-lg-12" align="center">
								<h3 id="errorSuma20" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.<br></h3>
							</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Gesti�n sostenible de los recursos h�dricos y
							descontaminaci�n de espacios:</b>
					</p>
				</div>
				<div class="col-lg-7">&nbsp;</div>
			</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Gesti�n del agua</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22031" path="a22031" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22032" path="a22032" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22033" path="a22033" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
			</div>
			
											<div class="col-lg-12" align="center">
								<h3 id="errorSuma30" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Recogida y tratamiento de aguas residuales</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22041" path="a22041" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22042" path="a22042" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22043" path="a22043" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				
			</div>
											<div class="col-lg-12" align="center">
								<h3 id="errorSuma40" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Saneamiento y restauraci�n de suelos, cursos y masas de agua contaminados</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22051" path="a22051" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22052" path="a22052" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22053" path="a22053" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				
			</div>
											<div class="col-lg-12" align="center">
								<h3 id="errorSuma50" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">&nbsp;</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Gesti�n de residuos y reciclaje:</b>
					</p>
				</div>
				<div class="col-lg-7">&nbsp;</div>
			</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Recogida, transporte, almacenamiento y eliminaci�n de residuos</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22061" path="a22061" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22062" path="a22062" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22063" path="a22063" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

			</div>
			
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma60" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>Reciclaje y valorizaci�n de residuos</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22071" path="a22071" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22072" path="a22072" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22073" path="a22073" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-1">&nbsp;</div>
			</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma70" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
			<div class="col-lg-12">&nbsp;</div>

			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Gesti�n sostenible de la anerg�a: Energ�a Renovable</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22081" path="a22081" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22082" path="a22082" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22083" path="a22083" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma80" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Agricultura y ganader�a ecol�gicas</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22091" path="a22091" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22092" path="a22092" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22093" path="a22093" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma90" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Gesti�n de espacios protegidos y actividades forestales sostenibles</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22101" path="a22101" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22102" path="a22102" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22103" path="a22103" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorSuma100" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Ecoturismo</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22111" path="a22111" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22112" path="a22112" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22113" path="a22113" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
										<div class="col-lg-12" align="center">
								<h3 id="errorSuma101" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Educaci�n y sensibilizaci�n ambiental</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22121" path="a22121" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22122" path="a22122" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22123" path="a22123" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
												<div class="col-lg-12" align="center">
								<h3 id="errorSuma102" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Ecoinnovaci�n, investigaci�n y desarrollo en materia
							ambiental</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22131" path="a22131" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22132" path="a22132" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22133" path="a22133" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>

												<div class="col-lg-12" align="center">
								<h3 id="errorSuma103" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Consultor�a e ingenier�a ambiental multi-�mbito</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22141" path="a22141" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22142" path="a22142" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22143" path="a22143" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
			
													<div class="col-lg-12" align="center">
								<h3 id="errorSuma104" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Construcci�n sostenible : Edificaci�n, rehabilitaci�n y
							eficiencia energ�tica</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22151" path="a22151" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22152" path="a22152" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22153" path="a22153" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>

									<div class="col-lg-12" align="center">
								<h3 id="errorSuma105" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Movilidad sostenible</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22161" path="a22161" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22162" path="a22162" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22163" path="a22163" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>
												<div class="col-lg-12" align="center">
								<h3 id="errorSuma106" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<p>
						<b>Otros (especificar):</b>
					</p>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22171" path="a22171" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22172" path="a22172" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="form-group input-group">
						<form:input id="a22173" path="a22173" class="form-control" />
						<span class="input-group-addon">&#8364;</span>
					</div>
				</div>

				<div class="col-lg-1">&nbsp;</div>
			</div>

												<div class="col-lg-12" align="center">
								<h3 id="errorSuma107" hidden="true" style="color: #d9534f">
								Gasto total debe ser mayor o igual a la suma de gasto de personal con inversiones reales.</h3>
							</div>
							<div class="col-lg-1">&nbsp;</div>
			<div class="col-lg-12">
				<div class="col-lg-1">&nbsp;</div>
				<div class="col-lg-4">
					<form:textarea id="otros" path="otros" class="form-control"
						maxlength="250" />
				</div>
				<div class="col-lg-8">&nbsp;</div>
			</div>
									<div class="col-lg-12" align="center">
							<h3 id="errorTotal" hidden="true" style="color: #d9534f">
								Debe existir al menos gasto total en un �mbito de actuaci�n ambiental.</h3>
							<h3 id="errorPersonal" hidden="true" style="color: #d9534f">
								Debe existir al menos gasto de personal en un �mbito de actuaci�n ambiental.</h3>
							<h3 id="errorInversion" hidden="true" style="color: #d9534f">
								Debe existir al menos inversi�n real en un �mbito de actuaci�n ambiental.</h3>
							<h3 id="errorSumaTotal" hidden="true" style="color: #d9534f">
								Gasto total en total de presupuesto debe ser mayor o igual a gasto total en actuaciones ambientales.</h3>	
							<h3 id="errorSumaPersonal" hidden="true" style="color: #d9534f">
								Gasto personal en total de presupuesto debe ser mayor o igual a gasto personal en actuaciones ambientales.</h3>					
							<h3 id="errorSumaInversion" hidden="true" style="color: #d9534f">
								Inversiones reales en total de presupuesto debe ser mayor o igual a inversiones reales en actuaciones ambientales.</h3>
			</div>
			<div class="col-lg-12">&nbsp;</div>

			<!-- Tab12 -->
			<div class="col-lg-4">&nbsp;</div>
			<div class="col-lg-2">
				<security:authorize access="hasAnyRole('CIF3')">
					<a href="encuesta/cif3/paginaUno.do" class="btn btn-default"
						role="button">Paso anterior</a>
				</security:authorize>
				<security:authorize access="hasAnyRole('ADMIN')">
					<a href="encuesta/cif3/verPaginaUno.do?tipoCIF3Id=${tipoCIF3Id}"
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
			
			
	</form:form>
		</div>
		<!-- /.row -->

		<!-- /.row -->


<script type="text/javascript">
	function validate2() {
		
		res1 = concordanciaSuma();
	 	resTotal=res1;
		return resTotal;
	}
	
	function concordanciaSuma(){
		// recogemos todos los elementos por id para que funcione en ie.
		a2111 = document.getElementById("a2111");
		a2112 = document.getElementById("a2112");
		a2113 = document.getElementById("a2113");
		
		a22011 = document.getElementById("a22011");
		a22012 = document.getElementById("a22012");
		a22013 = document.getElementById("a22013");
		
		a22021 = document.getElementById("a22021");
		a22022 = document.getElementById("a22022");
		a22023 = document.getElementById("a22023");
		
		a22031 = document.getElementById("a22031");
		a22032 = document.getElementById("a22032");
		a22033 = document.getElementById("a22033");
		
		a22041 = document.getElementById("a22041");
		a22042 = document.getElementById("a22042");
		a22043 = document.getElementById("a22043");
		
		a22051 = document.getElementById("a22051");
		a22052 = document.getElementById("a22052");
		a22053 = document.getElementById("a22053");
		
		a22061 = document.getElementById("a22061");
		a22062 = document.getElementById("a22062");
		a22063 = document.getElementById("a22063");
		
		a22071 = document.getElementById("a22071");
		a22072 = document.getElementById("a22072");
		a22073 = document.getElementById("a22073");
		
		a22081 = document.getElementById("a22081");
		a22082 = document.getElementById("a22082");
		a22083 = document.getElementById("a22083");
		
		a22091 = document.getElementById("a22091");
		a22092 = document.getElementById("a22092");
		a22093 = document.getElementById("a22093");
		
		a22101 = document.getElementById("a22101");
		a22102 = document.getElementById("a22102");
		a22103 = document.getElementById("a22103");
	
		a22111 = document.getElementById("a22111");
		a22112 = document.getElementById("a22112");
		a22113 = document.getElementById("a22113");
		
		a22121 = document.getElementById("a22121");
		a22122 = document.getElementById("a22122");
		a22123 = document.getElementById("a22123");
		
		a22131 = document.getElementById("a22131");
		a22132 = document.getElementById("a22132");
		a22133 = document.getElementById("a22133");
		
		a22141 = document.getElementById("a22141");
		a22142 = document.getElementById("a22142");
		a22143 = document.getElementById("a22143");
		
		a22151 = document.getElementById("a22151");
		a22152 = document.getElementById("a22152");
		a22153 = document.getElementById("a22153");
		
		a22161 = document.getElementById("a22161");
		a22162 = document.getElementById("a22162");
		a22163 = document.getElementById("a22163");
		
		a22171 = document.getElementById("a22171");
		a22172 = document.getElementById("a22172");
		a22173 = document.getElementById("a22173");

		otros = document.getElementById("otros");
		
		res1=true;
		//todos los valores vacios los ponemos a 0 para realizar las sumas
		
			var frm = document.getElementById("commentForm");
			for (i=0;i<frm.elements.length;i++)
			{
				if(frm.elements[i].value.length==0){
					frm.elements[i].value=0;
				}
			}
			
			if(otros.value==0){
				otros.value="";
			}
			
			var gastoTotal=0;
			var gastoPersonal=0;
			var inversionesReales=0;
			var reg = /a22..1/;
			var reg2= /a22..2/;
			var reg3= /a22..3/;
			
			var frm = document.getElementById("commentForm");
			for (i=0;i<frm.elements.length;i++)
			{
				
				if(frm.elements[i].name.match(reg)){
					gastoTotal+=parseFloat(frm.elements[i].value);
					
				}
				if(frm.elements[i].name.match(reg2)){
					gastoPersonal+=parseFloat(frm.elements[i].value);
					
				}
				if(frm.elements[i].name.match(reg3)){
					inversionesReales+=parseFloat(frm.elements[i].value);
					
				}
			}
					
		//suma arriba.
		if (parseFloat(a2111.value) < (parseFloat(a2112.value)
				+ parseFloat(a2113.value))) {
			res1 = false;
			errorSuma1.hidden = false;
			a2111.focus();

		} else {
			errorSuma1.hidden = true;
		}
		
		if(gastoTotal==0){
			res1 = false;
			errorTotal.hidden = false;
			a22171.focus();
		}
		else {
			errorTotal.hidden = true;
		}
		
		if(gastoPersonal==0){
			res1 = false;
			errorPersonal.hidden = false;
			a22172.focus();
		}
		else {
			errorPersonal.hidden = true;
		}
		
// 		if(inversionesReales==0){
// 			res1 = false;
// 			errorInversion.hidden = false;
// 			a22173.focus();
// 		}
// 		else {
// 			errorInversion.hidden = true;
// 		}
		
		if(parseFloat(a2111.value) < gastoTotal){
			res1 = false;
			errorSumaTotal.hidden = false;
			a22171.focus();
		}
		else {
			errorSumaTotal.hidden = true;
		}
		
		if(parseFloat(a2112.value) < gastoPersonal){
			res1 = false;
			errorSumaPersonal.hidden = false;
			a22172.focus();
		}
		else {
			errorSumaPersonal.hidden = true;
		}
		
		if(parseFloat(a2113.value) < inversionesReales){
			res1 = false;
			errorSumaInversion.hidden = false;
			a22173.focus();
		}
		else {
			errorSumaInversion.hidden = true;
		}
		
		
		if (parseFloat(a22011.value) < (parseFloat(a22012.value)
				+ parseFloat(a22013.value))) {
			res1 = false;
			errorSuma10.hidden = false;
			a22011.focus();

		} else {
			errorSuma10.hidden = true;
		}
		
		if (parseFloat(a22021.value) < (parseFloat(a22022.value)
				+ parseFloat(a22023.value))) {
			res1 = false;
			errorSuma20.hidden = false;
			a22021.focus();

		} else {
			errorSuma20.hidden = true;
		}
		
		if (parseFloat(a22031.value) < (parseFloat(a22032.value)
				+ parseFloat(a22033.value))) {
			res1 = false;
			errorSuma30.hidden = false;
			a22031.focus();

		} else {
			errorSuma30.hidden = true;
		}
		
		if (parseFloat(a22041.value) < (parseFloat(a22042.value)
				+ parseFloat(a22043.value))) {
			res1 = false;
			errorSuma40.hidden = false;
			a22041.focus();

		} else {
			errorSuma40.hidden = true;
		}
		
		if (parseFloat(a22051.value) < (parseFloat(a22052.value)
				+ parseFloat(a22053.value))) {
			res1 = false;
			errorSuma50.hidden = false;
			a22051.focus();

		} else {
			errorSuma50.hidden = true;
		}
		
		
		if (parseFloat(a22061.value) < (parseFloat(a22062.value)
				+ parseFloat(a22063.value))) {
			res1 = false;
			errorSuma60.hidden = false;
			a22061.focus();

		} else {
			errorSuma60.hidden = true;
		}

		if (parseFloat(a22071.value) < (parseFloat(a22072.value)
				+ parseFloat(a22073.value))) {
			res1 = false;
			errorSuma70.hidden = false;
			a22071.focus();

		} else {
			errorSuma70.hidden = true;
		}
		
		if (parseFloat(a22081.value) < (parseFloat(a22082.value)
				+ parseFloat(a22083.value))) {
			res1 = false;
			errorSuma80.hidden = false;
			a22081.focus();

		} else {
			errorSuma80.hidden = true;
		}
		
		if (parseFloat(a22091.value) < (parseFloat(a22092.value)
				+ parseFloat(a22093.value))) {
			res1 = false;
			errorSuma90.hidden = false;
			a22091.focus();

		} else {
			errorSuma90.hidden = true;
		}
		
		if (parseFloat(a22101.value) < (parseFloat(a22102.value)
				+ parseFloat(a22103.value))) {
			res1 = false;
			errorSuma100.hidden = false;
			a22101.focus();

		} else {
			errorSuma100.hidden = true;
		}
		
		if (parseFloat(a22111.value) < (parseFloat(a22112.value)
				+ parseFloat(a22113.value))) {
			res1 = false;
			errorSuma101.hidden = false;
			a22111.focus();

		} else {
			errorSuma101.hidden = true;
		}
		
		if (parseFloat(a22121.value) < (parseFloat(a22122.value)
				+ parseFloat(a22123.value))) {
			res1 = false;
			errorSuma102.hidden = false;
			a22121.focus();

		} else {
			errorSuma102.hidden = true;
		}
		
		if (parseFloat(a22131.value) < (parseFloat(a22132.value)
				+ parseFloat(a22133.value))) {
			res1 = false;
			errorSuma103.hidden = false;
			a22131.focus();

		} else {
			errorSuma103.hidden = true;
		}
		
		if (parseFloat(a22141.value) < (parseFloat(a22142.value)
				+ parseFloat(a22143.value))) {
			res1 = false;
			errorSuma104.hidden = false;
			a22141.focus();

		} else {
			errorSuma104.hidden = true;
		}
		
		if (parseFloat(a22151.value) < (parseFloat(a22152.value)
				+ parseFloat(a22153.value))) {
			res1 = false;
			errorSuma105.hidden = false;
			a22151.focus();

		} else {
			errorSuma105.hidden = true;
		}
		
		if (parseFloat(a22161.value) < (parseFloat(a22162.value)
				+ parseFloat(a22163.value))) {
			res1 = false;
			errorSuma106.hidden = false;
			a22161.focus();

		} else {
			errorSuma106.hidden = true;
		}
		
		if (parseFloat(a22171.value) < (parseFloat(a22172.value)
				+ parseFloat(a22173.value))) {
			res1 = false;
			errorSuma107.hidden = false;
			a22171.focus();

		} else {
			errorSuma107.hidden = true;
		}
		
		return res1;
	}
	
</script>

