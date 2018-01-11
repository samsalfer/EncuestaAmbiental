<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<body onload="checkbox2();">
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
						<b> A5. Operaciones de inversión en protección ambiental</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							Se debe contabilizar exclusivamente la inversión efectuada en el
							año <b>2014</b>, aunque el periodo de ejecución de dicha
							inversión sea superior al año.
						</div>
						<div class="row">


							<div class="col-lg-12">

								<div class="col-lg-4">
									<div class="form-group">
										<p>
											<b>5.1. ¿Se ha realizado alguna inversión en la empresa
												en el año 2014?</b>
										</p>
									</div>
								</div>
								<div class="col-lg-1">
									<div class="form-group input-group">
										Si
										<acme:checkbox id="check1" path="a51s" onchange="checkbox1();" />
									</div>
								</div>

								<div class="col-lg-1">
									<div class="form-group input-group">
										No
										<acme:checkbox id="check2" path="a51n" onchange="checkbox2();" />
									</div>
								</div>
								<div class="col-lg-6">&nbsp;</div>
							</div>
							<div class="col-lg-12" align="center">
								<h3 id="errorCheck" hidden="true" style="color: #d9534f">
									Seleccione si o no.</h3>
								
							</div>


							<div class="col-lg-12">
								<div class="col-lg-10">
									<div class="form-group">
										<p>
											<b>5.2. Equipos e instalaciones independientes</b>
											(tratamiento de la contaminación)
										</p>
									</div>
								</div>
							</div>

							<div class="col-lg-12">

								<div class="alert alert-success">
									<b>Equipos o instalaciones independientes</b> son aquellos que
									operan fuera del proceso de producción y están destinados a
									reducir la descarga de contaminantes originados durante dicho
									proceso. Consigne el valor del <b>incremento real de
										activos</b>, por compras de bienes de equipo o de activos
									inmateriales, por reparaciones efectuadas en los equipos
									existentes y/o por el coste de construcción de instalaciones
									realizadas por la empresa, incluyendo en este caso los costes
									relativos a diseño, montaje o compra de terreno necesario.
									Consigne asimismo el valor de las <b>disminuciones de
										activos</b>, por ventas o cesiones de equipos o de activos
									inmateriales. Véase definiciones y ejemplo en <a href="front/anexo4.pdf" target="_blank"><b>Anexo</b></a>.
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
										<p>5.2.1. Equipos e instalaciones para el tratamiento y/o
											control de emisiones contaminantes al aire</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5211" type="number" path="a5211"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5212" type="number" path="a5212"
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
										<p>5.2.2. Equipos e instalaciones para el control y/o
											medición de ruidos y vibraciones</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5221" type="number" path="a5221"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5222" type="number" path="a5222"
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
											<b>Protección de recursos hídricos y descontaminación de
												espacios:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.2.3. Equipos e instalaciones para el almacenamiento,
											transporte, tratamiento y/o control de las aguas residuales</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5231" type="number" path="a5231"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5232" type="number" path="a5232"
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
										<p>5.2.4 Equipos e instalaciones para la descontaminación
											de suelos, aguas subterráneas o cursos de aguas superficiales</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5241" type="number" path="a5241"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5242" type="number" path="a5242"
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
										<p>5.2.5. Equipos e instalaciones para el almacenamiento,
											transporte y/o tratamiento de los residuos por cuenta propia</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5251" type="number" path="a5251"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5252" type="number" path="a5252"
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
										<p>5.2.6. Equipos para la producción de energías
											renovables para consumo interno</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5261" type="number" path="a5261"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5262" type="number" path="a5262"
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
											<b>Protección de espacios y recursos naturales:</b>
										</p>
									</div>
								</div>
								<div class="col-lg-7">&nbsp;</div>
							</div>

							<div class="col-lg-12">
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-5">
									<div class="form-group">
										<p>5.2.7. Equipos para la protección y recuperación de la
											biodiversidad y los paisajes, incluida la reforestación</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5271" type="number" path="a5271"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5272" type="number" path="a5272"
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
										<p>5.2.8. Equipos e instalaciones independientes para el
											desarrollo de actividades de formación, comunicación, I+D,
											etc. (especificar):</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5281" type="number" path="a5281"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5282" type="number" path="a5282"
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
										<form:textarea id="a528otros1" path="a528otros1"
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
										<p>5.2.9. Equipos para el control y la medición del consumo de calor y electricidad</p>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5291" type="number" path="a5291"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
								<div class="col-lg-2">
									<div class="form-group input-group">
										<form:input id="a5292" type="number" path="a5292"
											class="form-control" />
										<span class="input-group-addon">&#8364</span>
									</div>
								</div>
								<div class="col-lg-1">&nbsp;</div>
							</div>
							<!--xxx-->

							<div class="col-lg-12" align="center">
								<h3 id="errorSuma" hidden="true" style="color: #d9534f">
									Al responder SI a la realización de inversión en el establecimiento en protección ambiental, debe existir algún valor para la adquisición y grandes mejoras en alguno de los ámbitos y actividades de protección ambiental</h3>
								
							</div>













							<div class="col-lg-12">&nbsp;</div>
							<div class="col-lg-12">&nbsp;</div>


							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF4')">
									<a href="encuesta/cif4/paginaDos.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif4/verPaginaDos.do?tipoCIF4Id=${tipoCIF4Id}"
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

<script>

function validate3(){
	
	
	res = comprobacion();
	
	return res;
}

function comprobacion(){
	res=true;
	
	check1 = document.getElementById("check1");
	check2 = document.getElementById("check2");
	
	//hago comprobacion de que esta bien cumplimentados los checkbox.
	if (check1.checked == false && check2.checked == false) {
		errorCheck.hidden = false;
		res = false;
		check1.focus();
	} else {
		errorCheck.hidden = true;
	}

	var reg1 = /a52.1/;
	var frm = document.getElementById("commentForm");
	var suma = 0;
	
	//pongo los vacios a 0 para que funcione la suma
	
		for (i=0;i<frm.elements.length;i++)
		{
			if(frm.elements[i].name.match(reg1)){
				if(frm.elements[i].value.length==0){
					frm.elements[i].value=0;
				}
				
			}
		

		}
	
	//suma
	for (i=0;i<frm.elements.length;i++)
	{
		if(frm.elements[i].name.match(reg1)){
			suma+=parseFloat(frm.elements[i].value);
		}
	

	}
	
// 	if(parseFloat(suma) <= 0.0 && check1.checked==true ){
// 		res=false;
// 		errorSuma.hidden = false;
// 	}
// 	else{
// 		errorSuma.hidden = true;
// 	}
	
	return res;
	
}

////////////////////////////CHEBOX!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function checkbox1() {

	check1 = document.getElementById("check1");
	check2 = document.getElementById("check2");

	
	var reg1 = /a52../;
	var frm = document.getElementById("commentForm");
	
	if (check1.checked) {
		check2.checked = false;
		for (i=0;i<frm.elements.length;i++)
		{
			if(frm.elements[i].name.match(reg1)){
				frm.elements[i].readOnly=false;
			}
		

		}
	}
}
function checkbox2() {

	check1 = document.getElementById("check1");
	check2 = document.getElementById("check2");
	var reg1 = /a52../;
	var frm = document.getElementById("commentForm");
	
	if (check2.checked) {
		check1.checked = false;


		for (i=0;i<frm.elements.length;i++)
		{
			if(frm.elements[i].name.match(reg1)){
				frm.elements[i].value="0";
				frm.elements[i].readOnly="true";
			}
		

		}
	}
	else{
		for (i=0;i<frm.elements.length;i++)
		{
			if(frm.elements[i].name.match(reg1)){
				frm.elements[i].readOnly=false;
			}
		

		}
	}
}
</script>


