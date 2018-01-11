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
		id="commentForm" onsubmit="return validate5()">
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
					Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (3/4)</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>A3. Empleo</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success" align="justify">
							Los datos solicitados se refieren exclusivamente al personal
							adscrito a la entidad p�blica; se excluye, por tanto, el personal
							ocupado en cualquier otro organismo vinculado, empresa p�blica o
							subcontrata. Consigne los datos sobre empleo total y empleo en
							actividades ambientales. En <b>empleo en actividades
								ambientales</b> se contabiliza a aquellas personas ocupadas que
							trabajan exclusivamente en alguna actividad ambiental y a
							aquellas otras que, a tiempo parcial, realizan este tipo de
							actividades. El <b>n�mero de personas ocupadas</b> corresponde al
							total de personas dedicadas �ntegra o parcialmente a actividades
							ambientales en el <b>a�o 2014</b> y el <b>n�mero de horas
								trabajadas</b> se refiere asimismo al total anual. (V�ase ejemplo en
							<a href="front/anexo3.pdf" target="_blank">Anexo</a>)
						</div>


						<div class="row">

							<!-- Tab12 -->
							<div class="col-lg-12 ">

								<div class="col-lg-4">&nbsp;</div>
								<div class="col-lg-3">
									<div class="form-group">
										<p align="center">
											<b>N�mero de personas ocupadas</b>
										</p>
									</div>
								</div>

								<div class="col-lg-1">&nbsp;</div>

								<div class="col-lg-3">
									<div class="form-group">
										<p align="center">
											<b>N�mero de horas trabajadas</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- Tab12 -->
							<div class="col-lg-12">

								<div class="col-lg-4">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Hombres</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Mujeres</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Total</b>
										</p>
									</div>
								</div>

								<div class="col-lg-1">&nbsp;</div>

								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Hombres</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Mujeres</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group">
										<p align="center">
											<b>Total</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>3.1. Empleo total</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a311" path="a311" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a312" path="a312" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a313" path="a313" type="number" required="true" min="1" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a314" path="a314" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a315" path="a315" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a316" path="a316" type="number" required="true" min="1" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<p>
										<b>3.2. Empleo en actuaciones ambientales</b>
									</p>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<p>
										<b>Gesti�n ambiental del medio atmosf�rico:</b>
									</p>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Control y reducci�n de la contaminaci�n del aire</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32011" path="a32011" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32012" path="a32012" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32013" path="a32013" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32014" path="a32014" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32015" path="a32015" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32016" path="a32016" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Control de la contaminaci�n por ruidos y vibraciones</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32021" path="a32021" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32022" path="a32022" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32023" path="a32023" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32024" path="a32024" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32025" path="a32025" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32026" path="a32026" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

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

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Gesti�n del agua</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32031" path="a32031" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32032" path="a32032" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32033" path="a32033" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32034" path="a32034" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32035" path="a32035" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32036" path="a32036" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Recogida y tratamiento de aguas residuales</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32041" path="a32041" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32042" path="a32042" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32043" path="a32043" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32044" path="a32044" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32045" path="a32045" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32046" path="a32046" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Saneamiento y restauraci�n de suelos, cursos y masas de agua contaminados</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32051" path="a32051" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32052" path="a32052" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32053" path="a32053" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32054" path="a32054" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32055" path="a32055" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32056" path="a32056" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

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

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Recogida, transporte, almacenamiento y eliminaci�n de residuos</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32061" path="a32061" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32062" path="a32062" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32063" path="a32063" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32064" path="a32064" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32065" path="a32065" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32066" path="a32066" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>Reciclaje y valorizaci�n de residuos</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32071" path="a32071" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32072" path="a32072" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32073" path="a32073" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32074" path="a32074" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32075" path="a32075" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32076" path="a32076" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Gesti�n sostenible de la anerg�a: Energ�a Renovable</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32081" path="a32081" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32082" path="a32082" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32083" path="a32083" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32084" path="a32084" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32085" path="a32085" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32086" path="a32086" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Agricultura y ganader�a ecol�gicas</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32091" path="a32091" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32092" path="a32092" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32093" path="a32093" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32094" path="a32094" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32095" path="a32095" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32096" path="a32096" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Gesti�n de espacios protegidos y actividades forestales sostenibles</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32101" path="a32101" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32102" path="a32102" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32103" path="a32103" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32104" path="a32104" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32105" path="a32105" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32106" path="a32106" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Ecoturismo</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32111" path="a32111" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32112" path="a32112" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32113" path="a32113" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32114" path="a32114" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32115" path="a32115" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32116" path="a32116" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Educaci�n y sensibilizaci�n ambiental</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32121" path="a32121" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32122" path="a32122" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32123" path="a32123" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32124" path="a32124" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32125" path="a32125" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32126" path="a32126" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Ecoinnovaci�n, investigaci�n y desarrollo en materia
											ambiental</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32131" path="a32131" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32132" path="a32132" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32133" path="a32133" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32134" path="a32134" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32135" path="a32135" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32136" path="a32136" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Consultor�a e ingenier�a ambiental multi-�mbito</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32141" path="a32141" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32142" path="a32142" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32143" path="a32143" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32144" path="a32144" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32145" path="a32145" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32146" path="a32146" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Construcci�n sostenible : Edificaci�n, rehabilitaci�n y
											eficiencia energ�tica</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32151" path="a32151" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32152" path="a32152" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32153" path="a32153" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32154" path="a32154" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32155" path="a32155" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32156" path="a32156" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Movilidad sostenible</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32161" path="a32161" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32162" path="a32162" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32163" path="a32163" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32164" path="a32164" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32165" path="a32165" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32166" path="a32166" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>Otros (especificar):</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32171" path="a32171" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32172" path="a32172" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32173" path="a32173" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32174" path="a32174" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32175" path="a32175" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a32176" path="a32176" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<form:textarea id="eOtros" path="eOtros" class="form-control"
										maxlength="250" />
								</div>
								<div class="col-lg-8">&nbsp;</div>
							</div>

							<div class="col-lg-12">&nbsp;</div>

							<!-- /Tab12 -->
							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-3">
									<p>
										<b>3.3. Total empleo en actuaciones ambientales</b>
									</p>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a331" path="a331" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a332" path="a332" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a333" path="a333" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a334" path="a334" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a335" path="a335" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										<form:input id="a336" path="a336" type="number" min="0" class="form-control" />
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!-- /Tab12 -->
							<div class="col-lg-12" align="center">
								<h3 id="errorHombreOcupados" hidden="true" style="color: #d9534f">
									Sumatorio Hombres ocupados en la i-�sima actuaci�n ambiental debe ser mayor o igual a hombres ocupados en actividades ambientales.</h3>
								<h3 id="errorMujerOcupados" hidden="true" style="color: #d9534f">
									Sumatorio Mujeres ocupados en la i-�sima actuaci�n ambiental debe ser mayor o igual a mujeres ocupados en actividades ambientales.</h3>
								<h3 id="errorTotalOcupados" hidden="true" style="color: #d9534f">
									Sumatorio Total ocupados en la i-�sima actuaci�n ambiental debe ser mayor o igual a total ocupados en actividades ambientales.</h3>
								<h3 id="errorHombresHoras" hidden="true" style="color: #d9534f">
									Sumatorio Horas trabajadas por hombres en la i-�sima actuaci�n ambiental debe ser igual a total de horas trabajadas por hombres en actividades ambientales.</h3>
								<h3 id="errorMujerHoras" hidden="true" style="color: #d9534f">
									Sumatorio Horas trabajadas por mujeres en la i-�sima actuaci�n ambiental debe ser igual a total de horas trabajadas por mujeres en actividades ambientales.</h3>
								<h3 id="errorTotalHoras" hidden="true" style="color: #d9534f">
									Sumatorio Total de horas trabajadas en la i-�sima actuaci�n ambiental debe ser igual a total de horas en actividades ambientales.</h3>
								
								<h3 id="errorCol1" hidden="true" style="color: #d9534f">
									Total de hombres ocupados debe ser mayor o igual a la suma de total de hombres ocupados en la i-�sima actuaci�n ambiental.</h3>
								<h3 id="errorCol2" hidden="true" style="color: #d9534f">
									Total de mujeres ocupados debe ser mayor o igual a la suma de total de mujeres ocupados en la i-�sima actuaci�n ambiental.</h3>
								<h3 id="errorCol3" hidden="true" style="color: #d9534f">
									Empleo Total debe ser mayor o igual a la suma de total ocupados en la i-�sima actuaci�n ambiental.</h3>
								
								<h3 id="errorCol4" hidden="true" style="color: #d9534f">
									Total de horas trabajadas por hombres debe ser mayor o igual a la suma total de horas trabajadas por hombres en la i-�sima actuaci�n ambiental.</h3>
									
								<h3 id="errorCol5" hidden="true" style="color: #d9534f">
									Total de horas trabajadas por mujeres debe ser mayor o igual a la suma total de horas trabajadas por mujeres en la i-�sima actuaci�n ambiental.</h3>
								<h3 id="errorCol6" hidden="true" style="color: #d9534f">
									Total de horas trabajadas debe ser mayor o igual a la suma total de horas trabajadas en la i-�sima actuaci�n ambiental.</h3>
							
								<h3 id="errorEmpleoTotal" hidden="true" style="color: #d9534f">
									Como el gasto de personal en actuaciones ambientales es igual al gasto de personal total, entonces el empleo total deber ser igual al empleo ambiental y las horas trabajadas totales deben ser igual a las horas trabajadas ambientales</h3>
							</div>
							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF3')">
									<a href="encuesta/cif3/paginaDos.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif3/verPaginaDos.do?tipoCIF3Id=${tipoCIF3Id}"
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

		<!-- /.row -->

	</form:form>
</div>

<script>
function validate5() {

	res = concordancia1();

	resTotal = res;
	return resTotal;
}

function concordancia1() {
	a311 = document.getElementById("a311");
	a312 = document.getElementById("a312");
	a313 = document.getElementById("a313");
	a314 = document.getElementById("a314");
	a315 = document.getElementById("a315");
	a316 = document.getElementById("a316");
	
	a331 = document.getElementById("a331");
	a332 = document.getElementById("a332");
	a333 = document.getElementById("a333");
	a334 = document.getElementById("a334");
	a335 = document.getElementById("a335");
	a336 = document.getElementById("a336");
	
	eOtros = document.getElementById("eOtros");
	
	//recojo el array y lo transformo en un array de float.
	var venga ="${array}";
	var gastosPersonales = venga.split(',').map(function(item) {
	return parseFloat(item, 10);
	});
	
	res = true;
	//primer elemento
	//Hombres
	if (a311.value != 0) {
		a314.required = true;
		a314.min = "1";
	} else {
		a314.required = false;
		a314.min = "0";
	}

	if (a314.value != 0) {
		a311.required = true;
		a311.min = "1";
	} else {
		a311.required = false;
		a311.min = "0";
	}

	//Mujeres
	if (a312.value != 0) {
		a315.required = true;
		a315.min = "1";
	} else {
		a315.required = false;
		a315.min = "0";
	}

	if (a315.value != 0) {
		a312.required = true;
		a312.min = "1";
	} else {
		a312.required = false;
		a312.min = "0";
	}

	
	//ponemos a 0 todos los atributos para que no falle al hacer las sumas.
	
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		if(frm.elements[i].value.length==0){
			frm.elements[i].value=0;
		}
	}
	
	if(eOtros.value==0){
		eOtros.value="";
	}
	
	//validacion primer elemento.
	if(parseInt(a311.value)+parseInt(a312.value)!=parseInt(a313.value)){
		a313.setAttribute('type', 'creditcard');
	}
	else{
		a313.setAttribute('type', 'number');
	}
	if(parseInt(a314.value)+parseInt(a315.value)!=parseInt(a316.value)){
		a316.setAttribute('type', 'creditcard');
	}
	else{
		a316.setAttribute('type', 'number');
	}
	
	// comprobacion suma por fila
	var aux=0;
	var reg = /a32..[1245]/;
	var reg2 = /a32..[36]/;
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		
		if(frm.elements[i].name.match(reg)){
			aux+=parseInt(frm.elements[i].value);
			
		}
		if(frm.elements[i].name.match(reg2)){
			if(frm.elements[i].value!=aux){
				frm.elements[i].setAttribute('type', 'creditcard');
			}
			else{
				frm.elements[i].setAttribute('type', 'number');
			}
			aux=0;
		}

	}
	
	//Concordancia lado izquierdo con derecho
	var reg3 = /a32..[123]/;
	var reg4 = /a32..[456]/;
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		
		if(frm.elements[i].name.match(reg3)){
			if(frm.elements[i].value!=0){
				frm.elements[i+3].min = "1";
			}
			else{
				frm.elements[i+3].min = "0";
			}
		}
		if(frm.elements[i].name.match(reg4)){
			if(frm.elements[i].value!=0){
				frm.elements[i-3].min = "1";
			}
			else{
				frm.elements[i-3].min = "0";
			}
		}

	}
		
	
	//ultimo elemento
	//Hombres
	if (a331.value != 0) {
		a334.required = true;
		a334.min = "1";
	} else {
		a334.required = false;
		a334.min = "0";
	}

	if (a334.value != 0) {
		a331.required = true;
		a331.min = "1";
	} else {
		a331.required = false;
		a331.min = "0";
	}

	//Mujeres
	if (a332.value != 0) {
		a335.required = true;
		a335.min = "1";
	} else {
		a335.required = false;
		a335.min = "0";
	}

	if (a335.value != 0) {
		a332.required = true;
		a332.min = "1";
	} else {
		a332.required = false;
		a332.min = "0";
	}
	
	//suma
	if(parseInt(a331.value)+parseInt(a332.value)!=parseInt(a333.value)){
		a333.setAttribute('type', 'creditcard');
	}
	else{
		a333.setAttribute('type', 'number');
	}
	if(parseInt(a334.value)+parseInt(a335.value)!=parseInt(a336.value)){
		a336.setAttribute('type', 'creditcard');
	}
	else{
		a336.setAttribute('type', 'number');
	}
	
	
	//sumas de cada columna desagregados.
	var reg5 = /a32..1/;
	var reg6 = /a32..2/;
	var reg7 = /a32..3/;
	var reg8 = /a32..4/;
	var reg9 = /a32..5/;
	var reg10 = /a32..6/;
	var hombresOcupados = 0;
	var mujeresOcupados = 0;
	var totalOcupados = 0;
	var hombresHoras = 0;
	var mujeresHoras = 0;
	var totalHoras = 0;

	
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		
		if(frm.elements[i].name.match(reg5)){
			hombresOcupados+=parseInt(frm.elements[i].value);
		}
		if(frm.elements[i].name.match(reg6)){
			mujeresOcupados+=parseInt(frm.elements[i].value);
		}
		if(frm.elements[i].name.match(reg7)){
			totalOcupados+=parseInt(frm.elements[i].value);
		}
		if(frm.elements[i].name.match(reg8)){
			hombresHoras+=parseInt(frm.elements[i].value);
		}
		if(frm.elements[i].name.match(reg9)){
			mujeresHoras+=parseInt(frm.elements[i].value);
		}
		if(frm.elements[i].name.match(reg10)){
			totalHoras+=parseInt(frm.elements[i].value);
		}

	}
	
	//cada columna con su restriccion.
	
		if (parseInt(hombresOcupados) < (parseInt(a331.value))) {
			res = false;
			errorHombreOcupados.hidden = false;
			a331.focus();

		} else {
			errorHombreOcupados.hidden = true;
		}
		if (parseInt(mujeresOcupados) < (parseInt(a332.value))) {
			res = false;
			errorMujerOcupados.hidden = false;
			a332.focus();

		} else {
			errorMujerOcupados.hidden = true;
		}
		if (parseInt(totalOcupados) < (parseInt(a333.value))) {
			res = false;
			errorTotalOcupados.hidden = false;
			a333.focus();

		} else {
			errorTotalOcupados.hidden = true;
		}
		
		//horas

		if (parseInt(hombresHoras) != (parseInt(a334.value))) {
			res = false;
			errorHombresHoras.hidden = false;
			a334.focus();

		} else {
			errorHombresHoras.hidden = true;
		}
		if (parseInt(mujeresHoras) != (parseInt(a335.value))) {
			res = false;
			errorMujerHoras.hidden = false;
			a335.focus();

		} else {
			errorMujerHoras.hidden = true;
		}
		if (parseInt(totalHoras) != (parseInt(a336.value))) {
			res = false;
			errorTotalHoras.hidden = false;
			a336.focus();

		} else {
			errorTotalHoras.hidden = true;
		}
		
	//Comprobaci�n el empleo total es mayor que la desagregaci�n.
	
		if (parseInt(a311.value) < (parseInt(hombresOcupados))) {
			res = false;
			errorCol1.hidden = false;
			a311.focus();

		} else {
			errorCol1.hidden = true;
		}
	
		if (parseInt(a312.value) < (parseInt(mujeresOcupados))) {
			res = false;
			errorCol2.hidden = false;
			a312.focus();

		} else {
			errorCol2.hidden = true;
		}
		if (parseInt(a313.value) < (parseInt(totalOcupados))) {
			res = false;
			errorCol3.hidden = false;
			a313.focus();

		} else {
			errorCol3.hidden = true;
		}
		if (parseInt(a314.value) < (parseInt(hombresHoras))) {
			res = false;
			errorCol4.hidden = false;
			a314.focus();

		} else {
			errorCol4.hidden = true;
		}
		if (parseInt(a315.value) < (parseInt(mujeresHoras))) {
			res = false;
			errorCol5.hidden = false;
			a315.focus();

		} else {
			errorCol5.hidden = true;
		}
			
		if (parseInt(a316.value) < (parseInt(totalHoras))) {
			res = false;
			errorCol6.hidden = false;
			a316.focus();

		} else {
			errorCol6.hidden = true;
		}
			
		//recorro el array de gastopersonal junto con cada elemento para ponerlo a obligatorio si est� en el array-
	var reg11 = /a32..3/;
	var j=0;	
	var total = 0;
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		
		if(frm.elements[i].name.match(reg11)){
			if(gastosPersonales[j] != 0 ){
				frm.elements[i].min="1";
			}else{
				frm.elements[i].max="0";
			}
			total += gastosPersonales[j];
			j++;
		}

	}
		
	//compruebo si el total de gasto personal es igual al desglose para obligar que todo sea ambiental.
	var totalEmpleo ="${totalEmpleo}";
	
	if((totalEmpleo==total && a333.value!=a313.value) || (totalEmpleo==total && a336.value!=a316.value)){
		res = false;
		errorEmpleoTotal.hidden = false;
		a331.focus();

	} else {
		errorEmpleoTotal.hidden = true;
	}
	
	return res;
}




</script>
