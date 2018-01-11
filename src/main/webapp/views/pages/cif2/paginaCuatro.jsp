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
					<div class="panel-heading">
						<b> A5. Modalidades formativas ambientales</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							Se�ale con un aspa [X] las <b>modalidades formativas en
								materia ambiental</b> que fueron ofertadas por los
							establecimientos/centros durante 2014. V�ase clasificaci�n y
							definici�n en <a href="front/anexo2.pdf" target="_blank"><b>Anexo</b></a>.
						</div>

						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="col-lg-6">&nbsp;</div>
							<div class="col-lg-1">
								<div class="form-group">
									<p align="center">
										<b>Si</b>
									</p>
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<p align="center">
										<b>No</b>
									</p>
								</div>
							</div>
							<div class="col-lg-4">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Formaci�n para el empleo (Formaci�n Profesional
										Ocupacional y Formaci�n Continua)</p>
								</div>

								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check01" path="a61s"
													onchange="checkbox01()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check02" path="a61n"
													onchange="checkbox02()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Formaci�n especializada no reglada</p>
								</div>

								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check03" path="a62s"
													onchange="checkbox03()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check04" path="a62n"
													onchange="checkbox04()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Programas de Educaci�n Ambiental (Centros de Educaci�n
										Ambiental)</p>
								</div>

								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check05" path="a63s"
													onchange="checkbox05()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check06" path="a63n"
													onchange="checkbox06()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Otra modalidad (especificar):</p>
								</div>

								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check07" path="a64s"
													onchange="checkbox07()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check08" path="a64n"
													onchange="checkbox08()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-4">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<form:textarea id="otrosModalidad" path="otrosModalidad"
										class="form-control" maxlength="250" />
								</div>

								<div class="col-lg-6">&nbsp;</div>


							</div>


							<div class="col-lg-12">&nbsp;</div>

						</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorModalidad1" hidden="true" style="color: #d9534f">
									Debe seleccionar al menos una modalidad formativa.</h3>
								<h3 id="errorModalidad2" hidden="true" style="color: #d9534f">
								NO debe existir ninguna modalidad formativa.</h3>
							
							</div>
					</div>

				</div>
						
				
			</div>


		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b> A6. �reas  de educaci�n y sensibilizaci�n, investigaci�n y desarrollo ambientales.</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							Consigne en este apartado las �reas preferentes <b>(con un
								m�ximo de tres)</b>, en relaci�n a las actividades de Educaci�n y
							Sensibilizaci�n, y de Ecoinnovaci�n, investigaci�n y desarrollo
							en materia ambiental desarrolladas en los
							establecimienotos/centros. V�ase definiciones en <a
								href="front/anexo2.pdf" target="_blank"><b>Anexo</b></a>.
						</div>

						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="col-lg-6">&nbsp;</div>
							<div class="col-lg-2">
								<div class="form-group">
									<p align="center">
										<b>Educaci�n y Sensibilizaci�n</b>
									</p>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="form-group">
									<p align="center">
										<b>I+D+i</b>
									</p>
								</div>
							</div>
							<div class="col-lg-2">&nbsp;</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Gesti�n ambiental del medio atmosf�rico:</label>
								</div>
							</div>
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Control y reducci�n de la contaminaci�n del aire</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check1" path="a6011"
													onchange="checkbox1()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check2" path="a6012"
													onchange="checkbox2()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Control y reducci�n de la contaminaci�n por ruidos y
										vibraciones</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check3" path="a6021"
													onchange="checkbox3()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check4" path="a6022"
													onchange="checkbox4()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Gesti�n sostenible de recursos h�dricos y
										descontaminaci�n de espacios:</label>
								</div>
							</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Gesti�n del agua</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check5" path="a6031"
													onchange="checkbox5()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check6" path="a6032"
													onchange="checkbox6()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Recogida y tratamiento de aguas residuales</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check7" path="a6041"
													onchange="checkbox7()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check8" path="a6042"
													onchange="checkbox8()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Saneamiento y restauraci�n de suelos, cursos y masas de
										agua contaminados</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check9" path="a6051"
													onchange="checkbox9()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check10" path="a6052"
													onchange="checkbox10()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Gesti�n de residuos y reciclaje:</label>
								</div>
							</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Recogida, transporte, almacenamiento y eliminaci�n de
										residuos</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check11" path="a6061"
													onchange="checkbox11()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check12" path="a6062"
													onchange="checkbox12()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<p>Reciclaje y valorizaci�n de residuos</p>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check13" path="a6071"
													onchange="checkbox13()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -15px; margin-left: 8px;">
											<label> <acme:checkbox id="check14" path="a6072"
													onchange="checkbox14()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Gesti�n sostenible de la energ�a: Energ�a
										renovable</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check15" path="a6081"
													onchange="checkbox15()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check16" path="a6082"
													onchange="checkbox16()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Agricultura y ganader�a ecol�gicas</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check17" path="a6091"
													onchange="checkbox17()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check18" path="a6092"
													onchange="checkbox18()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Gesti�n de espacios protegidos y actividades
										forestales sostenibles</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check19" path="a6101"
													onchange="checkbox19()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check20" path="a6102"
													onchange="checkbox20()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Ecoturismo</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check21" path="a6111"
													onchange="checkbox21()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check22" path="a6112"
													onchange="checkbox22()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Construcci�n sostenible: Edificaci�n,
										rehabilitaci�n y eficiencia energ�tica</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check23" path="a6121"
													onchange="checkbox23()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check24" path="a6122"
													onchange="checkbox24()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Movilidad sostenible</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check25" path="a6131"
													onchange="checkbox25()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check26" path="a6132"
													onchange="checkbox26()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<label>Otros �mbitos (especificar):</label>
								</div>

								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check27" path="a6141"
													onchange="checkbox27()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<div class="checkbox" align="center"
											style="margin-top: -2; margin-left: 8px;margin-top: -px;margin-top: -25px;">
											<label> <acme:checkbox id="check28" path="a6142"
													onchange="checkbox27()" />
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							
							<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-5">
									<form:textarea id="aotros" path="aotros" class="form-control"
										maxlength="250" />
								</div>
								<div class="col-lg-8">&nbsp;</div>
								</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorModalidad3" hidden="true" style="color: #d9534f">
									Debe existir alg�n �rea de educaci�n y sensibilizaci�n ambiental.</h3>
								<h3 id="errorModalidad4" hidden="true" style="color: #d9534f">
								Debe existir alg�n �rea de I+D+i ambiental.</h3>
							
							</div>

							<div class="col-lg-12">&nbsp;</div>
							<div class="col-lg-12">&nbsp;</div>


							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF2')">
									<a href="encuesta/cif2/paginaTres.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif2/verPaginaTres.do?tipoCIF2Id=${tipoCIF2Id}"
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



		</div>








	</form:form>
</div>


<script>

function validate4(){
	
	res1 = comprobarEducacion();
 	res2 = comprobacionRepartos();
	resTotal = res1 && res2;
	return resTotal;
	
}

function comprobarEducacion(){
	res = true;
	comprobacionFormacionAmbiental = "${comprobacionFormacionAmbiental}";
	check01 = document.getElementById("check01");
	check02 = document.getElementById("check02");
	check03 = document.getElementById("check03");
	check04 = document.getElementById("check04");
	check05 = document.getElementById("check05");
	check06 = document.getElementById("check06");
	check07 = document.getElementById("check07");
	check08 = document.getElementById("check08");
	
	if(comprobacionFormacionAmbiental=="false"){
		if(check01.checked == false && check03.checked == false && check05.checked == false && check07.checked == false){
			errorModalidad1.hidden = false;
			res = false;	
			check07.focus();
		}
		
	}	
	else{
		if(check01.checked == true || check03.checked == true || check05.checked == true || check07.checked == true){
			errorModalidad2.hidden = false;
			res = false;
			check07.focus();
		}
	}
	return res;
}

function comprobacionRepartos(){
	res2 = true;
	comprobacionEducacion = "${comprobacionEducacion}";
	comprobacionInvestigacion = "${comprobacionInvestigacion}";
	check1 = document.getElementById("check1");
	check2 = document.getElementById("check2");
	check3 = document.getElementById("check3");
	check4 = document.getElementById("check4");
	check5 = document.getElementById("check5");
	check6 = document.getElementById("check6");
	check7 = document.getElementById("check7");
	check8 = document.getElementById("check8");
	check9 = document.getElementById("check9");
	check10 = document.getElementById("check10");
	check11 = document.getElementById("check11");
	check12 = document.getElementById("check12");
	check13 = document.getElementById("check13");
	check14 = document.getElementById("check14");
	check15 = document.getElementById("check15");
	check16 = document.getElementById("check16");
	check17 = document.getElementById("check17");
	check18 = document.getElementById("check18");
	check19 = document.getElementById("check19");
	check20 = document.getElementById("check20");
	check21 = document.getElementById("check21");
	check22 = document.getElementById("check22");
	check23 = document.getElementById("check23");
	check24 = document.getElementById("check24");
	check25 = document.getElementById("check25");
	check26 = document.getElementById("check26");
	check27 = document.getElementById("check27");
	check28 = document.getElementById("check28");
	
		if(comprobacionEducacion == "true" && check1.checked == false && check3.checked == false && check5.checked == false && check7.checked == false && check9.checked == false && check11.checked == false && check13.checked == false && check15.checked == false && check17.checked == false && check19.checked == false && check21.checked == false && check23.checked == false && check25.checked == false && check27.checked == false){
			errorModalidad3.hidden = false;
			res2 = false;	
			check27.focus();
		}
		else{
			errorModalidad3.hidden = true;
		}
		
		if(comprobacionInvestigacion == "true" && check2.checked == false && check4.checked == false && check6.checked == false && check8.checked == false && check10.checked == false && check12.checked == false && check14.checked == false && check16.checked == false && check18.checked == false && check20.checked == false && check22.checked == false && check24.checked == false && check26.checked == false && check28.checked == false){
			errorModalidad4.hidden = false;
			res2 = false;	
			check27.focus();
		}
		else{
			errorModalidad4.hidden = true;
		}
	

	return res2;
}


function checkbox01() {
	
	check01 = document.getElementById("check01");
	check02 = document.getElementById("check02");
	  
    if (check01.checked) {
    	check02.checked=false;
    }
}

function checkbox02() {
	
	check01 = document.getElementById("check01");
	check02 = document.getElementById("check02");
	  
    if (check02.checked) {
    	check01.checked=false;
    }
}

function checkbox03() {
	
	check03 = document.getElementById("check03");
	check04 = document.getElementById("check04");
	  
    if (check03.checked) {
    	check04.checked=false;
    }
}
function checkbox04() {
	
	check03 = document.getElementById("check03");
	check04 = document.getElementById("check04");
	  
    if (check04.checked) {
    	check03.checked=false;
    }
}

function checkbox05() {
	
	check05 = document.getElementById("check05");
	check06 = document.getElementById("check06");
	  
    if (check05.checked) {
    	check06.checked=false;
    }
}
function checkbox06() {
	
	check05 = document.getElementById("check05");
	check06 = document.getElementById("check06");
	  
    if (check06.checked) {
    	check05.checked=false;
    }
}
function checkbox07() {
	
	check07 = document.getElementById("check07");
	check08 = document.getElementById("check08");
	  
    if (check07.checked) {
    	check08.checked=false;
    }
}
function checkbox08() {
	
	check07 = document.getElementById("check07");
	check08 = document.getElementById("check08");
	  
    if (check08.checked) {
    	check07.checked=false;
    }
}
</script>

