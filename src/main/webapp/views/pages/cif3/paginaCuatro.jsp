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
					Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (4/4)</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">

					<div class="panel-body">

						<div class="col-lg-12">&nbsp;</div>

						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="form-group">
								<label>3.3.1. Empleo en actividades ambientales
									desagregado por categor�a profesional:</label>
								<div class="alert alert-success">Se han agrupado las
									categor�as profesionales atendiendo a los grupos de cotizaci�n
									del R�gimen General de la Seguridad Social para contingencias
									comunes.</div>
							</div>

						</div>
						<!-- /Tab12 -->

						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-8">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>N�mero de personas ocupadas</b>
									</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
						</div>
						<!-- /Tab12 -->

						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>Grupo de cotizaci�n de la Seguridad Social</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>Categor�a profesional</b>
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

						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>1</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">Ingenieros y licenciados</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3311" path="a3311"
										class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3312" path="a3312"
										class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3313" path="a3313"
										class="form-control" />
									<p id="errorSuma5" hidden="true" style="color: #d9534f">Suma
										incorrecta</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
						</div>
						<!-- /Tab12 -->
						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>2</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">Ingenieros t�cnicos, peritos y ayudantes
										titulados</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3314" path="a3314"
										class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3315" path="a3315"
										class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3316" path="a3316"
										class="form-control" />
									<p id="errorSuma6" hidden="true" style="color: #d9534f">Suma
										incorrecta</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
						</div>
						<!-- /Tab12 -->
						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>3-5</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">Jefes administrativos y de taller y
										oficiales administrativos</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3317" path="a3317" class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3318" path="a3318" class="form-control" />
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a3319" path="a3319" class="form-control" />
									<p id="errorSuma7" hidden="true" style="color: #d9534f">Suma
										incorrecta</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
						</div>
						<!-- /Tab12 -->
						<!-- Tab12 -->
						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">
										<b>4-6-7-8-9-10-11</b>
									</p>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<p align="center">Auxiliares administrativos, oficiales,
										subalternos, ayudantes no titulados, peones y trabajadores
										menos de 18 a�os</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a33110" path="a33110"
										class="form-control" />
									<p id="errorDesagregados1" hidden="true" style="color: #d9534f">Total
										hombres no coinciden</p>
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a33111" path="a33111"
										class="form-control" />
									<p id="errorDesagregados2" hidden="true" style="color: #d9534f">Total
										mujeres no coinciden</p>
								</div>
							</div>
							<div class="col-lg-1">
								<div class="form-group">
									<form:input id="a33112" path="a33112"
										class="form-control" />
									<p id="errorSuma8" hidden="true" style="color: #d9534f">Suma
										incorrecta</p>
									<p id="errorDesagregados3" hidden="true" style="color: #d9534f">Total
										no coinciden</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
						</div>
						<!-- /Tab12 -->


							<div class="col-lg-12" align="center">
								<h3 id="errorHombres" hidden="true" style="color: #d9534f">
									La suma total de hombres debe ser igual a los hombres ocupados en actividades ambientales.</h3>
								<h3 id="errorMujeres" hidden="true" style="color: #d9534f">
									La suma total de mujeres debe ser igual a las mujeres ocupadas en actividades ambientales.</h3>
								<h3 id="errorTotal" hidden="true" style="color: #d9534f">
									La suma total debe ser igual al total ocupado en actividades ambientales.</h3>
							
							</div>
						<div class="col-lg-12">&nbsp;</div>

						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="form-group">
								<label>3.3.2. Perspectivas de creaci�n de empleo
									ambiental a corto y largo plazo:</label>
								<div class="alert alert-success">Se entiende por corto
									plazo el periodo de tiempo inferior a un a�o. A partir del a�o
									hablamos de perspectivas de creaci�n de puestos de trabajo a
									medio y largo plazo.</div>
							</div>

						</div>
						<!-- /Tab12 -->

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
								<p>Hay en la entidad perspectivas de creaci�n de puestos de trabajo, vinculados a la
actividad ambiental que desarrolla, a corto plazo</p>
							</div>
							<div class="col-lg-1">
								<acme:checkbox id="check1" path="a3321S" onchange="checkbox1();"/>
							</div>
							<div class="col-lg-1">
								<acme:checkbox id="check2" path="a3321N" onchange="checkbox2();"/>
							</div>
							<div class="col-lg-1">&nbsp;</div>

						</div>
						<!-- /Tab12 -->
						
						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-7">
								<p>Hay en la entidad perspectivas de creaci�n de puestos de trabajo, vinculados a la
actividad ambiental que desarrolla, a medio y largo plazo</p>
							</div>
							<div class="col-lg-1">
								<acme:checkbox id="check3" path="a3322S" onchange="checkbox3();"/>
							</div>
							<div class="col-lg-1">
								<acme:checkbox id="check4" path="a3322N" onchange="checkbox4();"/>
							</div>
							<div class="col-lg-1">&nbsp;</div>

						</div>
						<!-- /Tab12 -->
							<div class="col-lg-12" align="center">
								<h3 id="errorCheck" hidden="true" style="color: #d9534f">
									Seleccione si o no.</h3>
								
							</div>
						<div class="col-lg-12">&nbsp;</div>

						<!-- Tab12 -->
						<div class="col-lg-12">
							<div class="form-group">
								<label for="name">Observaciones</label>
								<form:textarea id="observaciones" path="observaciones"
									class="form-control" rows="5" />
								<form:errors cssClass="error" path="observaciones" />
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>


							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF3')">
									<a href="encuesta/cif3/paginaTres.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif3/verPaginaTres.do?tipoCIF3Id=${tipoCIF3Id}"
										class="btn btn-default" role="button">Paso anterior</a>
								</security:authorize>
							</div>
							<div class="col-lg-2">
								<button type="submit" class="btn btn-default" name="save">Terminar encuesta</button>
							</div>
							<div class="col-lg-4">&nbsp;</div>
							<!-- /Tab12 -->




						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				
				</div>
				
				</div>
				<!-- /.panel -->
			<!-- /.col-lg-12 -->
	</form:form>
</div>
<!-- /.row -->
<script type="text/javascript">
function validate4(){
	res = sumas();
	resTotal = res;
	return resTotal;
}

function sumas(){
	res=true;

	observaciones = document.getElementById("observaciones");
	check1 = document.getElementById("check1");
	check2 = document.getElementById("check2");
	check3 = document.getElementById("check3");
	check4 = document.getElementById("check4");
	
	
	a3311 = document.getElementById("a3311");
	a3312 = document.getElementById("a3312");
	a3313 = document.getElementById("a3313");
	a3314 = document.getElementById("a3314");
	a3315 = document.getElementById("a3315");
	a3316 = document.getElementById("a3316");
	a3317 = document.getElementById("a3317");
	a3318 = document.getElementById("a3318");
	a3319 = document.getElementById("a3319");
	a33110 = document.getElementById("a33110");
	a33111 = document.getElementById("a33111");
	a33112 = document.getElementById("a33112");
	
	
	hombresOcupados = "${hombresOcupados}";
	mujeresOcupados = "${mujeresOcupados}";
	totalOcupados = "${totalOcupados}";	
	
//ponemos a 0 todos los atributos para que no falle al hacer las sumas.
	
	
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i++)
	{
		if(frm.elements[i].value.length==0){
			frm.elements[i].value=0;
		}
	}
	if(observaciones.value==0){
		observaciones.value="";
	}
	
	// comprobacion suma por fila
	var aux=0;
	var totalHombres=0;
	var totalMujeres=0;
	var totalTotal=0;
	var reg = /a331./;
	var frm = document.getElementById("commentForm");
	for (i=0;i<frm.elements.length;i=i+3)
	{
		if(frm.elements[i].name.match(reg)){
			aux+=parseInt(frm.elements[i-2].value);
			totalHombres+=parseInt(frm.elements[i-2].value);
			
			aux+=parseInt(frm.elements[i-1].value);	
			totalMujeres+=parseInt(frm.elements[i-1].value);	
			
			totalTotal+=parseInt(frm.elements[i].value);
			if(frm.elements[i].value!=aux){
				frm.elements[i].setAttribute('type', 'creditcard');
			}
			else{
				frm.elements[i].setAttribute('type', 'number');
			}
			aux=0;
			
		}


	}
	
	if ((check1.checked == false && check2.checked == false) || 
			 (check3.checked == false && check4.checked == false)) {
		errorCheck.hidden = false;
		res = false;
	} else {
		errorCheck.hidden = true;
	}
	
	
	//Compruebo que son igual que el numero de la pagina anterior.
	if (hombresOcupados != totalHombres && hombresOcupados!=0){
		
		res = false;
		errorHombres.hidden = false;
		a33110.focus();
	}
	else{
		errorHombres.hidden = true;
	}
	
	if (mujeresOcupados != totalMujeres && mujeresOcupados!=0){
		
		res = false;
		errorMujeres.hidden = false;
		a33111.focus();
	}
	else{
		errorMujeres.hidden = true;
	}
	
	if (totalOcupados != totalTotal && totalOcupados!=0){
		
		res = false;
		errorTotal.hidden = false;
		a33112.focus();
	}
	else{
		errorTotal.hidden = true;
	}
	
	return res;

}




/////////////////////////////////////////////////////checkbox &&&&&&&&&&&&&&&
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
function checkbox3() {

	check3 = document.getElementById("check3");
	check4 = document.getElementById("check4");

	if (check3.checked) {
		check4.checked = false;

	}
}
function checkbox4() {

	check3 = document.getElementById("check3");
	check4 = document.getElementById("check4");

	if (check4.checked) {
		check3.checked = false;

	}
}
</script>

