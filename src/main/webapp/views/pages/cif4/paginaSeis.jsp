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
		<form:form action="${requestURI}" modelAttribute="formularioSeisForm"
			id="commentForm" onsubmit="return validate6()">
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
								Andaluc�a</b>
						</div>
						<div class="panel-body">
							<div class="alert alert-success">
								Se�ale los motivos que, durante <b>2014</b>, han llevado a su
								empresa a la incorporaci�n de eco-innovaciones o tecnolog�as
								ambientales <b>(m�ximo de tres)</b> y aquellos que suponen una
								limitaci�n a su introducci�n <b>(m�ximo de tres)</b>.
							</div>


							<div class="col-lg-12">
								<div class="form-group">
									<p>
										<b>8.1. Factores principales que motivan introducir
											eco-innovaciones o tecnolog�as ambientales:</b> (se�alar 3
										m�ximo)
									</p>
								</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Adaptaci�n a la legislaci�n ambiental</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check1" path="a811" onchange="checkbox1()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Impedir sanciones de la Administraci�n</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check2" path="a816" onchange="checkbox2()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Incremento de la rentabilidad, por ahorro y eficiencia
											en consumo de recursos</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check3" path="a812" onchange="checkbox3()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Obtenci�n de ayudas, subvenciones e incentivos fiscales</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check4" path="a817" onchange="checkbox4()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Rebajas en primas de seguros o acceso preferente a
											cr�ditos</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check5" path="a813" onchange="checkbox5()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Contrarrestar las innovaciones de la competencia</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check6" path="a818" onchange="checkbox6()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Incrementar la cuota de mercado</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check7" path="a814" onchange="checkbox7()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Mejorar la imagen corporativa de la empresa</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check8" path="a819" onchange="checkbox8()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Presi�n de determinados grupos (ecologistas,
											sindicatos, ONGs...)</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check9" path="a815" onchange="checkbox9()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Otro motivo (especificar)</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check10" path="a8110"
										onchange="checkbox10()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-6">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<form:textarea id="a8110otros" path="a8110otros"
											class="form-control" maxlength="250" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="form-group">
									<p>
										<b>8.2. Factores principales que limitan introducir
											eco-innovaciones o tecnolog�as ambientales:</b> (se�alar 3
										m�ximo)
									</p>
								</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Dificultad para adaptarse a la normativa ambiental</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check11" path="a821" onchange="checkbox11()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Elevado coste de inversi�n</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check12" path="a825" onchange="checkbox12()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Falta de informaci�n y formaci�n de la direcci�n</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check13" path="a822" onchange="checkbox13()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Dificultades t�cnicas</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check14" path="a826" onchange="checkbox14()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Falta de valoraci�n por parte del cliente/ consumidor</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check15" path="a823" onchange="checkbox15()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Escasos beneficios tangibles</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check16" path="a827" onchange="checkbox16()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Desconocimiento de demandas de movimientos ecologistas,
											sindicatos, ONGs</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check17" path="a824" onchange="checkbox17()" />
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<p>Otro motivo (especificar):</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check18" path="a828" onchange="checkbox18()" />
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-6">&nbsp;</div>
								<div class="col-lg-4">
									<div class="form-group">
										<form:textarea id="a828otros" path="a828otros"
											class="form-control" maxlength="250" />
									</div>
								</div>
								<div class="col-lg-2">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="form-group">
									<p>
										<b>8.3. �Cuenta con sistema de gesti�n medioambiental
											implantado?</b>
									</p>
								</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group">
										<p>Si</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="a831S" path="a831S"
										onchange="checkbox1()" />
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<p>No</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="a831N" path="a831N"
										onchange="checkbox2()" />
								</div>
								<div class="col-lg-5">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group">
										<p>
											<b>�Certificadas?</b>
										</p>
									</div>
								</div>
								<div class="col-lg-9">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group">
										<p>Por EMAS</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check21" path="a8311"
										onchange="checkbox3()" />
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<p>Por ISO 14.001</p>
									</div>
								</div>
								<div class="col-lg-1">
									<acme:checkbox id="check22" path="a8312"
										onchange="checkbox4()" />
								</div>
								<div class="col-lg-5">&nbsp;</div>
							</div>
							
							<div class="col-lg-12">&nbsp;</div>

							<div class="col-lg-12">
								<div class="form-group">
									<label for="name">Observaciones</label>
									<form:textarea id="observaciones" path="observaciones"
										class="form-control" rows="5" />
								</div>
							</div>
						<div class="col-lg-12" align="center">
						<h3 id="errorFactor" hidden="true" style="color: #d9534f">
									Si se ha realizado inversi�n en protecci�n ambiental durante el a�o 2014, debe existir alg�n factor que motive la introducci�n de eco-innovaciones o tecnolog�as ambientales.</h3>
						<h3 id="errorDesmarcadas" hidden="true" style="color: #d9534f">
									Seleccione Si o No.</h3>
									
						<h3 id="errorGestion" hidden="true" style="color: #d9534f">
									Seleccione una certificaci�n.</h3>
						
						</div>
							<div class="col-lg-12">&nbsp;</div>
							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF4')">
									<a href="encuesta/cif4/paginaCinco.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif4/verPaginaCinco.do?tipoCIF4Id=${tipoCIF4Id}"
										class="btn btn-default" role="button">Paso anterior</a>
								</security:authorize>
							</div>
							<div class="col-lg-2">
								<button type="submit" class="btn btn-default" name="save">
									<div>Siguiente paso</div>
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
		</form:form>
	</div>
	<!-- /.row -->

	
<script type="text/javascript">
	function validate6() {
		res=true;
		a51Si = "${a51Si}";
		var a831S = document.getElementById("a831S");
		var a831N = document.getElementById("a831N");
		var a8311 = document.getElementById("check21");
		var a8312 = document.getElementById("check22");
		if(a51Si=="true"){
			var reg1 = /a81./;
			var frm = document.getElementById("commentForm");
			var comprobacion = false;

			//suma poniendo 0
			for (i=0;i<frm.elements.length;i++)
			{
				if(frm.elements[i].name.match(reg1)){
					aux = frm.elements[i].checked;
					if(frm.elements[i].checked==true){
						comprobacion = true;
					}
					
				}

			}
			
			if(comprobacion==false){
				res=false;	
				errorFactor.hidden = false;

			} else {
				errorFactor.hidden = true;
			}

		}
		
		if ((a831S.checked == false && a831N.checked == false)) {
			errorDesmarcadas.hidden = false;
			res = false;
		} else {
			errorDesmarcadas.hidden = true;
		}
		
		if(a831S.checked == true && a8311.checked==false && a8312.checked==false){
			errorGestion.hidden = false;
			res = false;
		} else {
			errorGestion.hidden = true;
		}
		
		return res;
	}
	
	
	function checkbox1() {
		var a831S = document.getElementById("a831S");
		var a831N = document.getElementById("a831N");
		if (a831S.checked) {
			a831N.checked = false;
		}
	}
	
	function checkbox2() {
		var a831S = document.getElementById("a831S");
		var a831N = document.getElementById("a831N");
		if (a831N.checked) {
			a831S.checked = false;
		}
	}
	function checkbox3() {
		var a8311 = document.getElementById("check21");
		var a8312 = document.getElementById("check22");
		if (a8311.checked) {
			a8312.checked = false;
		}
	}

	function checkbox4() {
		var a8311 = document.getElementById("check21");
		var a8312 = document.getElementById("check22");
		if (a8312.checked) {
			a8311.checked = false;
		}
	}
</script>