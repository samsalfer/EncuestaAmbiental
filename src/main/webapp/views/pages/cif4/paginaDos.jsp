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
					Econ&oacutemica y Medio Ambiente en Andaluc&iacutea 2014 (2/6)</h1>
				<ul class="errorMessages"></ul>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>A3. Actividad económica principal de la empresa en
							Andalucía</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							La actividad econ&oacutemica principal es la que genera mayor
							valor añadido o, en su defecto, mayor cifra de negocios, o bien,
							a la que se dedica mayor n&uacute;mero de personal ocupado,
							siempre atendiendo a la actividad que la <b>empresa a la que
								se dirige el cuestionario desarrolla en Andaluc&iacutea</b>.
						</div>
						<div class="row">
							<!-- Tab12 -->
							<div class="col-lg-10">
								<div class="form-group">
									<label for="name">3.1 Descripción</label>
									<form:textarea id="descripcionEconomica" path="a31"
										class="form-control" required="true" maxlength="250" />
								</div>
							</div>


							<div class="col-lg-2">
								<div class="form-group">
									<label>CNAE-2009 <a data-toggle="modal"
										data-target="#myModal">(Ver tabla de cnae)</a></label>
									<form:select id="cnae1" path="a31c" class="form-control">
										<form:options items="${cnaes}" itemLabel="cnae"
											itemValue="cnae" />
									</form:select>
									<p id="errorCnae1" hidden="true" style="color: #d9534f">Seleccione
										un código CNAE</p>
								</div>
							</div>
							<!-- /Tab12 -->

							<div class="col-lg-12">&nbsp;</div>


							<!-- Tab12 -->
							<div class="col-lg-12">
								<div class="form-group">
									<label for="name">3.2 Principales productos:</label>
									<div class="alert alert-success">Indique, por orden de
										importancia, los principales productos resultantes de su
										actividad principal.</div>
									<div class="col-lg-12">
										<div class="col-lg-1 col-md-1 col-xs-1" align="right">
											1.</div>
										<div class="col-lg-11 col-md-11 col-xs-11">
											<form:input id="principalProducto1" path="a321"
												class="form-control" required="true" />
										</div>
									</div>
									<div class="col-lg-12">&nbsp;</div>
									<div class="col-lg-12">
										<div class="col-lg-1 col-md-1 col-xs-1" align="right">
											2.</div>
										<div class="col-lg-11 col-md-11 col-xs-11">
											<form:input id="principalProducto2" path="a322"
												class="form-control" />
										</div>
									</div>
								</div>
							</div>
							<!-- /Tab12 -->

							




						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		
		<div class="col-lg-12">&nbsp;</div>



		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>A4. Información económica</b>
					</div>
					<div class="panel-body">

						<div class="alert alert-success">
							En este apartado se requieren los datos para el <b>total de
								los establecimientos con actividad económica en Andalucía</b> sobre
							facturación total y gasto total efectuados en <b>2014</b>. La <b>facturación</b>
							se refiere a la venta de bienes y servicios y los <b>gastos</b> a
							la suma total de gastos de capital y gastos corrientes.
						</div>

						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-2">&nbsp;</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-2">
								<div class="form-group" align="center">
									<p>
										<b>Facturación</b>
									</p>
								</div>
							</div>
							<div class="col-lg-1">&nbsp;</div>
							<div class="col-lg-2">
								<div class="form-group" align="center">
									<p>
										<b>Gastos</b>
									</p>
								</div>
							</div>

							<div class="col-lg-3">&nbsp;</div>




						</div>


						<div class="col-lg-12">

							<div class="col-lg-1">&nbsp;</div>

							<div class="col-lg-2">
								<div class="form-group">
									<p>
										<b>4.1 Resultados totales</b>
									</p>
								</div>
							</div>

							<div class="col-lg-1">&nbsp;</div>

							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="facturacionTotal" required="true" min="1" type="number" path="a411"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>

							<div class="col-lg-1">&nbsp;</div>

							<div class="col-lg-2">
								<div class="form-group input-group">
									<form:input id="gastoTotal" type="number" required="true" min="1" path="a412"
										class="form-control" />
									<span class="input-group-addon">&#8364</span>
								</div>
							</div>

							<div class="col-lg-3">&nbsp;</div>
						</div>
						
						<div class="col-lg-12">&nbsp;</div>
							<div class="col-lg-12">&nbsp;</div>

							<!-- Tab12 -->
							<div class="col-lg-4">&nbsp;</div>
							<div class="col-lg-2">
								<security:authorize access="hasAnyRole('CIF4')">
									<a href="encuesta/cif4/paginaUno.do" class="btn btn-default"
										role="button">Paso anterior</a>
								</security:authorize>
								<security:authorize access="hasAnyRole('ADMIN')">
									<a
										href="encuesta/cif4/verPaginaUno.do?tipoCIF4Id=${tipoCIF4Id}"
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





		<!-- /.row -->

	</form:form>
</div>


<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Códigos de CNAE 2009</h4>
			</div>
			<div class="modal-body">

				<div class="input-group">
					<span class="input-group-addon">Buscar</span> <input id="filter"
						type="text" class="form-control"
						placeholder="Escribe para buscar..">
				</div>
				<table class="table table-striped">

					<tbody class="searchable">


						<tr>
							<td>011 Cultivos no perennes</td>
						</tr>
						<tr>
							<td>0111 Cultivo de cereales (excepto arroz), leguminosas y
								semillas oleaginosas</td>
						</tr>
						<tr>
							<td>0112 Cultivo de arroz</td>
						</tr>
						<tr>
							<td>0113 Cultivo de hortalizas, raíces y tubérculos</td>
						</tr>
						<tr>
							<td>0114 Cultivo de caña de azúcar</td>
						</tr>
						<tr>
							<td>0115 Cultivo de tabaco</td>
						</tr>
						<tr>
							<td>0116 Cultivo de plantas para fibras textiles</td>
						</tr>
						<tr>
							<td>0119 Otros cultivos no perennes</td>
						</tr>
						<tr>
							<td>012 Cultivos perennes</td>
						</tr>
						<tr>
							<td>0121 Cultivo de la vid</td>
						</tr>
						<tr>
							<td>0122 Cultivo de frutos tropicales y subtropicales</td>
						</tr>
						<tr>
							<td>0123 Cultivo de cítricos</td>
						</tr>
						<tr>
							<td>0124 Cultivo de frutos con hueso y pepitas</td>
						</tr>
						<tr>
							<td>0125 Cultivo de otros árboles y arbustos frutales y
								frutos secos</td>
						</tr>
						<tr>
							<td>0126 Cultivo de frutos oleaginosos</td>
						</tr>
						<tr>
							<td>0127 Cultivo de plantas para bebidas</td>
						</tr>
						<tr>
							<td>0128 Cultivo de especias, plantas aromáticas,
								medicinales y farmacéuticas</td>
						</tr>
						<tr>
							<td>0129 Otros cultivos perennes</td>
						</tr>
						<tr>
							<td>013 Propagación de plantas</td>
						</tr>
						<tr>
							<td>0130 Propagación de plantas</td>
						</tr>
						<tr>
							<td>014 Producción ganadera</td>
						</tr>
						<tr>
							<td>0141 Explotación de ganado bovino para la producción de
								leche</td>
						</tr>
						<tr>
							<td>0142 Explotación de otro ganado bovino y búfalos</td>
						</tr>
						<tr>
							<td>0143 Explotación de caballos y otros equinos</td>
						</tr>
						<tr>
							<td>0144 Explotación de camellos y otros camélidos</td>
						</tr>
						<tr>
							<td>0145 Explotación de ganado ovino y caprino</td>
						</tr>
						<tr>
							<td>0146 Explotación de ganado porcino</td>
						</tr>
						<tr>
							<td>0147 Avicultura</td>
						</tr>
						<tr>
							<td>0149 Otras explotaciones de ganado</td>
						</tr>
						<tr>
							<td>015 Producción agrícola combinada con la producción
								ganadera</td>
						</tr>
						<tr>
							<td>0150 Producción agrícola combinada con la producción
								ganadera</td>
						</tr>
						<tr>
							<td>016 Actividades de apoyo a la agricultura, a la
								ganadería y de preparación posterior a la cosecha</td>
						</tr>
						<tr>
							<td>0161 Actividades de apoyo a la agricultura</td>
						</tr>
						<tr>
							<td>0162 Actividades de apoyo a la ganadería</td>
						</tr>
						<tr>
							<td>0163 Actividades de preparación posterior a la cosecha</td>
						</tr>
						<tr>
							<td>0164 Tratamiento de semillas para reproducción</td>
						</tr>
						<tr>
							<td>017 Caza, captura de animales y servicios relacionados
								con las mismas</td>
						</tr>
						<tr>
							<td>0170 Caza, captura de animales y servicios relacionados
								con las mismas</td>
						</tr>
						<tr>
							<td>02 Silvicultura y explotación forestal</td>
						</tr>
						<tr>
							<td>021 Silvicultura y otras actividades forestales</td>
						</tr>
						<tr>
							<td>0210 Silvicultura y otras actividades forestales</td>
						</tr>
						<tr>
							<td>022 Explotación de la madera</td>
						</tr>
						<tr>
							<td>0220 Explotación de la madera</td>
						</tr>
						<tr>
							<td>023 Recolección de productos silvestres, excepto madera</td>
						</tr>
						<tr>
							<td>0230 Recolección de productos silvestres, excepto madera</td>
						</tr>
						<tr>
							<td>024 Servicios de apoyo a la silvicultura</td>
						</tr>
						<tr>
							<td>0240 Servicios de apoyo a la silvicultura</td>
						</tr>
						<tr>
							<td>03 Pesca y acuicultura</td>
						</tr>
						<tr>
							<td>031 Pesca</td>
						</tr>
						<tr>
							<td>0311 Pesca marina</td>
						</tr>
						<tr>
							<td>0312 Pesca en agua dulce</td>
						</tr>
						<tr>
							<td>032 Acuicultura</td>
						</tr>
						<tr>
							<td>0321 Acuicultura marina</td>
						</tr>
						<tr>
							<td>0322 Acuicultura en agua dulce</td>
						</tr>
						<tr>
							<td>05 Extracción de antracita, hulla y lignito</td>
						</tr>
						<tr>
							<td>051 Extracción de antracita y hulla</td>
						</tr>
						<tr>
							<td>0510 Extracción de antracita y hulla</td>
						</tr>
						<tr>
							<td>052 Extracción de lignito</td>
						</tr>
						<tr>
							<td>0520 Extracción de lignito</td>
						</tr>
						<tr>
							<td>06 Extracción de crudo de petróleo y gas natural</td>
						</tr>
						<tr>
							<td>061 Extracción de crudo de petróleo</td>
						</tr>
						<tr>
							<td>0610 Extracción de crudo de petróleo</td>
						</tr>
						<tr>
							<td>062 Extracción de gas natural</td>
						</tr>
						<tr>
							<td>0620 Extracción de gas natural</td>
						</tr>
						<tr>
							<td>07 Extracción de minerales metálicos</td>
						</tr>
						<tr>
							<td>071 Extracción de minerales de hierro</td>
						</tr>
						<tr>
							<td>0710 Extracción de minerales de hierro</td>
						</tr>
						<tr>
							<td>072 Extracción de minerales metálicos no férreos</td>
						</tr>
						<tr>
							<td>0721 Extracción de minerales de uranio y torio</td>
						</tr>
						<tr>
							<td>0729 Extracción de otros minerales metálicos no férreos</td>
						</tr>
						<tr>
							<td>08 Otras industrias extractivas</td>
						</tr>
						<tr>
							<td>081 Extracción de piedra, arena y arcilla</td>
						</tr>
						<tr>
							<td>0811 Extracción de piedra ornamental y para la
								construcción, piedra caliza, yeso, creta y pizarra</td>
						</tr>
						<tr>
							<td>0812 Extracción de gravas y arenas; extracción de
								arcilla y caolín</td>
						</tr>
						<tr>
							<td>089 Industrias extractivas n.c.o.p.</td>
						</tr>
						<tr>
							<td>0891 Extracción de minerales para productos químicos y
								fertilizantes</td>
						</tr>
						<tr>
							<td>0892 Extracción de turba</td>
						</tr>
						<tr>
							<td>0893 Extracción de sal</td>
						</tr>
						<tr>
							<td>0899 Otras industrias extractivas n.c.o.p.</td>
						</tr>
						<tr>
							<td>09 Actividades de apoyo a las industrias extractivas</td>
						</tr>
						<tr>
							<td>091 Actividades de apoyo a la extracción de petróleo y
								gas natural</td>
						</tr>
						<tr>
							<td>0910 Actividades de apoyo a la extracción de petróleo y
								gas natural</td>
						</tr>
						<tr>
							<td>099 Actividades de apoyo a otras industrias extractivas</td>
						</tr>
						<tr>
							<td>0990 Actividades de apoyo a otras industrias extractivas</td>
						</tr>
						<tr>
							<td>10 Industria de la alimentación</td>
						</tr>
						<tr>
							<td>101 Procesado y conservación de carne y elaboración de
								productos cárnicos</td>
						</tr>
						<tr>
							<td>1011 Procesado y conservación de carne</td>
						</tr>
						<tr>
							<td>1012 Procesado y conservación de volatería</td>
						</tr>
						<tr>
							<td>1013 Elaboración de productos cárnicos y de volatería</td>
						</tr>
						<tr>
							<td>102 Procesado y conservación de pescados, crustáceos y
								moluscos</td>
						</tr>
						<tr>
							<td>1021 Procesado de pescados, crustáceos y moluscos</td>
						</tr>
						<tr>
							<td>1022 Fabricación de conservas de pescado</td>
						</tr>
						<tr>
							<td>103 Procesado y conservación de frutas y hortalizas</td>
						</tr>
						<tr>
							<td>1031 Procesado y conservación de patatas</td>
						</tr>
						<tr>
							<td>1032 Elaboración de zumos de frutas y hortalizas</td>
						</tr>
						<tr>
							<td>1039 Otro procesado y conservación de frutas y
								hortalizas</td>
						</tr>
						<tr>
							<td>104 Fabricación de aceites y grasas vegetales y animales</td>
						</tr>
						<tr>
							<td>1042 Fabricación de margarina y grasas comestibles
								similares</td>
						</tr>
						<tr>
							<td>1043 Fabricación de aceite de oliva</td>
						</tr>
						<tr>
							<td>1044 Fabricación de otros aceites y grasas</td>
						</tr>
						<tr>
							<td>105 Fabricación de productos lácteos</td>
						</tr>
						<tr>
							<td>1052 Elaboración de helados</td>
						</tr>
						<tr>
							<td>1053 Fabricación de quesos</td>
						</tr>
						<tr>
							<td>1054 Preparación de leche y otros productos lácteos</td>
						</tr>
						<tr>
							<td>106 Fabricación de productos de molinería, almidones y
								productos amiláceos</td>
						</tr>
						<tr>
							<td>1061 Fabricación de productos de molinería</td>
						</tr>
						<tr>
							<td>1062 Fabricación de almidones y productos amiláceos</td>
						</tr>
						<tr>
							<td>107 Fabricación de productos de panadería y pastas
								alimenticias</td>
						</tr>
						<tr>
							<td>1071 Fabricación de pan y de productos frescos de
								panadería y pastelería</td>
						</tr>
						<tr>
							<td>1072 Fabricación de galletas y productos de panadería y
								pastelería de larga duración</td>
						</tr>
						<tr>
							<td>1073 Fabricación de pastas alimenticias, cuscús y
								productos similares</td>
						</tr>
						<tr>
							<td>108 Fabricación de otros productos alimenticios</td>
						</tr>
						<tr>
							<td>1081 Fabricación de azúcar</td>
						</tr>
						<tr>
							<td>1082 Fabricación de cacao, chocolate y productos de
								confitería</td>
						</tr>
						<tr>
							<td>1083 Elaboración de café, té e infusiones</td>
						</tr>
						<tr>
							<td>1084 Elaboración de especias, salsas y condimentos</td>
						</tr>
						<tr>
							<td>1085 Elaboración de platos y comidas preparados</td>
						</tr>
						<tr>
							<td>1086 Elaboración de preparados alimenticios
								homogeneizados y alimentos dietéticos</td>
						</tr>
						<tr>
							<td>1089 Elaboración de otros productos alimenticios
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>109 Fabricación de productos para la alimentación animal</td>
						</tr>
						<tr>
							<td>1091 Fabricación de productos para la alimentación de
								animales de granja</td>
						</tr>
						<tr>
							<td>1092 Fabricación de productos para la alimentación de
								animales de compañía</td>
						</tr>
						<tr>
							<td>11 Fabricación de bebidas</td>
						</tr>
						<tr>
							<td>110 Fabricación de bebidas</td>
						</tr>
						<tr>
							<td>1101 Destilación, rectificación y mezcla de bebidas
								alcohólicas</td>
						</tr>
						<tr>
							<td>1102 Elaboración de vinos</td>
						</tr>
						<tr>
							<td>1103 Elaboración de sidra y otras bebidas fermentadas a
								partir de frutas</td>
						</tr>
						<tr>
							<td>1104 Elaboración de otras bebidas no destiladas,
								procedentes de la fermentación</td>
						</tr>
						<tr>
							<td>1105 Fabricación de cerveza</td>
						</tr>
						<tr>
							<td>1106 Fabricación de malta</td>
						</tr>
						<tr>
							<td>1107 Fabricación de bebidas no alcohólicas; producción
								de aguas minerales y otras aguas embotelladas</td>
						</tr>
						<tr>
							<td>12 Industria del tabaco</td>
						</tr>
						<tr>
							<td>120 Industria del tabaco</td>
						</tr>
						<tr>
							<td>1200 Industria del tabaco</td>
						</tr>
						<tr>
							<td>13 Industria textil</td>
						</tr>
						<tr>
							<td>131 Preparación e hilado de fibras textiles</td>
						</tr>
						<tr>
							<td>1310 Preparación e hilado de fibras textiles</td>
						</tr>
						<tr>
							<td>132 Fabricación de tejidos textiles</td>
						</tr>
						<tr>
							<td>1320 Fabricación de tejidos textiles</td>
						</tr>
						<tr>
							<td>133 Acabado de textiles</td>
						</tr>
						<tr>
							<td>1330 Acabado de textiles</td>
						</tr>
						<tr>
							<td>139 Fabricación de otros productos textiles</td>
						</tr>
						<tr>
							<td>1391 Fabricación de tejidos de punto</td>
						</tr>
						<tr>
							<td>1392 Fabricación de artículos confeccionados con
								textiles, excepto prendas de vestir</td>
						</tr>
						<tr>
							<td>1393 Fabricación de alfombras y moquetas</td>
						</tr>
						<tr>
							<td>1394 Fabricación de cuerdas, cordeles, bramantes y redes</td>
						</tr>
						<tr>
							<td>1395 Fabricación de telas no tejidas y artículos
								confeccionados con ellas, excepto prendas de vestir</td>
						</tr>
						<tr>
							<td>1396 Fabricación de otros productos textiles de uso
								técnico e industrial</td>
						</tr>
						<tr>
							<td>1399 Fabricación de otros productos textiles n.c.o.p.</td>
						</tr>
						<tr>
							<td>14 Confección de prendas de vestir</td>
						</tr>
						<tr>
							<td>141 Confección de prendas de vestir, excepto de
								peletería</td>
						</tr>
						<tr>
							<td>1411 Confección de prendas de vestir de cuero</td>
						</tr>
						<tr>
							<td>1412 Confección de ropa de trabajo</td>
						</tr>
						<tr>
							<td>1413 Confección de otras prendas de vestir exteriores</td>
						</tr>
						<tr>
							<td>1414 Confección de ropa interior</td>
						</tr>
						<tr>
							<td>1419 Confección de otras prendas de vestir y accesorios</td>
						</tr>
						<tr>
							<td>142 Fabricación de artículos de peletería</td>
						</tr>
						<tr>
							<td>1420 Fabricación de artículos de peletería</td>
						</tr>
						<tr>
							<td>143 Confección de prendas de vestir de punto</td>
						</tr>
						<tr>
							<td>1431 Confección de calcetería</td>
						</tr>
						<tr>
							<td>1439 Confección de otras prendas de vestir de punto</td>
						</tr>
						<tr>
							<td>15 Industria del cuero y del calzado</td>
						</tr>
						<tr>
							<td>151 Preparación, curtido y acabado del cuero;
								fabricación de artículos de marroquinería, viaje y de
								guarnicionería y talabartería; preparación y teñido de pieles</td>
						</tr>
						<tr>
							<td>1511 Preparación, curtido y acabado del cuero;
								preparación y teñido de pieles</td>
						</tr>
						<tr>
							<td>1512 Fabricación de artículos de marroquinería, viaje y
								de guarnicionería y talabartería</td>
						</tr>
						<tr>
							<td>152 Fabricación de calzado</td>
						</tr>
						<tr>
							<td>1520 Fabricación de calzado</td>
						</tr>
						<tr>
							<td>16 Industria de la madera y del corcho, excepto muebles;
								cestería y espartería</td>
						</tr>
						<tr>
							<td>161 Aserrado y cepillado de la madera</td>
						</tr>
						<tr>
							<td>1610 Aserrado y cepillado de la madera</td>
						</tr>
						<tr>
							<td>162 Fabricación de productos de madera, corcho, cestería
								y espartería</td>
						</tr>
						<tr>
							<td>1621 Fabricación de chapas y tableros de madera</td>
						</tr>
						<tr>
							<td>1622 Fabricación de suelos de madera ensamblados</td>
						</tr>
						<tr>
							<td>1623 Fabricación de otras estructuras de madera y piezas
								de carpintería y ebanistería para la construcción</td>
						</tr>
						<tr>
							<td>1624 Fabricación de envases y embalajes de madera</td>
						</tr>
						<tr>
							<td>1629 Fabricación de otros productos de madera; artículos
								de corcho, cestería y espartería</td>
						</tr>
						<tr>
							<td>17 Industria del papel</td>
						</tr>
						<tr>
							<td>171 Fabricación de pasta papelera, papel y cartón</td>
						</tr>
						<tr>
							<td>1711 Fabricación de pasta papelera</td>
						</tr>
						<tr>
							<td>1712 Fabricación de papel y cartón</td>
						</tr>
						<tr>
							<td>172 Fabricación de artículos de papel y de cartón</td>
						</tr>
						<tr>
							<td>1721 Fabricación de papel y cartón ondulados;
								fabricación de envases y embalajes de papel y cartón</td>
						</tr>
						<tr>
							<td>1722 Fabricación de artículos de papel y cartón para uso
								doméstico, sanitario e higiénico</td>
						</tr>
						<tr>
							<td>1723 Fabricación de artículos de papelería</td>
						</tr>
						<tr>
							<td>1724 Fabricación de papeles pintados</td>
						</tr>
						<tr>
							<td>1729 Fabricación de otros artículos de papel y cartón</td>
						</tr>
						<tr>
							<td>18 Artes gráficas y reproducción de soportes grabados</td>
						</tr>
						<tr>
							<td>181 Artes gráficas y servicios relacionados con las
								mismas</td>
						</tr>
						<tr>
							<td>1811 Artes gráficas y servicios relacionados con las
								mismas</td>
						</tr>
						<tr>
							<td>1812 Otras actividades de impresión y artes gráficas</td>
						</tr>
						<tr>
							<td>1813 Servicios de preimpresión y preparación de soportes</td>
						</tr>
						<tr>
							<td>1814 Encuadernación y servicios relacionados con la
								misma</td>
						</tr>
						<tr>
							<td>182 Reproducción de soportes grabados</td>
						</tr>
						<tr>
							<td>1820 Reproducción de soportes grabados</td>
						</tr>
						<tr>
							<td>19 Coquerías y refino de petróleo</td>
						</tr>
						<tr>
							<td>191 Coquerías</td>
						</tr>
						<tr>
							<td>1910 Coquerías</td>
						</tr>
						<tr>
							<td>192 Refino de petróleo</td>
						</tr>
						<tr>
							<td>1920 Refino de petróleo</td>
						</tr>
						<tr>
							<td>20 Industria química</td>
						</tr>
						<tr>
							<td>201 Fabricación de productos químicos básicos,
								compuestos nitrogenados, fertilizantes, plásticos y caucho
								sintético en formas primarias</td>
						</tr>
						<tr>
							<td>2011 Fabricación de gases industriales</td>
						</tr>
						<tr>
							<td>2012 Fabricación de colorantes y pigmentos</td>
						</tr>
						<tr>
							<td>2013 Fabricación de otros productos básicos de química
								inorgánica</td>
						</tr>
						<tr>
							<td>2014 Fabricación de otros productos básicos de química
								orgánica</td>
						</tr>
						<tr>
							<td>2015 Fabricación de fertilizantes y compuestos
								nitrogenados</td>
						</tr>
						<tr>
							<td>2016 Fabricación de plásticos en formas primarias</td>
						</tr>
						<tr>
							<td>2017 Fabricación de caucho sintético en formas primarias</td>
						</tr>
						<tr>
							<td>202 Fabricación de pesticidas y otros productos
								agroquímicos</td>
						</tr>
						<tr>
							<td>2020 Fabricación de pesticidas y otros productos
								agroquímicos</td>
						</tr>
						<tr>
							<td>203 Fabricación de pinturas, barnices y revestimientos
								similares; tintas de imprenta y masillas</td>
						</tr>
						<tr>
							<td>2030 Fabricación de pinturas, barnices y revestimientos
								similares; tintas de imprenta y masillas</td>
						</tr>
						<tr>
							<td>204 Fabricación de jabones, detergentes y otros
								artículos de limpieza y abrillantamiento; fabricación de
								perfumes y cosméticos</td>
						</tr>
						<tr>
							<td>2041 Fabricación de jabones, detergentes y otros
								artículos de limpieza y abrillantamiento</td>
						</tr>
						<tr>
							<td>2042 Fabricación de perfumes y cosméticos</td>
						</tr>
						<tr>
							<td>205 Fabricación de otros productos químicos</td>
						</tr>
						<tr>
							<td>2051 Fabricación de explosivos</td>
						</tr>
						<tr>
							<td>2052 Fabricación de colas</td>
						</tr>
						<tr>
							<td>2053 Fabricación de aceites esenciales</td>
						</tr>
						<tr>
							<td>2059 Fabricación de otros productos químicos n.c.o.p.</td>
						</tr>
						<tr>
							<td>206 Fabricación de fibras artificiales y sintéticas</td>
						</tr>
						<tr>
							<td>2060 Fabricación de fibras artificiales y sintéticas</td>
						</tr>
						<tr>
							<td>21 Fabricación de productos farmacéuticos</td>
						</tr>
						<tr>
							<td>211 Fabricación de productos farmacéuticos de base</td>
						</tr>
						<tr>
							<td>2110 Fabricación de productos farmacéuticos de base</td>
						</tr>
						<tr>
							<td>212 Fabricación de especialidades farmacéuticas</td>
						</tr>
						<tr>
							<td>2120 Fabricación de especialidades farmacéuticas</td>
						</tr>
						<tr>
							<td>22 Fabricación de productos de caucho y plásticos</td>
						</tr>
						<tr>
							<td>221 Fabricación de productos de caucho</td>
						</tr>
						<tr>
							<td>2211 Fabricación de neumáticos y cámaras de caucho;
								reconstrucción y recauchutado de neumáticos</td>
						</tr>
						<tr>
							<td>2219 Fabricación de otros productos de caucho</td>
						</tr>
						<tr>
							<td>222 Fabricación de productos de plástico</td>
						</tr>
						<tr>
							<td>2221 Fabricación de placas, hojas, tubos y perfiles de
								plástico</td>
						</tr>
						<tr>
							<td>2222 Fabricación de envases y embalajes de plástico</td>
						</tr>
						<tr>
							<td>2223 Fabricación de productos de plástico para la
								construcción</td>
						</tr>
						<tr>
							<td>2229 Fabricación de otros productos de plástico</td>
						</tr>
						<tr>
							<td>23 Fabricación de otros productos minerales no metálicos</td>
						</tr>
						<tr>
							<td>231 Fabricación de vidrio y productos de vidrio</td>
						</tr>
						<tr>
							<td>2311 Fabricación de vidrio plano</td>
						</tr>
						<tr>
							<td>2312 Manipulado y transformación de vidrio plano</td>
						</tr>
						<tr>
							<td>2313 Fabricación de vidrio hueco</td>
						</tr>
						<tr>
							<td>2314 Fabricación de fibra de vidrio</td>
						</tr>
						<tr>
							<td>2319 Fabricación y manipulado de otro vidrio, incluido
								el vidrio técnico</td>
						</tr>
						<tr>
							<td>232 Fabricación de productos cerámicos refractarios</td>
						</tr>
						<tr>
							<td>2320 Fabricación de productos cerámicos refractarios</td>
						</tr>
						<tr>
							<td>233 Fabricación de productos cerámicos para la
								construcción</td>
						</tr>
						<tr>
							<td>2331 Fabricación de azulejos y baldosas de cerámica</td>
						</tr>
						<tr>
							<td>2332 Fabricación de ladrillos, tejas y productos de
								tierras cocidas para la construcción</td>
						</tr>
						<tr>
							<td>234 Fabricación de otros productos cerámicos</td>
						</tr>
						<tr>
							<td>2341 Fabricación de artículos cerámicos de uso doméstico
								y ornamental</td>
						</tr>
						<tr>
							<td>2342 Fabricación de aparatos sanitarios cerámicos</td>
						</tr>
						<tr>
							<td>2343 Fabricación de aisladores y piezas aislantes de
								material cerámico</td>
						</tr>
						<tr>
							<td>2344 Fabricación de otros productos cerámicos de uso
								técnico</td>
						</tr>
						<tr>
							<td>2349 Fabricación de otros productos cerámicos</td>
						</tr>
						<tr>
							<td>235 Fabricación de cemento, cal y yeso</td>
						</tr>
						<tr>
							<td>2351 Fabricación de cemento</td>
						</tr>
						<tr>
							<td>2352 Fabricación de cal y yeso</td>
						</tr>
						<tr>
							<td>236 Fabricación de elementos de hormigón, cemento y yeso</td>
						</tr>
						<tr>
							<td>2361 Fabricación de elementos de hormigón para la
								construcción</td>
						</tr>
						<tr>
							<td>2362 Fabricación de elementos de yeso para la
								construcción</td>
						</tr>
						<tr>
							<td>2363 Fabricación de hormigón fresco</td>
						</tr>
						<tr>
							<td>2364 Fabricación de mortero</td>
						</tr>
						<tr>
							<td>2365 Fabricación de fibrocemento</td>
						</tr>
						<tr>
							<td>2369 Fabricación de otros productos de hormigón, yeso y
								cemento</td>
						</tr>
						<tr>
							<td>237 Corte, tallado y acabado de la piedra</td>
						</tr>
						<tr>
							<td>2370 Corte, tallado y acabado de la piedra</td>
						</tr>
						<tr>
							<td>239 Fabricación de productos abrasivos y productos
								minerales no metálicos n.c.o.p.</td>
						</tr>
						<tr>
							<td>2391 Fabricación de productos abrasivos</td>
						</tr>
						<tr>
							<td>2399 Fabricación de otros productos minerales no
								metálicos n.c.o.p.</td>
						</tr>
						<tr>
							<td>24 Metalurgia; fabricación de productos de hierro, acero
								y ferroaleaciones</td>
						</tr>
						<tr>
							<td>241 Fabricación de productos básicos de hierro, acero y
								ferroaleaciones</td>
						</tr>
						<tr>
							<td>2410 Fabricación de productos básicos de hierro, acero y
								ferroaleaciones</td>
						</tr>
						<tr>
							<td>242 Fabricación de tubos, tuberías, perfiles huecos y
								sus accesorios, de acero</td>
						</tr>
						<tr>
							<td>2420 Fabricación de tubos, tuberías, perfiles huecos y
								sus accesorios, de acero</td>
						</tr>
						<tr>
							<td>243 Fabricación de otros productos de primera
								transformación del acero</td>
						</tr>
						<tr>
							<td>2431 Estirado en frío</td>
						</tr>
						<tr>
							<td>2432 Laminación en frío</td>
						</tr>
						<tr>
							<td>2433 Producción de perfiles en frío por conformación con
								plegado</td>
						</tr>
						<tr>
							<td>2434 Trefilado en frío</td>
						</tr>
						<tr>
							<td>244 Producción de metales preciosos y de otros metales
								no férreos</td>
						</tr>
						<tr>
							<td>2441 Producción de metales preciosos</td>
						</tr>
						<tr>
							<td>2442 Producción de aluminio</td>
						</tr>
						<tr>
							<td>2443 Producción de plomo, zinc y estaño</td>
						</tr>
						<tr>
							<td>2444 Producción de cobre</td>
						</tr>
						<tr>
							<td>2445 Producción de otros metales no férreos</td>
						</tr>
						<tr>
							<td>2446 Procesamiento de combustibles nucleares</td>
						</tr>
						<tr>
							<td>245 Fundición de metales</td>
						</tr>
						<tr>
							<td>2451 Fundición de hierro</td>
						</tr>
						<tr>
							<td>2452 Fundición de acero</td>
						</tr>
						<tr>
							<td>2453 Fundición de metales ligeros</td>
						</tr>
						<tr>
							<td>2454 Fundición de otros metales no férreos</td>
						</tr>
						<tr>
							<td>25 Fabricación de productos metálicos, excepto
								maquinaria y equipo</td>
						</tr>
						<tr>
							<td>251 Fabricación de elementos metálicos para la
								construcción</td>
						</tr>
						<tr>
							<td>2511 Fabricación de estructuras metálicas y sus
								componentes</td>
						</tr>
						<tr>
							<td>2512 Fabricación de carpintería metálica</td>
						</tr>
						<tr>
							<td>252 Fabricación de cisternas, grandes depósitos y
								contenedores de metal</td>
						</tr>
						<tr>
							<td>2521 Fabricación de radiadores y calderas para
								calefacción central</td>
						</tr>
						<tr>
							<td>2529 Fabricación de otras cisternas, grandes depósitos y
								contenedores de metal</td>
						</tr>
						<tr>
							<td>253 Fabricación de generadores de vapor, excepto
								calderas de calefacción central</td>
						</tr>
						<tr>
							<td>2530 Fabricación de generadores de vapor, excepto
								calderas de calefacción central</td>
						</tr>
						<tr>
							<td>254 Fabricación de armas y municiones</td>
						</tr>
						<tr>
							<td>2540 Fabricación de armas y municiones</td>
						</tr>
						<tr>
							<td>255 Forja, estampación y embutición de metales;
								metalurgia de polvos</td>
						</tr>
						<tr>
							<td>2550 Forja, estampación y embutición de metales;
								metalurgia de polvos</td>
						</tr>
						<tr>
							<td>256 Tratamiento y revestimiento de metales; ingeniería
								mecánica por cuenta de terceros</td>
						</tr>
						<tr>
							<td>2561 Tratamiento y revestimiento de metales</td>
						</tr>
						<tr>
							<td>2562 Ingeniería mecánica por cuenta de terceros</td>
						</tr>
						<tr>
							<td>257 Fabricación de artículos de cuchillería y
								cubertería, herramientas y ferretería</td>
						</tr>
						<tr>
							<td>2571 Fabricación de artículos de cuchillería y
								cubertería</td>
						</tr>
						<tr>
							<td>2572 Fabricación de cerraduras y herrajes</td>
						</tr>
						<tr>
							<td>2573 Fabricación de herramientas</td>
						</tr>
						<tr>
							<td>259 Fabricación de otros productos metálicos</td>
						</tr>
						<tr>
							<td>2591 Fabricación de bidones y toneles de hierro o acero</td>
						</tr>
						<tr>
							<td>2592 Fabricación de envases y embalajes metálicos
								ligeros</td>
						</tr>
						<tr>
							<td>2593 Fabricación de productos de alambre, cadenas y
								muelles</td>
						</tr>
						<tr>
							<td>2594 Fabricación de pernos y productos de tornillería</td>
						</tr>
						<tr>
							<td>2599 Fabricación de otros productos metálicos n.c.o.p.</td>
						</tr>
						<tr>
							<td>26 Fabricación de productos informáticos, electrónicos y
								ópticos</td>
						</tr>
						<tr>
							<td>261 Fabricación de componentes electrónicos y circuitos
								impresos ensamblados</td>
						</tr>
						<tr>
							<td>2611 Fabricación de componentes electrónicos</td>
						</tr>
						<tr>
							<td>2612 Fabricación de circuitos impresos ensamblados</td>
						</tr>
						<tr>
							<td>262 Fabricación de ordenadores y equipos periféricos</td>
						</tr>
						<tr>
							<td>2620 Fabricación de ordenadores y equipos periféricos</td>
						</tr>
						<tr>
							<td>263 Fabricación de equipos de telecomunicaciones</td>
						</tr>
						<tr>
							<td>2630 Fabricación de equipos de telecomunicaciones</td>
						</tr>
						<tr>
							<td>264 Fabricación de productos electrónicos de consumo</td>
						</tr>
						<tr>
							<td>2640 Fabricación de productos electrónicos de consumo</td>
						</tr>
						<tr>
							<td>265 Fabricación de instrumentos y aparatos de medida,
								verificación y navegación; fabricación de relojes</td>
						</tr>
						<tr>
							<td>2651 Fabricación de instrumentos y aparatos de medida,
								verificación y navegación</td>
						</tr>
						<tr>
							<td>2652 Fabricación de relojes</td>
						</tr>
						<tr>
							<td>266 Fabricación de equipos de radiación, electromédicos
								y electroterapéuticos</td>
						</tr>
						<tr>
							<td>2660 Fabricación de equipos de radiación, electromédicos
								y electroterapéuticos</td>
						</tr>
						<tr>
							<td>267 Fabricación de instrumentos de óptica y equipo
								fotográfico</td>
						</tr>
						<tr>
							<td>2670 Fabricación de instrumentos de óptica y equipo
								fotográfico</td>
						</tr>
						<tr>
							<td>268 Fabricación de soportes magnéticos y ópticos</td>
						</tr>
						<tr>
							<td>2680 Fabricación de soportes magnéticos y ópticos</td>
						</tr>
						<tr>
							<td>27 Fabricación de material y equipo eléctrico</td>
						</tr>
						<tr>
							<td>271 Fabricación de motores, generadores y
								transformadores eléctricos, y de aparatos de distribución y
								control eléctrico</td>
						</tr>
						<tr>
							<td>2711 Fabricación de motores, generadores y
								transformadores eléctricos</td>
						</tr>
						<tr>
							<td>2712 Fabricación de aparatos de distribución y control
								eléctrico</td>
						</tr>
						<tr>
							<td>272 Fabricación de pilas y acumuladores eléctricos</td>
						</tr>
						<tr>
							<td>2720 Fabricación de pilas y acumuladores eléctricos</td>
						</tr>
						<tr>
							<td>273 Fabricación de cables y dispositivos de cableado</td>
						</tr>
						<tr>
							<td>2731 Fabricación de cables de fibra óptica</td>
						</tr>
						<tr>
							<td>2732 Fabricación de otros hilos y cables electrónicos y
								eléctricos</td>
						</tr>
						<tr>
							<td>2733 Fabricación de dispositivos de cableado</td>
						</tr>
						<tr>
							<td>274 Fabricación de lámparas y aparatos eléctricos de
								iluminación</td>
						</tr>
						<tr>
							<td>2740 Fabricación de lámparas y aparatos eléctricos de
								iluminación</td>
						</tr>
						<tr>
							<td>275 Fabricación de aparatos domésticos</td>
						</tr>
						<tr>
							<td>2751 Fabricación de electrodomésticos</td>
						</tr>
						<tr>
							<td>2752 Fabricación de aparatos domésticos no eléctricos</td>
						</tr>
						<tr>
							<td>279 Fabricación de otro material y equipo eléctrico</td>
						</tr>
						<tr>
							<td>2790 Fabricación de otro material y equipo eléctrico</td>
						</tr>
						<tr>
							<td>28 Fabricación de maquinaria y equipo n.c.o.p.</td>
						</tr>
						<tr>
							<td>281 Fabricación de maquinaria de uso general</td>
						</tr>
						<tr>
							<td>2811 Fabricación de motores y turbinas, excepto los
								destinados a aeronaves, vehículos automóviles y ciclomotores</td>
						</tr>
						<tr>
							<td>2812 Fabricación de equipos de transmisión hidráulica y
								neumática</td>
						</tr>
						<tr>
							<td>2813 Fabricación de otras bombas y compresores</td>
						</tr>
						<tr>
							<td>2814 Fabricación de otra grifería y válvulas</td>
						</tr>
						<tr>
							<td>2815 Fabricación de cojinetes, engranajes y órganos
								mecánicos de transmisión</td>
						</tr>
						<tr>
							<td>282 Fabricación de otra maquinaria de uso general</td>
						</tr>
						<tr>
							<td>2821 Fabricación de hornos y quemadores</td>
						</tr>
						<tr>
							<td>2822 Fabricación de maquinaria de elevación y
								manipulación</td>
						</tr>
						<tr>
							<td>2823 Fabricación de máquinas y equipos de oficina,
								excepto equipos informáticos</td>
						</tr>
						<tr>
							<td>2824 Fabricación de herramientas eléctricas manuales</td>
						</tr>
						<tr>
							<td>2825 Fabricación de maquinaria de ventilación y
								refrigeración no doméstica</td>
						</tr>
						<tr>
							<td>2829 Fabricación de otra maquinaria de uso general
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>283 Fabricación de maquinaria agraria y forestal</td>
						</tr>
						<tr>
							<td>2830 Fabricación de maquinaria agraria y forestal</td>
						</tr>
						<tr>
							<td>284 Fabricación de máquinas herramienta para trabajar el
								metal y otras máquinas herramienta</td>
						</tr>
						<tr>
							<td>2841 Fabricación de máquinas herramienta para trabajar
								el metal</td>
						</tr>
						<tr>
							<td>2849 Fabricación de otras máquinas herramienta</td>
						</tr>
						<tr>
							<td>289 Fabricación de otra maquinaria para usos específicos</td>
						</tr>
						<tr>
							<td>2891 Fabricación de maquinaria para la industria
								metalúrgica</td>
						</tr>
						<tr>
							<td>2892 Fabricación de maquinaria para las industrias
								extractivas y de la construcción</td>
						</tr>
						<tr>
							<td>2893 Fabricación de maquinaria para la industria de la
								alimentación, bebidas y tabaco</td>
						</tr>
						<tr>
							<td>2894 Fabricación de maquinaria para las industrias
								textil, de la confección y del cuero</td>
						</tr>
						<tr>
							<td>2895 Fabricación de maquinaria para la industria del
								papel y del cartón</td>
						</tr>
						<tr>
							<td>2896 Fabricación de maquinaria para la industria del
								plástico y el caucho</td>
						</tr>
						<tr>
							<td>2899 Fabricación de otra maquinaria para usos
								específicos n.c.o.p.</td>
						</tr>
						<tr>
							<td>29 Fabricación de vehículos de motor, remolques y
								semirremolques</td>
						</tr>
						<tr>
							<td>291 Fabricación de vehículos de motor</td>
						</tr>
						<tr>
							<td>2910 Fabricación de vehículos de motor</td>
						</tr>
						<tr>
							<td>292 Fabricación de carrocerías para vehículos de motor;
								fabricación de remolques y semirremolques</td>
						</tr>
						<tr>
							<td>2920 Fabricación de carrocerías para vehículos de motor;
								fabricación de remolques y semirremolques</td>
						</tr>
						<tr>
							<td>293 Fabricación de componentes, piezas y accesorios para
								vehículos de motor</td>
						</tr>
						<tr>
							<td>2931 Fabricación de equipos eléctricos y electrónicos
								para vehículos de motor</td>
						</tr>
						<tr>
							<td>2932 Fabricación de otros componentes, piezas y
								accesorios para vehículos de motor</td>
						</tr>
						<tr>
							<td>30 Fabricación de otro material de transporte</td>
						</tr>
						<tr>
							<td>301 Construcción naval</td>
						</tr>
						<tr>
							<td>3011 Construcción de barcos y estructuras flotantes</td>
						</tr>
						<tr>
							<td>3012 Construcción de embarcaciones de recreo y deporte</td>
						</tr>
						<tr>
							<td>302 Fabricación de locomotoras y material ferroviario</td>
						</tr>
						<tr>
							<td>3020 Fabricación de locomotoras y material ferroviario</td>
						</tr>
						<tr>
							<td>303 Construcción aeronáutica y espacial y su maquinaria</td>
						</tr>
						<tr>
							<td>3030 Construcción aeronáutica y espacial y su maquinaria</td>
						</tr>
						<tr>
							<td>304 Fabricación de vehículos militares de combate</td>
						</tr>
						<tr>
							<td>3040 Fabricación de vehículos militares de combate</td>
						</tr>
						<tr>
							<td>309 Fabricación de otro material de transporte n.c.o.p.</td>
						</tr>
						<tr>
							<td>3091 Fabricación de motocicletas</td>
						</tr>
						<tr>
							<td>3092 Fabricación de bicicletas y de vehículos para
								personas con discapacidad</td>
						</tr>
						<tr>
							<td>3099 Fabricación de otro material de transporte n.c.o.p.</td>
						</tr>
						<tr>
							<td>31 Fabricación de muebles</td>
						</tr>
						<tr>
							<td>310 Fabricación de muebles</td>
						</tr>
						<tr>
							<td>3101 Fabricación de muebles de oficina y de
								establecimientos comerciales</td>
						</tr>
						<tr>
							<td>3102 Fabricación de muebles de cocina</td>
						</tr>
						<tr>
							<td>3103 Fabricación de colchones</td>
						</tr>
						<tr>
							<td>3109 Fabricación de otros muebles</td>
						</tr>
						<tr>
							<td>32 Otras industrias manufactureras</td>
						</tr>
						<tr>
							<td>321 Fabricación de artículos de joyería, bisutería y
								similares</td>
						</tr>
						<tr>
							<td>3211 Fabricación de monedas</td>
						</tr>
						<tr>
							<td>3212 Fabricación de artículos de joyería y artículos
								similares</td>
						</tr>
						<tr>
							<td>3213 Fabricación de artículos de bisutería y artículos
								similares</td>
						</tr>
						<tr>
							<td>322 Fabricación de instrumentos musicales</td>
						</tr>
						<tr>
							<td>3220 Fabricación de instrumentos musicales</td>
						</tr>
						<tr>
							<td>323 Fabricación de artículos de deporte</td>
						</tr>
						<tr>
							<td>3230 Fabricación de artículos de deporte</td>
						</tr>
						<tr>
							<td>324 Fabricación de juegos y juguetes</td>
						</tr>
						<tr>
							<td>3240 Fabricación de juegos y juguetes</td>
						</tr>
						<tr>
							<td>325 Fabricación de instrumentos y suministros médicos y
								odontológicos</td>
						</tr>
						<tr>
							<td>3250 Fabricación de instrumentos y suministros médicos y
								odontológicos</td>
						</tr>
						<tr>
							<td>329 Industrias manufactureras n.c.o.p.</td>
						</tr>
						<tr>
							<td>3291 Fabricación de escobas, brochas y cepillos</td>
						</tr>
						<tr>
							<td>3299 Otras industrias manufactureras n.c.o.p.</td>
						</tr>
						<tr>
							<td>33 Reparación e instalación de maquinaria y equipo</td>
						</tr>
						<tr>
							<td>331 Reparación de productos metálicos, maquinaria y
								equipo</td>
						</tr>
						<tr>
							<td>3311 Reparación de productos metálicos</td>
						</tr>
						<tr>
							<td>3312 Reparación de maquinaria</td>
						</tr>
						<tr>
							<td>3313 Reparación de equipos electrónicos y ópticos</td>
						</tr>
						<tr>
							<td>3314 Reparación de equipos eléctricos</td>
						</tr>
						<tr>
							<td>3315 Reparación y mantenimiento naval</td>
						</tr>
						<tr>
							<td>3316 Reparación y mantenimiento aeronáutico y espacial</td>
						</tr>
						<tr>
							<td>3317 Reparación y mantenimiento de otro material de
								transporte</td>
						</tr>
						<tr>
							<td>3319 Reparación de otros equipos</td>
						</tr>
						<tr>
							<td>332 Instalación de máquinas y equipos industriales</td>
						</tr>
						<tr>
							<td>3320 Instalación de máquinas y equipos industriales</td>
						</tr>
						<tr>
							<td>35 Suministro de energía eléctrica, gas, vapor y aire
								acondicionado</td>
						</tr>
						<tr>
							<td>351 Producción, transporte y distribución de energía
								eléctrica</td>
						</tr>
						<tr>
							<td>3512 Transporte de energía eléctrica</td>
						</tr>
						<tr>
							<td>3513 Distribución de energía eléctrica</td>
						</tr>
						<tr>
							<td>3514 Comercio de energía eléctrica</td>
						</tr>
						<tr>
							<td>3515 Producción de energía hidroeléctrica</td>
						</tr>
						<tr>
							<td>3516 Producción de energía eléctrica de origen térmico
								convencional</td>
						</tr>
						<tr>
							<td>3517 Producción de energía eléctrica de origen nuclear</td>
						</tr>
						<tr>
							<td>3518 Producción de energía eléctrica de origen eólico</td>
						</tr>
						<tr>
							<td>3519 Producción de energía eléctrica de otros tipos</td>
						</tr>
						<tr>
							<td>352 Producción de gas; distribución por tubería de
								combustibles gaseosos</td>
						</tr>
						<tr>
							<td>3521 Producción de gas</td>
						</tr>
						<tr>
							<td>3522 Distribución por tubería de combustibles gaseosos</td>
						</tr>
						<tr>
							<td>3523 Comercio de gas por tubería</td>
						</tr>
						<tr>
							<td>353 Suministro de vapor y aire acondicionado</td>
						</tr>
						<tr>
							<td>3530 Suministro de vapor y aire acondicionado</td>
						</tr>
						<tr>
							<td>36 Captación, depuración y distribución de agua</td>
						</tr>
						<tr>
							<td>360 Captación, depuración y distribución de agua</td>
						</tr>
						<tr>
							<td>3600 Captación, depuración y distribución de agua</td>
						</tr>
						<tr>
							<td>37 Recogida y tratamiento de aguas residuales</td>
						</tr>
						<tr>
							<td>370 Recogida y tratamiento de aguas residuales</td>
						</tr>
						<tr>
							<td>3700 Recogida y tratamiento de aguas residuales</td>
						</tr>
						<tr>
							<td>38 Recogida, tratamiento y eliminación de residuos;
								valorización</td>
						</tr>
						<tr>
							<td>381 Recogida de residuos</td>
						</tr>
						<tr>
							<td>3811 Recogida de residuos no peligrosos</td>
						</tr>
						<tr>
							<td>3812 Recogida de residuos peligrosos</td>
						</tr>
						<tr>
							<td>382 Tratamiento y eliminación de residuos</td>
						</tr>
						<tr>
							<td>3821 Tratamiento y eliminación de residuos no peligrosos</td>
						</tr>
						<tr>
							<td>3822 Tratamiento y eliminación de residuos peligrosos</td>
						</tr>
						<tr>
							<td>383 Valorización</td>
						</tr>
						<tr>
							<td>3831 Separación y clasificación de materiales</td>
						</tr>
						<tr>
							<td>3832 Valorización de materiales ya clasificados</td>
						</tr>
						<tr>
							<td>39 Actividades de descontaminación y otros servicios de
								gestión de residuos</td>
						</tr>
						<tr>
							<td>390 Actividades de descontaminación y otros servicios de
								gestión de residuos</td>
						</tr>
						<tr>
							<td>3900 Actividades de descontaminación y otros servicios
								de gestión de residuos</td>
						</tr>
						<tr>
							<td>41 Construcción de edificios</td>
						</tr>
						<tr>
							<td>411 Promoción inmobiliaria</td>
						</tr>
						<tr>
							<td>4110 Promoción inmobiliaria</td>
						</tr>
						<tr>
							<td>412 Construcción de edificios</td>
						</tr>
						<tr>
							<td>4121 Construcción de edificios residenciales</td>
						</tr>
						<tr>
							<td>4122 Construcción de edificios no residenciales</td>
						</tr>
						<tr>
							<td>42 Ingeniería civil</td>
						</tr>
						<tr>
							<td>421 Construcción de carreteras y vías férreas, puentes y
								túneles</td>
						</tr>
						<tr>
							<td>4211 Construcción de carreteras y autopistas</td>
						</tr>
						<tr>
							<td>4212 Construcción de vías férreas de superficie y
								subterráneas</td>
						</tr>
						<tr>
							<td>4213 Construcción de puentes y túneles</td>
						</tr>
						<tr>
							<td>422 Construcción de redes</td>
						</tr>
						<tr>
							<td>4221 Construcción de redes para fluidos</td>
						</tr>
						<tr>
							<td>4222 Construcción de redes eléctricas y de
								telecomunicaciones</td>
						</tr>
						<tr>
							<td>429 Construcción de otros proyectos de ingeniería civil</td>
						</tr>
						<tr>
							<td>4291 Obras hidráulicas</td>
						</tr>
						<tr>
							<td>4299 Construcción de otros proyectos de ingeniería civil
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>43 Actividades de construcción especializada</td>
						</tr>
						<tr>
							<td>431 Demolición y preparación de terrenos</td>
						</tr>
						<tr>
							<td>4311 Demolición</td>
						</tr>
						<tr>
							<td>4312 Preparación de terrenos</td>
						</tr>
						<tr>
							<td>4313 Perforaciones y sondeos</td>
						</tr>
						<tr>
							<td>432 Instalaciones eléctricas, de fontanería y otras
								instalaciones en obras de construcción</td>
						</tr>
						<tr>
							<td>4321 Instalaciones eléctricas</td>
						</tr>
						<tr>
							<td>4322 Fontanería, instalaciones de sistemas de
								calefacción y aire acondicionado</td>
						</tr>
						<tr>
							<td>4329 Otras instalaciones en obras de construcción</td>
						</tr>
						<tr>
							<td>433 Acabado de edificios</td>
						</tr>
						<tr>
							<td>4331 Revocamiento</td>
						</tr>
						<tr>
							<td>4332 Instalación de carpintería</td>
						</tr>
						<tr>
							<td>4333 Revestimiento de suelos y paredes</td>
						</tr>
						<tr>
							<td>4334 Pintura y acristalamiento</td>
						</tr>
						<tr>
							<td>4339 Otro acabado de edificios</td>
						</tr>
						<tr>
							<td>439 Otras actividades de construcción especializada</td>
						</tr>
						<tr>
							<td>4391 Construcción de cubiertas</td>
						</tr>
						<tr>
							<td>4399 Otras actividades de construcción especializada
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>45 Venta y reparación de vehículos de motor y
								motocicletas</td>
						</tr>
						<tr>
							<td>451 Venta de vehículos de motor</td>
						</tr>
						<tr>
							<td>4511 Venta de automóviles y vehículos de motor ligeros</td>
						</tr>
						<tr>
							<td>4519 Venta de otros vehículos de motor</td>
						</tr>
						<tr>
							<td>452 Mantenimiento y reparación de vehículos de motor</td>
						</tr>
						<tr>
							<td>4520 Mantenimiento y reparación de vehículos de motor</td>
						</tr>
						<tr>
							<td>453 Comercio de repuestos y accesorios de vehículos de
								motor</td>
						</tr>
						<tr>
							<td>4531 Comercio al por mayor de repuestos y accesorios de
								vehículos de motor</td>
						</tr>
						<tr>
							<td>4532 Comercio al por menor de repuestos y accesorios de
								vehículos de motor</td>
						</tr>
						<tr>
							<td>454 Venta, mantenimiento y reparación de motocicletas y
								de sus repuestos y accesorios</td>
						</tr>
						<tr>
							<td>4540 Venta, mantenimiento y reparación de motocicletas y
								de sus repuestos y accesorios</td>
						</tr>
						<tr>
							<td>46 Comercio al por mayor e intermediarios del comercio,
								excepto de vehículos de motor y motocicletas</td>
						</tr>
						<tr>
							<td>461 Intermediarios del comercio</td>
						</tr>
						<tr>
							<td>4611 Intermediarios del comercio de materias primas
								agrarias, animales vivos, materias primas textiles y productos
								semielaborados</td>
						</tr>
						<tr>
							<td>4612 Intermediarios del comercio de combustibles,
								minerales, metales y productos químicos industriales</td>
						</tr>
						<tr>
							<td>4613 Intermediarios del comercio de la madera y
								materiales de construcción</td>
						</tr>
						<tr>
							<td>4614 Intermediarios del comercio de maquinaria, equipo
								industrial, embarcaciones y aeronaves</td>
						</tr>
						<tr>
							<td>4615 Intermediarios del comercio de muebles, artículos
								para el hogar y ferretería</td>
						</tr>
						<tr>
							<td>4616 Intermediarios del comercio de textiles, prendas de
								vestir, peletería, calzado y artículos de cuero</td>
						</tr>
						<tr>
							<td>4617 Intermediarios del comercio de productos
								alimenticios, bebidas y tabaco</td>
						</tr>
						<tr>
							<td>4618 Intermediarios del comercio especializados en la
								venta de otros productos específicos</td>
						</tr>
						<tr>
							<td>4619 Intermediarios del comercio de productos diversos</td>
						</tr>
						<tr>
							<td>462 Comercio al por mayor de materias primas agrarias y
								de animales vivos</td>
						</tr>
						<tr>
							<td>4621 Comercio al por mayor de cereales, tabaco en rama,
								simientes y alimentos para animales</td>
						</tr>
						<tr>
							<td>4622 Comercio al por mayor de flores y plantas</td>
						</tr>
						<tr>
							<td>4623 Comercio al por mayor de animales vivos</td>
						</tr>
						<tr>
							<td>4624 Comercio al por mayor de cueros y pieles</td>
						</tr>
						<tr>
							<td>463 Comercio al por mayor de productos alimenticios,
								bebidas y tabaco</td>
						</tr>
						<tr>
							<td>4631 Comercio al por mayor de frutas y hortalizas</td>
						</tr>
						<tr>
							<td>4632 Comercio al por mayor de carne y productos cárnicos</td>
						</tr>
						<tr>
							<td>4633 Comercio al por mayor de productos lácteos, huevos,
								aceites y grasas comestibles</td>
						</tr>
						<tr>
							<td>4634 Comercio al por mayor de bebidas</td>
						</tr>
						<tr>
							<td>4635 Comercio al por mayor de productos del tabaco</td>
						</tr>
						<tr>
							<td>4636 Comercio al por mayor de azúcar, chocolate y
								confitería</td>
						</tr>
						<tr>
							<td>4637 Comercio al por mayor de café, té, cacao y especias</td>
						</tr>
						<tr>
							<td>4638 Comercio al por mayor de pescados y mariscos y
								otros productos alimenticios</td>
						</tr>
						<tr>
							<td>4639 Comercio al por mayor, no especializado, de
								productos alimenticios, bebidas y tabaco</td>
						</tr>
						<tr>
							<td>464 Comercio al por mayor de artículos de uso doméstico</td>
						</tr>
						<tr>
							<td>4641 Comercio al por mayor de textiles</td>
						</tr>
						<tr>
							<td>4642 Comercio al por mayor de prendas de vestir y
								calzado</td>
						</tr>
						<tr>
							<td>4643 Comercio al por mayor de aparatos electrodomésticos</td>
						</tr>
						<tr>
							<td>4644 Comercio al por mayor de porcelana, cristalería y
								artículos de limpieza</td>
						</tr>
						<tr>
							<td>4645 Comercio al por mayor de productos perfumería y
								cosmética</td>
						</tr>
						<tr>
							<td>4646 Comercio al por mayor de productos farmacéuticos</td>
						</tr>
						<tr>
							<td>4647 Comercio al por mayor de muebles, alfombras y
								aparatos de iluminación</td>
						</tr>
						<tr>
							<td>4648 Comercio al por mayor de artículos de relojería y
								joyería</td>
						</tr>
						<tr>
							<td>4649 Comercio al por mayor de otros artículos de uso
								doméstico</td>
						</tr>
						<tr>
							<td>465 Comercio al por mayor de equipos para las
								tecnologías de la información y las comunicaciones</td>
						</tr>
						<tr>
							<td>4651 Comercio al por mayor de ordenadores, equipos
								periféricos y programas informáticos</td>
						</tr>
						<tr>
							<td>4652 Comercio al por mayor de equipos electrónicos y de
								telecomunicaciones y sus componentes</td>
						</tr>
						<tr>
							<td>466 Comercio al por mayor de otra maquinaria, equipos y
								suministros</td>
						</tr>
						<tr>
							<td>4661 Comercio al por mayor de maquinaria, equipos y
								suministros agrícolas</td>
						</tr>
						<tr>
							<td>4662 Comercio al por mayor de máquinas herramienta</td>
						</tr>
						<tr>
							<td>4663 Comercio al por mayor de maquinaria para la
								minería, la construcción y la ingeniería civil</td>
						</tr>
						<tr>
							<td>4664 Comercio al por mayor de maquinaria para la
								industria textil y de máquinas de coser y tricotar</td>
						</tr>
						<tr>
							<td>4665 Comercio al por mayor de muebles de oficina</td>
						</tr>
						<tr>
							<td>4666 Comercio al por mayor de otra maquinaria y equipo
								de oficina</td>
						</tr>
						<tr>
							<td>4669 Comercio al por mayor de otra maquinaria y equipo</td>
						</tr>
						<tr>
							<td>467 Otro comercio al por mayor especializado</td>
						</tr>
						<tr>
							<td>4671 Comercio al por mayor de combustibles sólidos,
								líquidos y gaseosos, y productos similares</td>
						</tr>
						<tr>
							<td>4672 Comercio al por mayor de metales y minerales
								metálicos</td>
						</tr>
						<tr>
							<td>4673 Comercio al por mayor de madera, materiales de
								construcción y aparatos sanitarios</td>
						</tr>
						<tr>
							<td>4674 Comercio al por mayor de ferretería, fontanería y
								calefacción</td>
						</tr>
						<tr>
							<td>4675 Comercio al por mayor de productos químicos</td>
						</tr>
						<tr>
							<td>4676 Comercio al por mayor de otros productos
								semielaborados</td>
						</tr>
						<tr>
							<td>4677 Comercio al por mayor de chatarra y productos de
								desecho</td>
						</tr>
						<tr>
							<td>469 Comercio al por mayor no especializado</td>
						</tr>
						<tr>
							<td>4690 Comercio al por mayor no especializado</td>
						</tr>
						<tr>
							<td>47 Comercio al por menor, excepto de vehículos de motor
								y motocicletas</td>
						</tr>
						<tr>
							<td>471 Comercio al por menor en establecimientos no
								especializados</td>
						</tr>
						<tr>
							<td>4711 Comercio al por menor en establecimientos no
								especializados, con predominio en productos alimenticios,
								bebidas y tabaco</td>
						</tr>
						<tr>
							<td>4719 Otro comercio al por menor en establecimientos no
								especializados</td>
						</tr>
						<tr>
							<td>472 Comercio al por menor de productos alimenticios,
								bebidas y tabaco en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4721 Comercio al por menor de frutas y hortalizas en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4722 Comercio al por menor de carne y productos cárnicos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4723 Comercio al por menor de pescados y mariscos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4724 Comercio al por menor de pan y productos de
								panadería, confitería y pastelería en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4725 Comercio al por menor de bebidas en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4726 Comercio al por menor de productos de tabaco en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4729 Otro comercio al por menor de productos
								alimenticios en establecimientos especializados</td>
						</tr>
						<tr>
							<td>473 Comercio al por menor de combustible para la
								automoción en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4730 Comercio al por menor de combustible para la
								automoción en establecimientos especializados</td>
						</tr>
						<tr>
							<td>474 Comercio al por menor de equipos para las
								tecnologías de la información y las comunicaciones en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4741 Comercio al por menor de ordenadores, equipos
								periféricos y programas informáticos en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4742 Comercio al por menor de equipos de
								telecomunicaciones en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4743 Comercio al por menor de equipos de audio y vídeo
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>475 Comercio al por menor de otros artículos de uso
								doméstico en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4751 Comercio al por menor de textiles en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4752 Comercio al por menor de ferretería, pintura y
								vidrio en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4753 Comercio al por menor de alfombras, moquetas y
								revestimientos de paredes y suelos en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4754 Comercio al por menor de aparatos electrodomésticos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4759 Comercio al por menor de muebles, aparatos de
								iluminación y otros artículos de uso doméstico en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>476 Comercio al por menor de artículos culturales y
								recreativos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4761 Comercio al por menor de libros en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4762 Comercio al por menor de periódicos y artículos de
								papelería en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4763 Comercio al por menor de grabaciones de música y
								vídeo en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4764 Comercio al por menor de artículos deportivos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4765 Comercio al por menor de juegos y juguetes en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>477 Comercio al por menor de otros artículos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4771 Comercio al por menor de prendas de vestir en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4772 Comercio al por menor de calzado y artículos de
								cuero en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4773 Comercio al por menor de productos farmacéuticos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4774 Comercio al por menor de artículos médicos y
								ortopédicos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4775 Comercio al por menor de productos cosméticos e
								higiénicos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4776 Comercio al por menor de flores, plantas, semillas,
								fertilizantes, animales de compañía y alimentos para los mismos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4777 Comercio al por menor de artículos de relojería y
								joyería en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4778 Otro comercio al por menor de artículos nuevos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4779 Comercio al por menor de artículos de segunda mano
								en establecimientos</td>
						</tr>
						<tr>
							<td>478 Comercio al por menor en puestos de venta y en
								mercadillos</td>
						</tr>
						<tr>
							<td>4781 Comercio al por menor de productos alimenticios,
								bebidas y tabaco en puestos de venta y en mercadillos</td>
						</tr>
						<tr>
							<td>4782 Comercio al por menor de productos textiles,
								prendas de vestir y calzado en puestos de venta y en mercadillos</td>
						</tr>
						<tr>
							<td>4789 Comercio al por menor de otros productos en puestos
								de venta y en mercadillos</td>
						</tr>
						<tr>
							<td>479 Comercio al por menor no realizado ni en
								establecimientos, ni en puestos de venta ni en mercadillos</td>
						</tr>
						<tr>
							<td>4791 Comercio al por menor por correspondencia o
								Internet</td>
						</tr>
						<tr>
							<td>4799 Otro comercio al por menor no realizado ni en
								establecimientos, ni en puestos de venta ni en mercadillos</td>
						</tr>
						<tr>
							<td>49 Transporte terrestre y por tubería</td>
						</tr>
						<tr>
							<td>491 Transporte interurbano de pasajeros por ferrocarril</td>
						</tr>
						<tr>
							<td>4910 Transporte interurbano de pasajeros por ferrocarril</td>
						</tr>
						<tr>
							<td>492 Transporte de mercancías por ferrocarril</td>
						</tr>
						<tr>
							<td>4920 Transporte de mercancías por ferrocarril</td>
						</tr>
						<tr>
							<td>493 Otro transporte terrestre de pasajeros</td>
						</tr>
						<tr>
							<td>4931 Transporte terrestre urbano y suburbano de
								pasajeros</td>
						</tr>
						<tr>
							<td>4932 Transporte por taxi</td>
						</tr>
						<tr>
							<td>4939 tipos de transporte terrestre de pasajeros n.c.o.p.</td>
						</tr>
						<tr>
							<td>494 Transporte de mercancías por carretera y servicios
								de mudanza</td>
						</tr>
						<tr>
							<td>4941 Transporte de mercancías por carretera</td>
						</tr>
						<tr>
							<td>4942 Servicios de mudanza</td>
						</tr>
						<tr>
							<td>495 Transporte por tubería</td>
						</tr>
						<tr>
							<td>4950 Transporte por tubería</td>
						</tr>
						<tr>
							<td>50 Transporte marítimo y por vías navegables interiores</td>
						</tr>
						<tr>
							<td>501 Transporte marítimo de pasajeros</td>
						</tr>
						<tr>
							<td>5010 Transporte marítimo de pasajeros</td>
						</tr>
						<tr>
							<td>502 Transporte marítimo de mercancías</td>
						</tr>
						<tr>
							<td>5020 Transporte marítimo de mercancías</td>
						</tr>
						<tr>
							<td>503 Transporte de pasajeros por vías navegables
								interiores</td>
						</tr>
						<tr>
							<td>5030 Transporte de pasajeros por vías navegables
								interiores</td>
						</tr>
						<tr>
							<td>504 Transporte de mercancías por vías navegables
								interiores</td>
						</tr>
						<tr>
							<td>5040 Transporte de mercancías por vías navegables
								interiores</td>
						</tr>
						<tr>
							<td>51 Transporte aéreo</td>
						</tr>
						<tr>
							<td>511 Transporte aéreo de pasajeros</td>
						</tr>
						<tr>
							<td>5110 Transporte aéreo de pasajeros</td>
						</tr>
						<tr>
							<td>512 Transporte aéreo de mercancías y transporte espacial</td>
						</tr>
						<tr>
							<td>5121 Transporte aéreo de mercancías</td>
						</tr>
						<tr>
							<td>5122 Transporte espacial</td>
						</tr>
						<tr>
							<td>52 Almacenamiento y actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>521 Depósito y almacenamiento</td>
						</tr>
						<tr>
							<td>5210 Depósito y almacenamiento</td>
						</tr>
						<tr>
							<td>522 Actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>5221 Actividades anexas al transporte terrestre</td>
						</tr>
						<tr>
							<td>5222 Actividades anexas al transporte marítimo y por
								vías navegables interiores</td>
						</tr>
						<tr>
							<td>5223 Actividades anexas al transporte aéreo</td>
						</tr>
						<tr>
							<td>5224 Manipulación de mercancías</td>
						</tr>
						<tr>
							<td>5229 Otras actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>53 Actividades postales y de correos</td>
						</tr>
						<tr>
							<td>531 Actividades postales sometidas a la obligación del
								servicio universal</td>
						</tr>
						<tr>
							<td>5310 Actividades postales sometidas a la obligación del
								servicio universal</td>
						</tr>
						<tr>
							<td>532 Otras actividades postales y de correos</td>
						</tr>
						<tr>
							<td>5320 Otras actividades postales y de correos</td>
						</tr>
						<tr>
							<td>55 Servicios de alojamiento</td>
						</tr>
						<tr>
							<td>551 Hoteles y alojamientos similares</td>
						</tr>
						<tr>
							<td>5510 Hoteles y alojamientos similares</td>
						</tr>
						<tr>
							<td>552 Alojamientos turísticos y otros alojamientos de
								corta estancia</td>
						</tr>
						<tr>
							<td>5520 Alojamientos turísticos y otros alojamientos de
								corta estancia</td>
						</tr>
						<tr>
							<td>553 Campings y aparcamientos para caravanas</td>
						</tr>
						<tr>
							<td>5530 Campings y aparcamientos para caravanas</td>
						</tr>
						<tr>
							<td>559 Otros alojamientos</td>
						</tr>
						<tr>
							<td>5590 Otros alojamientos</td>
						</tr>
						<tr>
							<td>56 Servicios de comidas y bebidas</td>
						</tr>
						<tr>
							<td>561 Restaurantes y puestos de comidas</td>
						</tr>
						<tr>
							<td>5610 Restaurantes y puestos de comidas</td>
						</tr>
						<tr>
							<td>562 Provisión de comidas preparadas para eventos y otros
								servicios de comidas</td>
						</tr>
						<tr>
							<td>5621 Provisión de comidas preparadas para eventos</td>
						</tr>
						<tr>
							<td>5629 Otros servicios de comidas</td>
						</tr>
						<tr>
							<td>563 Establecimientos de bebidas</td>
						</tr>
						<tr>
							<td>5630 Establecimientos de bebidas</td>
						</tr>
						<tr>
							<td>58 Edición</td>
						</tr>
						<tr>
							<td>581 Edición de libros, periódicos y otras actividades
								editoriales</td>
						</tr>
						<tr>
							<td>5811 Edición de libros</td>
						</tr>
						<tr>
							<td>5812 Edición de directorios y guías de direcciones
								postales</td>
						</tr>
						<tr>
							<td>5813 Edición de periódicos</td>
						</tr>
						<tr>
							<td>5814 Edición de revistas</td>
						</tr>
						<tr>
							<td>5819 Otras actividades editoriales</td>
						</tr>
						<tr>
							<td>582 Edición de programas informáticos</td>
						</tr>
						<tr>
							<td>5821 Edición de videojuegos</td>
						</tr>
						<tr>
							<td>5829 Edición de otros programas informáticos</td>
						</tr>
						<tr>
							<td>59 Actividades cinematográficas, de vídeo y de programas
								de televisión, grabación de sonido y edición musical</td>
						</tr>
						<tr>
							<td>591 Actividades cinematográficas, de vídeo y de
								programas de televisión</td>
						</tr>
						<tr>
							<td>5912 Actividades de postproducción cinematográfica, de
								vídeo y de programas de televisión</td>
						</tr>
						<tr>
							<td>5914 Actividades de exhibición cinematográfica</td>
						</tr>
						<tr>
							<td>5915 Actividades de producción cinematográfica y de
								vídeo</td>
						</tr>
						<tr>
							<td>5916 Actividades de producciones de programas de
								televisión</td>
						</tr>
						<tr>
							<td>5917 Actividades de distribución cinematográfica y de
								vídeo</td>
						</tr>
						<tr>
							<td>5918 Actividades de distribución de programas de
								televisión</td>
						</tr>
						<tr>
							<td>592 Actividades de grabación de sonido y edición musical</td>
						</tr>
						<tr>
							<td>5920 Actividades de grabación de sonido y edición
								musical</td>
						</tr>
						<tr>
							<td>60 Actividades de programación y emisión de radio y
								televisión</td>
						</tr>
						<tr>
							<td>601 Actividades de radiodifusión</td>
						</tr>
						<tr>
							<td>6010 Actividades de radiodifusión</td>
						</tr>
						<tr>
							<td>602 Actividades de programación y emisión de televisión</td>
						</tr>
						<tr>
							<td>6020 Actividades de programación y emisión de televisión</td>
						</tr>
						<tr>
							<td>61 Telecomunicaciones</td>
						</tr>
						<tr>
							<td>611 Telecomunicaciones por cable</td>
						</tr>
						<tr>
							<td>6110 Telecomunicaciones por cable</td>
						</tr>
						<tr>
							<td>612 Telecomunicaciones inalámbricas</td>
						</tr>
						<tr>
							<td>6120 Telecomunicaciones inalámbricas</td>
						</tr>
						<tr>
							<td>613 Telecomunicaciones por satélite</td>
						</tr>
						<tr>
							<td>6130 Telecomunicaciones por satélite</td>
						</tr>
						<tr>
							<td>619 Otras actividades de telecomunicaciones</td>
						</tr>
						<tr>
							<td>6190 Otras actividades de telecomunicaciones</td>
						</tr>
						<tr>
							<td>62 Programación, consultoría y otras actividades
								relacionadas con la informática</td>
						</tr>
						<tr>
							<td>620 Programación, consultoría y otras actividades
								relacionadas con la informática</td>
						</tr>
						<tr>
							<td>6201 Actividades de programación informática</td>
						</tr>
						<tr>
							<td>6202 Actividades de consultoría informática</td>
						</tr>
						<tr>
							<td>6203 Gestión de recursos informáticos</td>
						</tr>
						<tr>
							<td>6209 Otros servicios relacionados con las tecnologías de
								la información y la informática</td>
						</tr>
						<tr>
							<td>63 Servicios de información</td>
						</tr>
						<tr>
							<td>631 Proceso de datos, hosting y actividades
								relacionadas; portales web</td>
						</tr>
						<tr>
							<td>6311 Proceso de datos, hosting y actividades
								relacionadas</td>
						</tr>
						<tr>
							<td>6312 Portales web</td>
						</tr>
						<tr>
							<td>639 Otros servicios de información</td>
						</tr>
						<tr>
							<td>6391 Actividades de las agencias de noticias</td>
						</tr>
						<tr>
							<td>6399 Otros servicios de información n.c.o.p.</td>
						</tr>
						<tr>
							<td>64 Servicios financieros, excepto seguros y fondos de
								pensiones</td>
						</tr>
						<tr>
							<td>641 Intermediación monetaria</td>
						</tr>
						<tr>
							<td>6411 Banco central</td>
						</tr>
						<tr>
							<td>6419 Otra intermediación monetaria</td>
						</tr>
						<tr>
							<td>642 Actividades de las sociedades holding</td>
						</tr>
						<tr>
							<td>6420 Actividades de las sociedades holding</td>
						</tr>
						<tr>
							<td>643 Inversión colectiva, fondos y entidades financieras
								similares</td>
						</tr>
						<tr>
							<td>6430 Inversión colectiva, fondos y entidades financieras
								similares</td>
						</tr>
						<tr>
							<td>649 Otros servicios financieros, excepto seguros y
								fondos de pensiones</td>
						</tr>
						<tr>
							<td>6491 Arrendamiento financiero</td>
						</tr>
						<tr>
							<td>6492 Otras actividades crediticias</td>
						</tr>
						<tr>
							<td>6499 Otros servicios financieros, excepto seguros y
								fondos de pensiones n.c.o.p.</td>
						</tr>
						<tr>
							<td>65 Seguros, reaseguros y fondos de pensiones, excepto
								Seguridad Social obligatoria</td>
						</tr>
						<tr>
							<td>651 Seguros</td>
						</tr>
						<tr>
							<td>6511 Seguros de vida</td>
						</tr>
						<tr>
							<td>6512 Seguros distintos de los seguros de vida</td>
						</tr>
						<tr>
							<td>652 Reaseguros</td>
						</tr>
						<tr>
							<td>6520 Reaseguros</td>
						</tr>
						<tr>
							<td>653 Fondos de pensiones</td>
						</tr>
						<tr>
							<td>6530 Fondos de pensiones</td>
						</tr>
						<tr>
							<td>66 Actividades auxiliares a los servicios financieros y
								a los seguros</td>
						</tr>
						<tr>
							<td>661 Actividades auxiliares a los servicios financieros,
								excepto seguros y fondos de pensiones</td>
						</tr>
						<tr>
							<td>6611 Administración de mercados financieros</td>
						</tr>
						<tr>
							<td>6612 Actividades de intermediación en operaciones con
								valores y otros activos</td>
						</tr>
						<tr>
							<td>6619 Otras actividades auxiliares a los servicios
								financieros, excepto seguros y fondos de pensiones</td>
						</tr>
						<tr>
							<td>662 Actividades auxiliares a seguros y fondos de
								pensiones</td>
						</tr>
						<tr>
							<td>6621 Evaluación de riesgos y daños</td>
						</tr>
						<tr>
							<td>6622 Actividades de agentes y corredores de seguros</td>
						</tr>
						<tr>
							<td>6629 Otras actividades auxiliares a seguros y fondos de
								pensiones</td>
						</tr>
						<tr>
							<td>663 Actividades de gestión de fondos</td>
						</tr>
						<tr>
							<td>6630 Actividades de gestión de fondos</td>
						</tr>
						<tr>
							<td>68 Actividades inmobiliarias</td>
						</tr>
						<tr>
							<td>681 Compraventa de bienes inmobiliarios por cuenta
								propia</td>
						</tr>
						<tr>
							<td>6810 Compraventa de bienes inmobiliarios por cuenta
								propia</td>
						</tr>
						<tr>
							<td>682 Alquiler de bienes inmobiliarios por cuenta propia</td>
						</tr>
						<tr>
							<td>6820 Alquiler de bienes inmobiliarios por cuenta propia</td>
						</tr>
						<tr>
							<td>683 Actividades inmobiliarias por cuenta de terceros</td>
						</tr>
						<tr>
							<td>6831 Agentes de la propiedad inmobiliaria</td>
						</tr>
						<tr>
							<td>6832 Gestión y administración de la propiedad
								inmobiliaria</td>
						</tr>
						<tr>
							<td>69 Actividades jurídicas y de contabilidad</td>
						</tr>
						<tr>
							<td>691 Actividades jurídicas</td>
						</tr>
						<tr>
							<td>6910 Actividades jurídicas</td>
						</tr>
						<tr>
							<td>692 Actividades de contabilidad, teneduría de libros,
								auditoría y asesoría fiscal</td>
						</tr>
						<tr>
							<td>6920 Actividades de contabilidad, teneduría de libros,
								auditoría y asesoría fiscal</td>
						</tr>
						<tr>
							<td>70 Actividades de las sedes centrales; actividades de
								consultoría de gestión empresarial</td>
						</tr>
						<tr>
							<td>701 Actividades de las sedes centrales</td>
						</tr>
						<tr>
							<td>7010 Actividades de las sedes centrales</td>
						</tr>
						<tr>
							<td>702 Actividades de consultoría de gestión empresarial</td>
						</tr>
						<tr>
							<td>7021 Relaciones públicas y comunicación</td>
						</tr>
						<tr>
							<td>7022 Otras actividades de consultoría de gestión
								empresarial</td>
						</tr>
						<tr>
							<td>71 Servicios técnicos de arquitectura e ingeniería;
								ensayos y análisis técnicos</td>
						</tr>
						<tr>
							<td>711 Servicios técnicos de arquitectura e ingeniería y
								otras actividades relacionadas con el asesoramiento técnico</td>
						</tr>
						<tr>
							<td>7111 Servicios técnicos de arquitectura</td>
						</tr>
						<tr>
							<td>7112 Servicios técnicos de ingeniería y otras
								actividades relacionadas con el asesoramiento técnico</td>
						</tr>
						<tr>
							<td>712 Ensayos y análisis técnicos</td>
						</tr>
						<tr>
							<td>7120 Ensayos y análisis técnicos</td>
						</tr>
						<tr>
							<td>72 Investigación y desarrollo</td>
						</tr>
						<tr>
							<td>721 Investigación y desarrollo experimental en ciencias
								naturales y técnicas</td>
						</tr>
						<tr>
							<td>7211 Investigación y desarrollo experimental en
								biotecnología</td>
						</tr>
						<tr>
							<td>7219 Otra investigación y desarrollo experimental en
								ciencias naturales y técnicas</td>
						</tr>
						<tr>
							<td>722 Investigación y desarrollo experimental en ciencias
								sociales y humanidades</td>
						</tr>
						<tr>
							<td>7220 Investigación y desarrollo experimental en ciencias
								sociales y humanidades</td>
						</tr>
						<tr>
							<td>73 Publicidad y estudios de mercado</td>
						</tr>
						<tr>
							<td>731 Publicidad</td>
						</tr>
						<tr>
							<td>7311 Agencias de publicidad</td>
						</tr>
						<tr>
							<td>7312 Servicios de representación de medios de
								comunicación</td>
						</tr>
						<tr>
							<td>732 Estudio de mercado y realización de encuestas de
								opinión pública</td>
						</tr>
						<tr>
							<td>7320 Estudio de mercado y realización de encuestas de
								opinión pública</td>
						</tr>
						<tr>
							<td>74 Otras actividades profesionales, científicas y
								técnicas</td>
						</tr>
						<tr>
							<td>741 Actividades de diseño especializado</td>
						</tr>
						<tr>
							<td>7410 Actividades de diseño especializado</td>
						</tr>
						<tr>
							<td>742 Actividades de fotografía</td>
						</tr>
						<tr>
							<td>7420 Actividades de fotografía</td>
						</tr>
						<tr>
							<td>743 Actividades de traducción e interpretación</td>
						</tr>
						<tr>
							<td>7430 Actividades de traducción e interpretación</td>
						</tr>
						<tr>
							<td>749 Otras actividades profesionales, científicas y
								técnicas n.c.o.p.</td>
						</tr>
						<tr>
							<td>7490 Otras actividades profesionales, científicas y
								técnicas n.c.o.p.</td>
						</tr>
						<tr>
							<td>75 Actividades veterinarias</td>
						</tr>
						<tr>
							<td>750 Actividades veterinarias</td>
						</tr>
						<tr>
							<td>7500 Actividades veterinarias</td>
						</tr>
						<tr>
							<td>77 Actividades de alquiler</td>
						</tr>
						<tr>
							<td>771 Alquiler de vehículos de motor</td>
						</tr>
						<tr>
							<td>7711 Alquiler de automóviles y vehículos de motor
								ligeros</td>
						</tr>
						<tr>
							<td>7712 Alquiler de camiones</td>
						</tr>
						<tr>
							<td>772 Alquiler de efectos personales y artículos de uso
								doméstico</td>
						</tr>
						<tr>
							<td>7721 Alquiler de artículos de ocio y deportivos</td>
						</tr>
						<tr>
							<td>7722 Alquiler de cintas de vídeo y discos</td>
						</tr>
						<tr>
							<td>7729 Alquiler de otros efectos personales y artículos de
								uso doméstico</td>
						</tr>
						<tr>
							<td>773 Alquiler de otra maquinaria, equipos y bienes
								tangibles</td>
						</tr>
						<tr>
							<td>7731 Alquiler de maquinaria y equipo de uso agrícola</td>
						</tr>
						<tr>
							<td>7732 Alquiler de maquinaria y equipo para la
								construcción e ingeniería civil</td>
						</tr>
						<tr>
							<td>7733 Alquiler de maquinaria y equipo de oficina,
								incluidos ordenadores</td>
						</tr>
						<tr>
							<td>7734 Alquiler de medios de navegación</td>
						</tr>
						<tr>
							<td>7735 Alquiler de medios de transporte aéreo</td>
						</tr>
						<tr>
							<td>7739 Alquiler de otra maquinaria, equipos y bienes
								tangibles n.c.o.p.</td>
						</tr>
						<tr>
							<td>774 Arrendamiento de la propiedad intelectual y
								productos similares, excepto trabajos protegidos por los
								derechos de autor</td>
						</tr>
						<tr>
							<td>7740 Arrendamiento de la propiedad intelectual y
								productos similares, excepto trabajos protegidos por los
								derechos de autor</td>
						</tr>
						<tr>
							<td>78 Actividades relacionadas con el empleo</td>
						</tr>
						<tr>
							<td>781 Actividades de las agencias de colocación</td>
						</tr>
						<tr>
							<td>7810 Actividades de las agencias de colocación</td>
						</tr>
						<tr>
							<td>782 Actividades de las empresas de trabajo temporal</td>
						</tr>
						<tr>
							<td>7820 Actividades de las empresas de trabajo temporal</td>
						</tr>
						<tr>
							<td>783 Otra provisión de recursos humanos</td>
						</tr>
						<tr>
							<td>7830 Otra provisión de recursos humanos</td>
						</tr>
						<tr>
							<td>79 Actividades de agencias de viajes, operadores
								turísticos, servicios de reservas y actividades relacionadas con
								los mismos</td>
						</tr>
						<tr>
							<td>791 Actividades de agencias de viajes y operadores
								turísticos</td>
						</tr>
						<tr>
							<td>7911 Actividades de las agencias de viajes</td>
						</tr>
						<tr>
							<td>7912 Actividades de los operadores turísticos</td>
						</tr>
						<tr>
							<td>799 Otros servicios de reservas y actividades
								relacionadas con los mismos</td>
						</tr>
						<tr>
							<td>7990 Otros servicios de reservas y actividades
								relacionadas con los mismos</td>
						</tr>
						<tr>
							<td>80 Actividades de seguridad e investigación</td>
						</tr>
						<tr>
							<td>801 Actividades de seguridad privada</td>
						</tr>
						<tr>
							<td>8010 Actividades de seguridad privada</td>
						</tr>
						<tr>
							<td>802 Servicios de sistemas de seguridad</td>
						</tr>
						<tr>
							<td>8020 Servicios de sistemas de seguridad</td>
						</tr>
						<tr>
							<td>803 Actividades de investigación</td>
						</tr>
						<tr>
							<td>8030 Actividades de investigación</td>
						</tr>
						<tr>
							<td>81 Servicios a edificios y actividades de jardinería</td>
						</tr>
						<tr>
							<td>811 Servicios integrales a edificios e instalaciones</td>
						</tr>
						<tr>
							<td>8110 Servicios integrales a edificios e instalaciones</td>
						</tr>
						<tr>
							<td>812 Actividades de limpieza</td>
						</tr>
						<tr>
							<td>8121 Limpieza general de edificios</td>
						</tr>
						<tr>
							<td>8122 Otras actividades de limpieza industrial y de
								edificios</td>
						</tr>
						<tr>
							<td>8129 Otras actividades de limpieza</td>
						</tr>
						<tr>
							<td>813 Actividades de jardinería</td>
						</tr>
						<tr>
							<td>8130 Actividades de jardinería</td>
						</tr>
						<tr>
							<td>82 Actividades administrativas de oficina y otras
								actividades auxiliares a las empresas</td>
						</tr>
						<tr>
							<td>821 Actividades administrativas y auxiliares de oficina</td>
						</tr>
						<tr>
							<td>8211 Servicios administrativos combinados</td>
						</tr>
						<tr>
							<td>8219 Actividades de fotocopiado, preparación de
								documentos y otras actividades especializadas de oficina</td>
						</tr>
						<tr>
							<td>822 Actividades de los centros de llamadas</td>
						</tr>
						<tr>
							<td>8220 Actividades de los centros de llamadas</td>
						</tr>
						<tr>
							<td>823 Organización de convenciones y ferias de muestras</td>
						</tr>
						<tr>
							<td>8230 Organización de convenciones y ferias de muestras</td>
						</tr>
						<tr>
							<td>829 Actividades de apoyo a las empresas n.c.o.p.</td>
						</tr>
						<tr>
							<td>8291 Actividades de las agencias de cobros y de
								información comercial</td>
						</tr>
						<tr>
							<td>8292 Actividades de envasado y empaquetado</td>
						</tr>
						<tr>
							<td>8299 Otras actividades de apoyo a las empresas n.c.o.p.</td>
						</tr>
						<tr>
							<td>84 Administración Pública y defensa; Seguridad Social
								obligatoria</td>
						</tr>
						<tr>
							<td>841 Administración Pública y de la política económica y
								social</td>
						</tr>
						<tr>
							<td>8411 Actividades generales de la Administración Pública</td>
						</tr>
						<tr>
							<td>8412 Regulación de las actividades sanitarias,
								educativas y culturales y otros servicios sociales, excepto
								Seguridad Social</td>
						</tr>
						<tr>
							<td>8413 Regulación de la actividad económica y contribución
								a su mayor eficiencia</td>
						</tr>
						<tr>
							<td>842 Prestación de servicios a la comunidad en general</td>
						</tr>
						<tr>
							<td>8421 Asuntos exteriores</td>
						</tr>
						<tr>
							<td>8422 Defensa</td>
						</tr>
						<tr>
							<td>8423 Justicia</td>
						</tr>
						<tr>
							<td>8424 Orden público y seguridad</td>
						</tr>
						<tr>
							<td>8425 Protección civil</td>
						</tr>
						<tr>
							<td>843 Seguridad Social obligatoria</td>
						</tr>
						<tr>
							<td>8430 Seguridad Social obligatoria</td>
						</tr>
						<tr>
							<td>85 Educación</td>
						</tr>
						<tr>
							<td>851 Educación preprimaria</td>
						</tr>
						<tr>
							<td>8510 Educación preprimaria</td>
						</tr>
						<tr>
							<td>852 Educación primaria</td>
						</tr>
						<tr>
							<td>8520 Educación primaria</td>
						</tr>
						<tr>
							<td>853 Educación secundaria</td>
						</tr>
						<tr>
							<td>8531 Educación secundaria general</td>
						</tr>
						<tr>
							<td>8532 Educación secundaria técnica y profesional</td>
						</tr>
						<tr>
							<td>854 Educación postsecundaria</td>
						</tr>
						<tr>
							<td>8541 Educación postsecundaria no terciaria</td>
						</tr>
						<tr>
							<td>8543 Educación universitaria</td>
						</tr>
						<tr>
							<td>8544 Educación terciaria no universitaria</td>
						</tr>
						<tr>
							<td>855 Otra educación</td>
						</tr>
						<tr>
							<td>8551 Educación deportiva y recreativa</td>
						</tr>
						<tr>
							<td>8552 Educación cultural</td>
						</tr>
						<tr>
							<td>8553 Actividades de las escuelas de conducción y
								pilotaje</td>
						</tr>
						<tr>
							<td>8559 Otra educación n.c.o.p.</td>
						</tr>
						<tr>
							<td>856 Actividades auxiliares a la educación</td>
						</tr>
						<tr>
							<td>8560 Actividades auxiliares a la educación</td>
						</tr>
						<tr>
							<td>86 Actividades sanitarias</td>
						</tr>
						<tr>
							<td>861 Actividades hospitalarias</td>
						</tr>
						<tr>
							<td>8610 Actividades hospitalarias</td>
						</tr>
						<tr>
							<td>862 Actividades médicas y odontológicas</td>
						</tr>
						<tr>
							<td>8621 Actividades de medicina general</td>
						</tr>
						<tr>
							<td>8622 Actividades de medicina especializada</td>
						</tr>
						<tr>
							<td>8623 Actividades odontológicas</td>
						</tr>
						<tr>
							<td>869 Otras actividades sanitarias</td>
						</tr>
						<tr>
							<td>8690 Otras actividades sanitarias</td>
						</tr>
						<tr>
							<td>87 Asistencia en establecimientos residenciales</td>
						</tr>
						<tr>
							<td>871 Asistencia en establecimientos residenciales con
								cuidados sanitarios</td>
						</tr>
						<tr>
							<td>8710 Asistencia en establecimientos residenciales con
								cuidados sanitarios</td>
						</tr>
						<tr>
							<td>872 Asistencia en establecimientos residenciales para
								personas con discapacidad intelectual, enfermedad mental y
								drogodependencia</td>
						</tr>
						<tr>
							<td>8720 Asistencia en establecimientos residenciales para
								personas con discapacidad intelectual, enfermedad mental y
								drogodependencia</td>
						</tr>
						<tr>
							<td>873 Asistencia en establecimientos residenciales para
								personas mayores y con discapacidad física</td>
						</tr>
						<tr>
							<td>8731 Asistencia en establecimientos residenciales para
								personas mayores</td>
						</tr>
						<tr>
							<td>8732 Asistencia en establecimientos residenciales para
								personas con discapacidad física</td>
						</tr>
						<tr>
							<td>879 Otras actividades de asistencia en establecimientos
								residenciales</td>
						</tr>
						<tr>
							<td>8790 Otras actividades de asistencia en establecimientos
								residenciales</td>
						</tr>
						<tr>
							<td>88 Actividades de servicios sociales sin alojamiento</td>
						</tr>
						<tr>
							<td>881 Actividades de servicios sociales sin alojamiento
								para personas mayores y con discapacidad</td>
						</tr>
						<tr>
							<td>8811 Actividades de servicios sociales sin alojamiento
								para personas mayores</td>
						</tr>
						<tr>
							<td>8812 Actividades de servicios sociales sin alojamiento
								para personas con discapacidad</td>
						</tr>
						<tr>
							<td>889 Otros actividades de servicios sociales sin
								alojamiento</td>
						</tr>
						<tr>
							<td>8891 Actividades de cuidado diurno de niños</td>
						</tr>
						<tr>
							<td>8899 Otros actividades de servicios sociales sin
								alojamiento n.c.o.p.</td>
						</tr>
						<tr>
							<td>90 Actividades de creación, artísticas y espectáculos</td>
						</tr>
						<tr>
							<td>900 Actividades de creación, artísticas y espectáculos</td>
						</tr>
						<tr>
							<td>9001 Artes escénicas</td>
						</tr>
						<tr>
							<td>9002 Actividades auxiliares a las artes escénicas</td>
						</tr>
						<tr>
							<td>9003 Creación artística y literaria</td>
						</tr>
						<tr>
							<td>9004 Gestión de salas de espectáculos</td>
						</tr>
						<tr>
							<td>91 Actividades de bibliotecas, archivos, museos y otras
								actividades culturales</td>
						</tr>
						<tr>
							<td>910 Actividades de bibliotecas, archivos, museos y otras
								actividades culturales</td>
						</tr>
						<tr>
							<td>9102 Actividades de museos</td>
						</tr>
						<tr>
							<td>9103 Gestión de lugares y edificios históricos</td>
						</tr>
						<tr>
							<td>9104 Actividades de los jardines botánicos, parques
								zoológicos y reservas naturales</td>
						</tr>
						<tr>
							<td>9105 Actividades de bibliotecas</td>
						</tr>
						<tr>
							<td>9106 Actividades de archivos</td>
						</tr>
						<tr>
							<td>92 Actividades de juegos de azar y apuestas</td>
						</tr>
						<tr>
							<td>920 Actividades de juegos de azar y apuestas</td>
						</tr>
						<tr>
							<td>9200 Actividades de juegos de azar y apuestas</td>
						</tr>
						<tr>
							<td>93 Actividades deportivas, recreativas y de
								entretenimiento</td>
						</tr>
						<tr>
							<td>931 Actividades deportivas</td>
						</tr>
						<tr>
							<td>9311 Gestión de instalaciones deportivas</td>
						</tr>
						<tr>
							<td>9312 Actividades de los clubes deportivos</td>
						</tr>
						<tr>
							<td>9313 Actividades de los gimnasios</td>
						</tr>
						<tr>
							<td>9319 Otras actividades deportivas</td>
						</tr>
						<tr>
							<td>932 Actividades recreativas y de entretenimiento</td>
						</tr>
						<tr>
							<td>9321 Actividades de los parques de atracciones y los
								parques temáticos</td>
						</tr>
						<tr>
							<td>9329 Otras actividades recreativas y de entretenimiento</td>
						</tr>
						<tr>
							<td>94 Actividades asociativas</td>
						</tr>
						<tr>
							<td>941 Actividades de organizaciones empresariales,
								profesionales y patronales</td>
						</tr>
						<tr>
							<td>9411 Actividades de organizaciones empresariales y
								patronales</td>
						</tr>
						<tr>
							<td>9412 Actividades de organizaciones profesionales</td>
						</tr>
						<tr>
							<td>942 Actividades sindicales</td>
						</tr>
						<tr>
							<td>9420 Actividades sindicales</td>
						</tr>
						<tr>
							<td>949 Otras actividades asociativas</td>
						</tr>
						<tr>
							<td>9491 Actividades de organizaciones religiosas</td>
						</tr>
						<tr>
							<td>9492 Actividades de organizaciones políticas</td>
						</tr>
						<tr>
							<td>9499 Otras actividades asociativas n.c.o.p.</td>
						</tr>
						<tr>
							<td>95 Reparación de ordenadores, efectos personales y
								artículos de uso doméstico</td>
						</tr>
						<tr>
							<td>951 Reparación de ordenadores y equipos de comunicación</td>
						</tr>
						<tr>
							<td>9511 Reparación de ordenadores y equipos periféricos</td>
						</tr>
						<tr>
							<td>9512 Reparación de equipos de comunicación</td>
						</tr>
						<tr>
							<td>952 Reparación de efectos personales y artículos de uso
								doméstico</td>
						</tr>
						<tr>
							<td>9521 Reparación de aparatos electrónicos de audio y
								vídeo de uso doméstico</td>
						</tr>
						<tr>
							<td>9522 Reparación de aparatos electrodomésticos y de
								equipos para el hogar y el jardín</td>
						</tr>
						<tr>
							<td>9523 Reparación de calzado y artículos de cuero</td>
						</tr>
						<tr>
							<td>9524 Reparación de muebles y artículos de menaje</td>
						</tr>
						<tr>
							<td>9525 Reparación de relojes y joyería</td>
						</tr>
						<tr>
							<td>9529 Reparación de otros efectos personales y artículos
								de uso doméstico</td>
						</tr>
						<tr>
							<td>96 Otros servicios personales</td>
						</tr>
						<tr>
							<td>960 Otros servicios personales</td>
						</tr>
						<tr>
							<td>9601 Lavado y limpieza de prendas textiles y de piel</td>
						</tr>
						<tr>
							<td>9602 Peluquería y otros tratamientos de belleza</td>
						</tr>
						<tr>
							<td>9603 Pompas fúnebres y actividades relacionadas</td>
						</tr>
						<tr>
							<td>9604 Actividades de mantenimiento físico</td>
						</tr>
						<tr>
							<td>9609 Otras servicios personales n.c.o.p.</td>
						</tr>
						<tr>
							<td>97 Actividades de los hogares como empleadores de
								personal doméstico</td>
						</tr>
						<tr>
							<td>970 Actividades de los hogares como empleadores de
								personal doméstico</td>
						</tr>
						<tr>
							<td>9700 Actividades de los hogares como empleadores de
								personal doméstico</td>
						</tr>
						<tr>
							<td>98 Actividades de los hogares como productores de bienes
								y servicios para uso propio</td>
						</tr>
						<tr>
							<td>981 Actividades de los hogares como productores de
								bienes para uso propio</td>
						</tr>
						<tr>
							<td>9810 Actividades de los hogares como productores de
								bienes para uso propio</td>
						</tr>
						<tr>
							<td>982 Actividades de los hogares como productores de
								servicios para uso propio</td>
						</tr>
						<tr>
							<td>9820 Actividades de los hogares como productores de
								servicios para uso propio</td>
						</tr>
						<tr>
							<td>99 Actividades de organizaciones y organismos
								extraterritoriales</td>
						</tr>
						<tr>
							<td>990 Actividades de organizaciones y organismos
								extraterritoriales</td>
						</tr>
						<tr>
							<td>9900 Actividades de organizaciones y organismos
								extraterritoriales</td>
						</tr>



					</tbody>
				</table>



			</div>
			<div class="modal-footer">
				<p>Busque el código en la tabla y después márquelo en la casilla





				
				<p>
					<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	function validate2() {
		res = true;
		cnae1 = document.getElementById("cnae1");
		principalProducto1 = document.getElementById("principalProducto1");
		principalProducto2 = document.getElementById("principalProducto2");
		cnae1 = document.getElementById("cnae1");
		if (principalProducto2.value.length > 0) {
			principalProducto1.required = false;

		} else {
			principalProducto1.required = true;
		}


		if (cnae1.value == "Selecciona") {
			errorCnae1.hidden = false;
			cnae1.focus();
			res = false;
		} else {
			errorCnae1.hidden = true;
		}

		return res;

	}
</script>

<script type="text/javascript">
	$(document).ready(function() {

		(function($) {

			$('#filter').keyup(function() {

				var rex = new RegExp($(this).val(), 'i');
				$('.searchable tr').hide();
				$('.searchable tr').filter(function() {
					return rex.test($(this).text());
				}).show();

			})

		}(jQuery));

	});
</script>

