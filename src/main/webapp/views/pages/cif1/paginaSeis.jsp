<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>



<body onload="cambiar()">
	<div id="page-wrapper" style="margin-left: 50px; margin-right: 50px;">
		<form:form action="${requestURI}" modelAttribute="formularioSeisForm"
			id="commentForm">
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
						Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (6/6)</h1>
					<ul class="errorMessages"></ul>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>A8. Anexo establecimientos con actividad ambiental en
								Andalucía</b>
						</div>
						<div class="panel-body">
							<div class="alert alert-success">
								Señale [X] si la empresa tiene más de un establecimiento con
								actividad ambiental en Andalucía. <b>En caso de que la
									respuesta sea afirmativa</b>, cumplimente por favor el Anexo con
								información de los establecimientos de la empresa que
								desarrollen una actividad ambiental en Andalucía.
							</div>
							<div class="row">
								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-8">&nbsp;</div>
									<div class="col-lg-1">
										<p>
											<b>Si</b>
										</p>
									</div>
									<div class="col-lg-1">
										<p>
											<b>No</b>
										</p>
									</div>
									<div class="col-lg-2">&nbsp;</div>

								</div>
								<!-- /Tab12 -->

								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="col-lg-1">&nbsp;</div>
									<div class="col-lg-7">
										<p>Tiene la empresa más de un establecimiento con
											actividad ambiental en Andalucía</p>
									</div>
									<div class="col-lg-1">
										<acme:checkbox id="check1" path="ambientalAndaluciaSi"
											onchange="checkbox1(); cambiar();" />
									</div>
									<div class="col-lg-1">
										<acme:checkbox id="check2" path="ambientalAndaluciaNo"
											onchange="checkbox2(); cambiar();" />
									</div>
									<div class="col-lg-1">&nbsp;</div>

								</div>
								<!-- /Tab12 -->

								<div class="col-lg-12">&nbsp;</div>

								<!-- Tab12 -->
								<div class="col-lg-12">
									<div class="form-group">
										<label for="name">Observaciones</label>
										<form:textarea id="observacionesA8" path="observacionesA8"
											class="form-control" rows="5" />
										<form:errors cssClass="error" path="observacionesA8" />
									</div>
									<!-- /Tab12 -->

									<div class="col-lg-12">&nbsp;</div>
									<div class="col-lg-12">&nbsp;</div>

									<!-- Tab12 -->
									<div class="col-lg-4">&nbsp;</div>
									<div class="col-lg-2">
										<security:authorize
											access="hasAnyRole('CIF1','CIF2','CIF3','CIF4')">
											<a href="encuesta/cif1/paginaCinco.do"
												class="btn btn-default" role="button">Paso anterior</a>
										</security:authorize>
										<security:authorize access="hasAnyRole('ADMIN')">
											<a
												href="encuesta/cif1/verPaginaCinco.do?tipoCIF1Id=${tipoCIF1Id}"
												class="btn btn-default" role="button">Paso anterior</a>
										</security:authorize>
									</div>
									<div class="col-lg-2">
										<button type="submit" class="btn btn-default" name="save">
											<div id="divCambiar">Siguiente paso</div>
										</button>
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
		function checkbox1() {

			check1 = document.getElementById("check1");
			check2 = document.getElementById("check2");

			if (check1.checked) {
				check2.checked = false;

			}
		}
		function checkbox2() {

			check1 = document.getElementById("check1");
			check2 = document.getElementById("check2");

			if (check2.checked) {
				check1.checked = false;

			}
		}
		function cambiar() {
			check2 = document.getElementById("check2");
			if (check2.checked) {
				document.getElementById('divCambiar').innerHTML = "Terminar encuesta";
			} else {
				document.getElementById('divCambiar').innerHTML = "Siguiente paso";
			}
		}
	</script>