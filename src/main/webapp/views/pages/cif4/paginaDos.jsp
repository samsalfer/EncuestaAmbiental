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
						<b>A3. Actividad econ�mica principal de la empresa en
							Andaluc�a</b>
					</div>
					<div class="panel-body">
						<div class="alert alert-success">
							La actividad econ&oacutemica principal es la que genera mayor
							valor a�adido o, en su defecto, mayor cifra de negocios, o bien,
							a la que se dedica mayor n&uacute;mero de personal ocupado,
							siempre atendiendo a la actividad que la <b>empresa a la que
								se dirige el cuestionario desarrolla en Andaluc&iacutea</b>.
						</div>
						<div class="row">
							<!-- Tab12 -->
							<div class="col-lg-10">
								<div class="form-group">
									<label for="name">3.1 Descripci�n</label>
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
										un c�digo CNAE</p>
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
						<b>A4. Informaci�n econ�mica</b>
					</div>
					<div class="panel-body">

						<div class="alert alert-success">
							En este apartado se requieren los datos para el <b>total de
								los establecimientos con actividad econ�mica en Andaluc�a</b> sobre
							facturaci�n total y gasto total efectuados en <b>2014</b>. La <b>facturaci�n</b>
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
										<b>Facturaci�n</b>
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
				<h4 class="modal-title" id="myModalLabel">C�digos de CNAE 2009</h4>
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
							<td>0113 Cultivo de hortalizas, ra�ces y tub�rculos</td>
						</tr>
						<tr>
							<td>0114 Cultivo de ca�a de az�car</td>
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
							<td>0123 Cultivo de c�tricos</td>
						</tr>
						<tr>
							<td>0124 Cultivo de frutos con hueso y pepitas</td>
						</tr>
						<tr>
							<td>0125 Cultivo de otros �rboles y arbustos frutales y
								frutos secos</td>
						</tr>
						<tr>
							<td>0126 Cultivo de frutos oleaginosos</td>
						</tr>
						<tr>
							<td>0127 Cultivo de plantas para bebidas</td>
						</tr>
						<tr>
							<td>0128 Cultivo de especias, plantas arom�ticas,
								medicinales y farmac�uticas</td>
						</tr>
						<tr>
							<td>0129 Otros cultivos perennes</td>
						</tr>
						<tr>
							<td>013 Propagaci�n de plantas</td>
						</tr>
						<tr>
							<td>0130 Propagaci�n de plantas</td>
						</tr>
						<tr>
							<td>014 Producci�n ganadera</td>
						</tr>
						<tr>
							<td>0141 Explotaci�n de ganado bovino para la producci�n de
								leche</td>
						</tr>
						<tr>
							<td>0142 Explotaci�n de otro ganado bovino y b�falos</td>
						</tr>
						<tr>
							<td>0143 Explotaci�n de caballos y otros equinos</td>
						</tr>
						<tr>
							<td>0144 Explotaci�n de camellos y otros cam�lidos</td>
						</tr>
						<tr>
							<td>0145 Explotaci�n de ganado ovino y caprino</td>
						</tr>
						<tr>
							<td>0146 Explotaci�n de ganado porcino</td>
						</tr>
						<tr>
							<td>0147 Avicultura</td>
						</tr>
						<tr>
							<td>0149 Otras explotaciones de ganado</td>
						</tr>
						<tr>
							<td>015 Producci�n agr�cola combinada con la producci�n
								ganadera</td>
						</tr>
						<tr>
							<td>0150 Producci�n agr�cola combinada con la producci�n
								ganadera</td>
						</tr>
						<tr>
							<td>016 Actividades de apoyo a la agricultura, a la
								ganader�a y de preparaci�n posterior a la cosecha</td>
						</tr>
						<tr>
							<td>0161 Actividades de apoyo a la agricultura</td>
						</tr>
						<tr>
							<td>0162 Actividades de apoyo a la ganader�a</td>
						</tr>
						<tr>
							<td>0163 Actividades de preparaci�n posterior a la cosecha</td>
						</tr>
						<tr>
							<td>0164 Tratamiento de semillas para reproducci�n</td>
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
							<td>02 Silvicultura y explotaci�n forestal</td>
						</tr>
						<tr>
							<td>021 Silvicultura y otras actividades forestales</td>
						</tr>
						<tr>
							<td>0210 Silvicultura y otras actividades forestales</td>
						</tr>
						<tr>
							<td>022 Explotaci�n de la madera</td>
						</tr>
						<tr>
							<td>0220 Explotaci�n de la madera</td>
						</tr>
						<tr>
							<td>023 Recolecci�n de productos silvestres, excepto madera</td>
						</tr>
						<tr>
							<td>0230 Recolecci�n de productos silvestres, excepto madera</td>
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
							<td>05 Extracci�n de antracita, hulla y lignito</td>
						</tr>
						<tr>
							<td>051 Extracci�n de antracita y hulla</td>
						</tr>
						<tr>
							<td>0510 Extracci�n de antracita y hulla</td>
						</tr>
						<tr>
							<td>052 Extracci�n de lignito</td>
						</tr>
						<tr>
							<td>0520 Extracci�n de lignito</td>
						</tr>
						<tr>
							<td>06 Extracci�n de crudo de petr�leo y gas natural</td>
						</tr>
						<tr>
							<td>061 Extracci�n de crudo de petr�leo</td>
						</tr>
						<tr>
							<td>0610 Extracci�n de crudo de petr�leo</td>
						</tr>
						<tr>
							<td>062 Extracci�n de gas natural</td>
						</tr>
						<tr>
							<td>0620 Extracci�n de gas natural</td>
						</tr>
						<tr>
							<td>07 Extracci�n de minerales met�licos</td>
						</tr>
						<tr>
							<td>071 Extracci�n de minerales de hierro</td>
						</tr>
						<tr>
							<td>0710 Extracci�n de minerales de hierro</td>
						</tr>
						<tr>
							<td>072 Extracci�n de minerales met�licos no f�rreos</td>
						</tr>
						<tr>
							<td>0721 Extracci�n de minerales de uranio y torio</td>
						</tr>
						<tr>
							<td>0729 Extracci�n de otros minerales met�licos no f�rreos</td>
						</tr>
						<tr>
							<td>08 Otras industrias extractivas</td>
						</tr>
						<tr>
							<td>081 Extracci�n de piedra, arena y arcilla</td>
						</tr>
						<tr>
							<td>0811 Extracci�n de piedra ornamental y para la
								construcci�n, piedra caliza, yeso, creta y pizarra</td>
						</tr>
						<tr>
							<td>0812 Extracci�n de gravas y arenas; extracci�n de
								arcilla y caol�n</td>
						</tr>
						<tr>
							<td>089 Industrias extractivas n.c.o.p.</td>
						</tr>
						<tr>
							<td>0891 Extracci�n de minerales para productos qu�micos y
								fertilizantes</td>
						</tr>
						<tr>
							<td>0892 Extracci�n de turba</td>
						</tr>
						<tr>
							<td>0893 Extracci�n de sal</td>
						</tr>
						<tr>
							<td>0899 Otras industrias extractivas n.c.o.p.</td>
						</tr>
						<tr>
							<td>09 Actividades de apoyo a las industrias extractivas</td>
						</tr>
						<tr>
							<td>091 Actividades de apoyo a la extracci�n de petr�leo y
								gas natural</td>
						</tr>
						<tr>
							<td>0910 Actividades de apoyo a la extracci�n de petr�leo y
								gas natural</td>
						</tr>
						<tr>
							<td>099 Actividades de apoyo a otras industrias extractivas</td>
						</tr>
						<tr>
							<td>0990 Actividades de apoyo a otras industrias extractivas</td>
						</tr>
						<tr>
							<td>10 Industria de la alimentaci�n</td>
						</tr>
						<tr>
							<td>101 Procesado y conservaci�n de carne y elaboraci�n de
								productos c�rnicos</td>
						</tr>
						<tr>
							<td>1011 Procesado y conservaci�n de carne</td>
						</tr>
						<tr>
							<td>1012 Procesado y conservaci�n de volater�a</td>
						</tr>
						<tr>
							<td>1013 Elaboraci�n de productos c�rnicos y de volater�a</td>
						</tr>
						<tr>
							<td>102 Procesado y conservaci�n de pescados, crust�ceos y
								moluscos</td>
						</tr>
						<tr>
							<td>1021 Procesado de pescados, crust�ceos y moluscos</td>
						</tr>
						<tr>
							<td>1022 Fabricaci�n de conservas de pescado</td>
						</tr>
						<tr>
							<td>103 Procesado y conservaci�n de frutas y hortalizas</td>
						</tr>
						<tr>
							<td>1031 Procesado y conservaci�n de patatas</td>
						</tr>
						<tr>
							<td>1032 Elaboraci�n de zumos de frutas y hortalizas</td>
						</tr>
						<tr>
							<td>1039 Otro procesado y conservaci�n de frutas y
								hortalizas</td>
						</tr>
						<tr>
							<td>104 Fabricaci�n de aceites y grasas vegetales y animales</td>
						</tr>
						<tr>
							<td>1042 Fabricaci�n de margarina y grasas comestibles
								similares</td>
						</tr>
						<tr>
							<td>1043 Fabricaci�n de aceite de oliva</td>
						</tr>
						<tr>
							<td>1044 Fabricaci�n de otros aceites y grasas</td>
						</tr>
						<tr>
							<td>105 Fabricaci�n de productos l�cteos</td>
						</tr>
						<tr>
							<td>1052 Elaboraci�n de helados</td>
						</tr>
						<tr>
							<td>1053 Fabricaci�n de quesos</td>
						</tr>
						<tr>
							<td>1054 Preparaci�n de leche y otros productos l�cteos</td>
						</tr>
						<tr>
							<td>106 Fabricaci�n de productos de moliner�a, almidones y
								productos amil�ceos</td>
						</tr>
						<tr>
							<td>1061 Fabricaci�n de productos de moliner�a</td>
						</tr>
						<tr>
							<td>1062 Fabricaci�n de almidones y productos amil�ceos</td>
						</tr>
						<tr>
							<td>107 Fabricaci�n de productos de panader�a y pastas
								alimenticias</td>
						</tr>
						<tr>
							<td>1071 Fabricaci�n de pan y de productos frescos de
								panader�a y pasteler�a</td>
						</tr>
						<tr>
							<td>1072 Fabricaci�n de galletas y productos de panader�a y
								pasteler�a de larga duraci�n</td>
						</tr>
						<tr>
							<td>1073 Fabricaci�n de pastas alimenticias, cusc�s y
								productos similares</td>
						</tr>
						<tr>
							<td>108 Fabricaci�n de otros productos alimenticios</td>
						</tr>
						<tr>
							<td>1081 Fabricaci�n de az�car</td>
						</tr>
						<tr>
							<td>1082 Fabricaci�n de cacao, chocolate y productos de
								confiter�a</td>
						</tr>
						<tr>
							<td>1083 Elaboraci�n de caf�, t� e infusiones</td>
						</tr>
						<tr>
							<td>1084 Elaboraci�n de especias, salsas y condimentos</td>
						</tr>
						<tr>
							<td>1085 Elaboraci�n de platos y comidas preparados</td>
						</tr>
						<tr>
							<td>1086 Elaboraci�n de preparados alimenticios
								homogeneizados y alimentos diet�ticos</td>
						</tr>
						<tr>
							<td>1089 Elaboraci�n de otros productos alimenticios
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>109 Fabricaci�n de productos para la alimentaci�n animal</td>
						</tr>
						<tr>
							<td>1091 Fabricaci�n de productos para la alimentaci�n de
								animales de granja</td>
						</tr>
						<tr>
							<td>1092 Fabricaci�n de productos para la alimentaci�n de
								animales de compa��a</td>
						</tr>
						<tr>
							<td>11 Fabricaci�n de bebidas</td>
						</tr>
						<tr>
							<td>110 Fabricaci�n de bebidas</td>
						</tr>
						<tr>
							<td>1101 Destilaci�n, rectificaci�n y mezcla de bebidas
								alcoh�licas</td>
						</tr>
						<tr>
							<td>1102 Elaboraci�n de vinos</td>
						</tr>
						<tr>
							<td>1103 Elaboraci�n de sidra y otras bebidas fermentadas a
								partir de frutas</td>
						</tr>
						<tr>
							<td>1104 Elaboraci�n de otras bebidas no destiladas,
								procedentes de la fermentaci�n</td>
						</tr>
						<tr>
							<td>1105 Fabricaci�n de cerveza</td>
						</tr>
						<tr>
							<td>1106 Fabricaci�n de malta</td>
						</tr>
						<tr>
							<td>1107 Fabricaci�n de bebidas no alcoh�licas; producci�n
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
							<td>131 Preparaci�n e hilado de fibras textiles</td>
						</tr>
						<tr>
							<td>1310 Preparaci�n e hilado de fibras textiles</td>
						</tr>
						<tr>
							<td>132 Fabricaci�n de tejidos textiles</td>
						</tr>
						<tr>
							<td>1320 Fabricaci�n de tejidos textiles</td>
						</tr>
						<tr>
							<td>133 Acabado de textiles</td>
						</tr>
						<tr>
							<td>1330 Acabado de textiles</td>
						</tr>
						<tr>
							<td>139 Fabricaci�n de otros productos textiles</td>
						</tr>
						<tr>
							<td>1391 Fabricaci�n de tejidos de punto</td>
						</tr>
						<tr>
							<td>1392 Fabricaci�n de art�culos confeccionados con
								textiles, excepto prendas de vestir</td>
						</tr>
						<tr>
							<td>1393 Fabricaci�n de alfombras y moquetas</td>
						</tr>
						<tr>
							<td>1394 Fabricaci�n de cuerdas, cordeles, bramantes y redes</td>
						</tr>
						<tr>
							<td>1395 Fabricaci�n de telas no tejidas y art�culos
								confeccionados con ellas, excepto prendas de vestir</td>
						</tr>
						<tr>
							<td>1396 Fabricaci�n de otros productos textiles de uso
								t�cnico e industrial</td>
						</tr>
						<tr>
							<td>1399 Fabricaci�n de otros productos textiles n.c.o.p.</td>
						</tr>
						<tr>
							<td>14 Confecci�n de prendas de vestir</td>
						</tr>
						<tr>
							<td>141 Confecci�n de prendas de vestir, excepto de
								peleter�a</td>
						</tr>
						<tr>
							<td>1411 Confecci�n de prendas de vestir de cuero</td>
						</tr>
						<tr>
							<td>1412 Confecci�n de ropa de trabajo</td>
						</tr>
						<tr>
							<td>1413 Confecci�n de otras prendas de vestir exteriores</td>
						</tr>
						<tr>
							<td>1414 Confecci�n de ropa interior</td>
						</tr>
						<tr>
							<td>1419 Confecci�n de otras prendas de vestir y accesorios</td>
						</tr>
						<tr>
							<td>142 Fabricaci�n de art�culos de peleter�a</td>
						</tr>
						<tr>
							<td>1420 Fabricaci�n de art�culos de peleter�a</td>
						</tr>
						<tr>
							<td>143 Confecci�n de prendas de vestir de punto</td>
						</tr>
						<tr>
							<td>1431 Confecci�n de calceter�a</td>
						</tr>
						<tr>
							<td>1439 Confecci�n de otras prendas de vestir de punto</td>
						</tr>
						<tr>
							<td>15 Industria del cuero y del calzado</td>
						</tr>
						<tr>
							<td>151 Preparaci�n, curtido y acabado del cuero;
								fabricaci�n de art�culos de marroquiner�a, viaje y de
								guarnicioner�a y talabarter�a; preparaci�n y te�ido de pieles</td>
						</tr>
						<tr>
							<td>1511 Preparaci�n, curtido y acabado del cuero;
								preparaci�n y te�ido de pieles</td>
						</tr>
						<tr>
							<td>1512 Fabricaci�n de art�culos de marroquiner�a, viaje y
								de guarnicioner�a y talabarter�a</td>
						</tr>
						<tr>
							<td>152 Fabricaci�n de calzado</td>
						</tr>
						<tr>
							<td>1520 Fabricaci�n de calzado</td>
						</tr>
						<tr>
							<td>16 Industria de la madera y del corcho, excepto muebles;
								cester�a y esparter�a</td>
						</tr>
						<tr>
							<td>161 Aserrado y cepillado de la madera</td>
						</tr>
						<tr>
							<td>1610 Aserrado y cepillado de la madera</td>
						</tr>
						<tr>
							<td>162 Fabricaci�n de productos de madera, corcho, cester�a
								y esparter�a</td>
						</tr>
						<tr>
							<td>1621 Fabricaci�n de chapas y tableros de madera</td>
						</tr>
						<tr>
							<td>1622 Fabricaci�n de suelos de madera ensamblados</td>
						</tr>
						<tr>
							<td>1623 Fabricaci�n de otras estructuras de madera y piezas
								de carpinter�a y ebanister�a para la construcci�n</td>
						</tr>
						<tr>
							<td>1624 Fabricaci�n de envases y embalajes de madera</td>
						</tr>
						<tr>
							<td>1629 Fabricaci�n de otros productos de madera; art�culos
								de corcho, cester�a y esparter�a</td>
						</tr>
						<tr>
							<td>17 Industria del papel</td>
						</tr>
						<tr>
							<td>171 Fabricaci�n de pasta papelera, papel y cart�n</td>
						</tr>
						<tr>
							<td>1711 Fabricaci�n de pasta papelera</td>
						</tr>
						<tr>
							<td>1712 Fabricaci�n de papel y cart�n</td>
						</tr>
						<tr>
							<td>172 Fabricaci�n de art�culos de papel y de cart�n</td>
						</tr>
						<tr>
							<td>1721 Fabricaci�n de papel y cart�n ondulados;
								fabricaci�n de envases y embalajes de papel y cart�n</td>
						</tr>
						<tr>
							<td>1722 Fabricaci�n de art�culos de papel y cart�n para uso
								dom�stico, sanitario e higi�nico</td>
						</tr>
						<tr>
							<td>1723 Fabricaci�n de art�culos de papeler�a</td>
						</tr>
						<tr>
							<td>1724 Fabricaci�n de papeles pintados</td>
						</tr>
						<tr>
							<td>1729 Fabricaci�n de otros art�culos de papel y cart�n</td>
						</tr>
						<tr>
							<td>18 Artes gr�ficas y reproducci�n de soportes grabados</td>
						</tr>
						<tr>
							<td>181 Artes gr�ficas y servicios relacionados con las
								mismas</td>
						</tr>
						<tr>
							<td>1811 Artes gr�ficas y servicios relacionados con las
								mismas</td>
						</tr>
						<tr>
							<td>1812 Otras actividades de impresi�n y artes gr�ficas</td>
						</tr>
						<tr>
							<td>1813 Servicios de preimpresi�n y preparaci�n de soportes</td>
						</tr>
						<tr>
							<td>1814 Encuadernaci�n y servicios relacionados con la
								misma</td>
						</tr>
						<tr>
							<td>182 Reproducci�n de soportes grabados</td>
						</tr>
						<tr>
							<td>1820 Reproducci�n de soportes grabados</td>
						</tr>
						<tr>
							<td>19 Coquer�as y refino de petr�leo</td>
						</tr>
						<tr>
							<td>191 Coquer�as</td>
						</tr>
						<tr>
							<td>1910 Coquer�as</td>
						</tr>
						<tr>
							<td>192 Refino de petr�leo</td>
						</tr>
						<tr>
							<td>1920 Refino de petr�leo</td>
						</tr>
						<tr>
							<td>20 Industria qu�mica</td>
						</tr>
						<tr>
							<td>201 Fabricaci�n de productos qu�micos b�sicos,
								compuestos nitrogenados, fertilizantes, pl�sticos y caucho
								sint�tico en formas primarias</td>
						</tr>
						<tr>
							<td>2011 Fabricaci�n de gases industriales</td>
						</tr>
						<tr>
							<td>2012 Fabricaci�n de colorantes y pigmentos</td>
						</tr>
						<tr>
							<td>2013 Fabricaci�n de otros productos b�sicos de qu�mica
								inorg�nica</td>
						</tr>
						<tr>
							<td>2014 Fabricaci�n de otros productos b�sicos de qu�mica
								org�nica</td>
						</tr>
						<tr>
							<td>2015 Fabricaci�n de fertilizantes y compuestos
								nitrogenados</td>
						</tr>
						<tr>
							<td>2016 Fabricaci�n de pl�sticos en formas primarias</td>
						</tr>
						<tr>
							<td>2017 Fabricaci�n de caucho sint�tico en formas primarias</td>
						</tr>
						<tr>
							<td>202 Fabricaci�n de pesticidas y otros productos
								agroqu�micos</td>
						</tr>
						<tr>
							<td>2020 Fabricaci�n de pesticidas y otros productos
								agroqu�micos</td>
						</tr>
						<tr>
							<td>203 Fabricaci�n de pinturas, barnices y revestimientos
								similares; tintas de imprenta y masillas</td>
						</tr>
						<tr>
							<td>2030 Fabricaci�n de pinturas, barnices y revestimientos
								similares; tintas de imprenta y masillas</td>
						</tr>
						<tr>
							<td>204 Fabricaci�n de jabones, detergentes y otros
								art�culos de limpieza y abrillantamiento; fabricaci�n de
								perfumes y cosm�ticos</td>
						</tr>
						<tr>
							<td>2041 Fabricaci�n de jabones, detergentes y otros
								art�culos de limpieza y abrillantamiento</td>
						</tr>
						<tr>
							<td>2042 Fabricaci�n de perfumes y cosm�ticos</td>
						</tr>
						<tr>
							<td>205 Fabricaci�n de otros productos qu�micos</td>
						</tr>
						<tr>
							<td>2051 Fabricaci�n de explosivos</td>
						</tr>
						<tr>
							<td>2052 Fabricaci�n de colas</td>
						</tr>
						<tr>
							<td>2053 Fabricaci�n de aceites esenciales</td>
						</tr>
						<tr>
							<td>2059 Fabricaci�n de otros productos qu�micos n.c.o.p.</td>
						</tr>
						<tr>
							<td>206 Fabricaci�n de fibras artificiales y sint�ticas</td>
						</tr>
						<tr>
							<td>2060 Fabricaci�n de fibras artificiales y sint�ticas</td>
						</tr>
						<tr>
							<td>21 Fabricaci�n de productos farmac�uticos</td>
						</tr>
						<tr>
							<td>211 Fabricaci�n de productos farmac�uticos de base</td>
						</tr>
						<tr>
							<td>2110 Fabricaci�n de productos farmac�uticos de base</td>
						</tr>
						<tr>
							<td>212 Fabricaci�n de especialidades farmac�uticas</td>
						</tr>
						<tr>
							<td>2120 Fabricaci�n de especialidades farmac�uticas</td>
						</tr>
						<tr>
							<td>22 Fabricaci�n de productos de caucho y pl�sticos</td>
						</tr>
						<tr>
							<td>221 Fabricaci�n de productos de caucho</td>
						</tr>
						<tr>
							<td>2211 Fabricaci�n de neum�ticos y c�maras de caucho;
								reconstrucci�n y recauchutado de neum�ticos</td>
						</tr>
						<tr>
							<td>2219 Fabricaci�n de otros productos de caucho</td>
						</tr>
						<tr>
							<td>222 Fabricaci�n de productos de pl�stico</td>
						</tr>
						<tr>
							<td>2221 Fabricaci�n de placas, hojas, tubos y perfiles de
								pl�stico</td>
						</tr>
						<tr>
							<td>2222 Fabricaci�n de envases y embalajes de pl�stico</td>
						</tr>
						<tr>
							<td>2223 Fabricaci�n de productos de pl�stico para la
								construcci�n</td>
						</tr>
						<tr>
							<td>2229 Fabricaci�n de otros productos de pl�stico</td>
						</tr>
						<tr>
							<td>23 Fabricaci�n de otros productos minerales no met�licos</td>
						</tr>
						<tr>
							<td>231 Fabricaci�n de vidrio y productos de vidrio</td>
						</tr>
						<tr>
							<td>2311 Fabricaci�n de vidrio plano</td>
						</tr>
						<tr>
							<td>2312 Manipulado y transformaci�n de vidrio plano</td>
						</tr>
						<tr>
							<td>2313 Fabricaci�n de vidrio hueco</td>
						</tr>
						<tr>
							<td>2314 Fabricaci�n de fibra de vidrio</td>
						</tr>
						<tr>
							<td>2319 Fabricaci�n y manipulado de otro vidrio, incluido
								el vidrio t�cnico</td>
						</tr>
						<tr>
							<td>232 Fabricaci�n de productos cer�micos refractarios</td>
						</tr>
						<tr>
							<td>2320 Fabricaci�n de productos cer�micos refractarios</td>
						</tr>
						<tr>
							<td>233 Fabricaci�n de productos cer�micos para la
								construcci�n</td>
						</tr>
						<tr>
							<td>2331 Fabricaci�n de azulejos y baldosas de cer�mica</td>
						</tr>
						<tr>
							<td>2332 Fabricaci�n de ladrillos, tejas y productos de
								tierras cocidas para la construcci�n</td>
						</tr>
						<tr>
							<td>234 Fabricaci�n de otros productos cer�micos</td>
						</tr>
						<tr>
							<td>2341 Fabricaci�n de art�culos cer�micos de uso dom�stico
								y ornamental</td>
						</tr>
						<tr>
							<td>2342 Fabricaci�n de aparatos sanitarios cer�micos</td>
						</tr>
						<tr>
							<td>2343 Fabricaci�n de aisladores y piezas aislantes de
								material cer�mico</td>
						</tr>
						<tr>
							<td>2344 Fabricaci�n de otros productos cer�micos de uso
								t�cnico</td>
						</tr>
						<tr>
							<td>2349 Fabricaci�n de otros productos cer�micos</td>
						</tr>
						<tr>
							<td>235 Fabricaci�n de cemento, cal y yeso</td>
						</tr>
						<tr>
							<td>2351 Fabricaci�n de cemento</td>
						</tr>
						<tr>
							<td>2352 Fabricaci�n de cal y yeso</td>
						</tr>
						<tr>
							<td>236 Fabricaci�n de elementos de hormig�n, cemento y yeso</td>
						</tr>
						<tr>
							<td>2361 Fabricaci�n de elementos de hormig�n para la
								construcci�n</td>
						</tr>
						<tr>
							<td>2362 Fabricaci�n de elementos de yeso para la
								construcci�n</td>
						</tr>
						<tr>
							<td>2363 Fabricaci�n de hormig�n fresco</td>
						</tr>
						<tr>
							<td>2364 Fabricaci�n de mortero</td>
						</tr>
						<tr>
							<td>2365 Fabricaci�n de fibrocemento</td>
						</tr>
						<tr>
							<td>2369 Fabricaci�n de otros productos de hormig�n, yeso y
								cemento</td>
						</tr>
						<tr>
							<td>237 Corte, tallado y acabado de la piedra</td>
						</tr>
						<tr>
							<td>2370 Corte, tallado y acabado de la piedra</td>
						</tr>
						<tr>
							<td>239 Fabricaci�n de productos abrasivos y productos
								minerales no met�licos n.c.o.p.</td>
						</tr>
						<tr>
							<td>2391 Fabricaci�n de productos abrasivos</td>
						</tr>
						<tr>
							<td>2399 Fabricaci�n de otros productos minerales no
								met�licos n.c.o.p.</td>
						</tr>
						<tr>
							<td>24 Metalurgia; fabricaci�n de productos de hierro, acero
								y ferroaleaciones</td>
						</tr>
						<tr>
							<td>241 Fabricaci�n de productos b�sicos de hierro, acero y
								ferroaleaciones</td>
						</tr>
						<tr>
							<td>2410 Fabricaci�n de productos b�sicos de hierro, acero y
								ferroaleaciones</td>
						</tr>
						<tr>
							<td>242 Fabricaci�n de tubos, tuber�as, perfiles huecos y
								sus accesorios, de acero</td>
						</tr>
						<tr>
							<td>2420 Fabricaci�n de tubos, tuber�as, perfiles huecos y
								sus accesorios, de acero</td>
						</tr>
						<tr>
							<td>243 Fabricaci�n de otros productos de primera
								transformaci�n del acero</td>
						</tr>
						<tr>
							<td>2431 Estirado en fr�o</td>
						</tr>
						<tr>
							<td>2432 Laminaci�n en fr�o</td>
						</tr>
						<tr>
							<td>2433 Producci�n de perfiles en fr�o por conformaci�n con
								plegado</td>
						</tr>
						<tr>
							<td>2434 Trefilado en fr�o</td>
						</tr>
						<tr>
							<td>244 Producci�n de metales preciosos y de otros metales
								no f�rreos</td>
						</tr>
						<tr>
							<td>2441 Producci�n de metales preciosos</td>
						</tr>
						<tr>
							<td>2442 Producci�n de aluminio</td>
						</tr>
						<tr>
							<td>2443 Producci�n de plomo, zinc y esta�o</td>
						</tr>
						<tr>
							<td>2444 Producci�n de cobre</td>
						</tr>
						<tr>
							<td>2445 Producci�n de otros metales no f�rreos</td>
						</tr>
						<tr>
							<td>2446 Procesamiento de combustibles nucleares</td>
						</tr>
						<tr>
							<td>245 Fundici�n de metales</td>
						</tr>
						<tr>
							<td>2451 Fundici�n de hierro</td>
						</tr>
						<tr>
							<td>2452 Fundici�n de acero</td>
						</tr>
						<tr>
							<td>2453 Fundici�n de metales ligeros</td>
						</tr>
						<tr>
							<td>2454 Fundici�n de otros metales no f�rreos</td>
						</tr>
						<tr>
							<td>25 Fabricaci�n de productos met�licos, excepto
								maquinaria y equipo</td>
						</tr>
						<tr>
							<td>251 Fabricaci�n de elementos met�licos para la
								construcci�n</td>
						</tr>
						<tr>
							<td>2511 Fabricaci�n de estructuras met�licas y sus
								componentes</td>
						</tr>
						<tr>
							<td>2512 Fabricaci�n de carpinter�a met�lica</td>
						</tr>
						<tr>
							<td>252 Fabricaci�n de cisternas, grandes dep�sitos y
								contenedores de metal</td>
						</tr>
						<tr>
							<td>2521 Fabricaci�n de radiadores y calderas para
								calefacci�n central</td>
						</tr>
						<tr>
							<td>2529 Fabricaci�n de otras cisternas, grandes dep�sitos y
								contenedores de metal</td>
						</tr>
						<tr>
							<td>253 Fabricaci�n de generadores de vapor, excepto
								calderas de calefacci�n central</td>
						</tr>
						<tr>
							<td>2530 Fabricaci�n de generadores de vapor, excepto
								calderas de calefacci�n central</td>
						</tr>
						<tr>
							<td>254 Fabricaci�n de armas y municiones</td>
						</tr>
						<tr>
							<td>2540 Fabricaci�n de armas y municiones</td>
						</tr>
						<tr>
							<td>255 Forja, estampaci�n y embutici�n de metales;
								metalurgia de polvos</td>
						</tr>
						<tr>
							<td>2550 Forja, estampaci�n y embutici�n de metales;
								metalurgia de polvos</td>
						</tr>
						<tr>
							<td>256 Tratamiento y revestimiento de metales; ingenier�a
								mec�nica por cuenta de terceros</td>
						</tr>
						<tr>
							<td>2561 Tratamiento y revestimiento de metales</td>
						</tr>
						<tr>
							<td>2562 Ingenier�a mec�nica por cuenta de terceros</td>
						</tr>
						<tr>
							<td>257 Fabricaci�n de art�culos de cuchiller�a y
								cuberter�a, herramientas y ferreter�a</td>
						</tr>
						<tr>
							<td>2571 Fabricaci�n de art�culos de cuchiller�a y
								cuberter�a</td>
						</tr>
						<tr>
							<td>2572 Fabricaci�n de cerraduras y herrajes</td>
						</tr>
						<tr>
							<td>2573 Fabricaci�n de herramientas</td>
						</tr>
						<tr>
							<td>259 Fabricaci�n de otros productos met�licos</td>
						</tr>
						<tr>
							<td>2591 Fabricaci�n de bidones y toneles de hierro o acero</td>
						</tr>
						<tr>
							<td>2592 Fabricaci�n de envases y embalajes met�licos
								ligeros</td>
						</tr>
						<tr>
							<td>2593 Fabricaci�n de productos de alambre, cadenas y
								muelles</td>
						</tr>
						<tr>
							<td>2594 Fabricaci�n de pernos y productos de torniller�a</td>
						</tr>
						<tr>
							<td>2599 Fabricaci�n de otros productos met�licos n.c.o.p.</td>
						</tr>
						<tr>
							<td>26 Fabricaci�n de productos inform�ticos, electr�nicos y
								�pticos</td>
						</tr>
						<tr>
							<td>261 Fabricaci�n de componentes electr�nicos y circuitos
								impresos ensamblados</td>
						</tr>
						<tr>
							<td>2611 Fabricaci�n de componentes electr�nicos</td>
						</tr>
						<tr>
							<td>2612 Fabricaci�n de circuitos impresos ensamblados</td>
						</tr>
						<tr>
							<td>262 Fabricaci�n de ordenadores y equipos perif�ricos</td>
						</tr>
						<tr>
							<td>2620 Fabricaci�n de ordenadores y equipos perif�ricos</td>
						</tr>
						<tr>
							<td>263 Fabricaci�n de equipos de telecomunicaciones</td>
						</tr>
						<tr>
							<td>2630 Fabricaci�n de equipos de telecomunicaciones</td>
						</tr>
						<tr>
							<td>264 Fabricaci�n de productos electr�nicos de consumo</td>
						</tr>
						<tr>
							<td>2640 Fabricaci�n de productos electr�nicos de consumo</td>
						</tr>
						<tr>
							<td>265 Fabricaci�n de instrumentos y aparatos de medida,
								verificaci�n y navegaci�n; fabricaci�n de relojes</td>
						</tr>
						<tr>
							<td>2651 Fabricaci�n de instrumentos y aparatos de medida,
								verificaci�n y navegaci�n</td>
						</tr>
						<tr>
							<td>2652 Fabricaci�n de relojes</td>
						</tr>
						<tr>
							<td>266 Fabricaci�n de equipos de radiaci�n, electrom�dicos
								y electroterap�uticos</td>
						</tr>
						<tr>
							<td>2660 Fabricaci�n de equipos de radiaci�n, electrom�dicos
								y electroterap�uticos</td>
						</tr>
						<tr>
							<td>267 Fabricaci�n de instrumentos de �ptica y equipo
								fotogr�fico</td>
						</tr>
						<tr>
							<td>2670 Fabricaci�n de instrumentos de �ptica y equipo
								fotogr�fico</td>
						</tr>
						<tr>
							<td>268 Fabricaci�n de soportes magn�ticos y �pticos</td>
						</tr>
						<tr>
							<td>2680 Fabricaci�n de soportes magn�ticos y �pticos</td>
						</tr>
						<tr>
							<td>27 Fabricaci�n de material y equipo el�ctrico</td>
						</tr>
						<tr>
							<td>271 Fabricaci�n de motores, generadores y
								transformadores el�ctricos, y de aparatos de distribuci�n y
								control el�ctrico</td>
						</tr>
						<tr>
							<td>2711 Fabricaci�n de motores, generadores y
								transformadores el�ctricos</td>
						</tr>
						<tr>
							<td>2712 Fabricaci�n de aparatos de distribuci�n y control
								el�ctrico</td>
						</tr>
						<tr>
							<td>272 Fabricaci�n de pilas y acumuladores el�ctricos</td>
						</tr>
						<tr>
							<td>2720 Fabricaci�n de pilas y acumuladores el�ctricos</td>
						</tr>
						<tr>
							<td>273 Fabricaci�n de cables y dispositivos de cableado</td>
						</tr>
						<tr>
							<td>2731 Fabricaci�n de cables de fibra �ptica</td>
						</tr>
						<tr>
							<td>2732 Fabricaci�n de otros hilos y cables electr�nicos y
								el�ctricos</td>
						</tr>
						<tr>
							<td>2733 Fabricaci�n de dispositivos de cableado</td>
						</tr>
						<tr>
							<td>274 Fabricaci�n de l�mparas y aparatos el�ctricos de
								iluminaci�n</td>
						</tr>
						<tr>
							<td>2740 Fabricaci�n de l�mparas y aparatos el�ctricos de
								iluminaci�n</td>
						</tr>
						<tr>
							<td>275 Fabricaci�n de aparatos dom�sticos</td>
						</tr>
						<tr>
							<td>2751 Fabricaci�n de electrodom�sticos</td>
						</tr>
						<tr>
							<td>2752 Fabricaci�n de aparatos dom�sticos no el�ctricos</td>
						</tr>
						<tr>
							<td>279 Fabricaci�n de otro material y equipo el�ctrico</td>
						</tr>
						<tr>
							<td>2790 Fabricaci�n de otro material y equipo el�ctrico</td>
						</tr>
						<tr>
							<td>28 Fabricaci�n de maquinaria y equipo n.c.o.p.</td>
						</tr>
						<tr>
							<td>281 Fabricaci�n de maquinaria de uso general</td>
						</tr>
						<tr>
							<td>2811 Fabricaci�n de motores y turbinas, excepto los
								destinados a aeronaves, veh�culos autom�viles y ciclomotores</td>
						</tr>
						<tr>
							<td>2812 Fabricaci�n de equipos de transmisi�n hidr�ulica y
								neum�tica</td>
						</tr>
						<tr>
							<td>2813 Fabricaci�n de otras bombas y compresores</td>
						</tr>
						<tr>
							<td>2814 Fabricaci�n de otra grifer�a y v�lvulas</td>
						</tr>
						<tr>
							<td>2815 Fabricaci�n de cojinetes, engranajes y �rganos
								mec�nicos de transmisi�n</td>
						</tr>
						<tr>
							<td>282 Fabricaci�n de otra maquinaria de uso general</td>
						</tr>
						<tr>
							<td>2821 Fabricaci�n de hornos y quemadores</td>
						</tr>
						<tr>
							<td>2822 Fabricaci�n de maquinaria de elevaci�n y
								manipulaci�n</td>
						</tr>
						<tr>
							<td>2823 Fabricaci�n de m�quinas y equipos de oficina,
								excepto equipos inform�ticos</td>
						</tr>
						<tr>
							<td>2824 Fabricaci�n de herramientas el�ctricas manuales</td>
						</tr>
						<tr>
							<td>2825 Fabricaci�n de maquinaria de ventilaci�n y
								refrigeraci�n no dom�stica</td>
						</tr>
						<tr>
							<td>2829 Fabricaci�n de otra maquinaria de uso general
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>283 Fabricaci�n de maquinaria agraria y forestal</td>
						</tr>
						<tr>
							<td>2830 Fabricaci�n de maquinaria agraria y forestal</td>
						</tr>
						<tr>
							<td>284 Fabricaci�n de m�quinas herramienta para trabajar el
								metal y otras m�quinas herramienta</td>
						</tr>
						<tr>
							<td>2841 Fabricaci�n de m�quinas herramienta para trabajar
								el metal</td>
						</tr>
						<tr>
							<td>2849 Fabricaci�n de otras m�quinas herramienta</td>
						</tr>
						<tr>
							<td>289 Fabricaci�n de otra maquinaria para usos espec�ficos</td>
						</tr>
						<tr>
							<td>2891 Fabricaci�n de maquinaria para la industria
								metal�rgica</td>
						</tr>
						<tr>
							<td>2892 Fabricaci�n de maquinaria para las industrias
								extractivas y de la construcci�n</td>
						</tr>
						<tr>
							<td>2893 Fabricaci�n de maquinaria para la industria de la
								alimentaci�n, bebidas y tabaco</td>
						</tr>
						<tr>
							<td>2894 Fabricaci�n de maquinaria para las industrias
								textil, de la confecci�n y del cuero</td>
						</tr>
						<tr>
							<td>2895 Fabricaci�n de maquinaria para la industria del
								papel y del cart�n</td>
						</tr>
						<tr>
							<td>2896 Fabricaci�n de maquinaria para la industria del
								pl�stico y el caucho</td>
						</tr>
						<tr>
							<td>2899 Fabricaci�n de otra maquinaria para usos
								espec�ficos n.c.o.p.</td>
						</tr>
						<tr>
							<td>29 Fabricaci�n de veh�culos de motor, remolques y
								semirremolques</td>
						</tr>
						<tr>
							<td>291 Fabricaci�n de veh�culos de motor</td>
						</tr>
						<tr>
							<td>2910 Fabricaci�n de veh�culos de motor</td>
						</tr>
						<tr>
							<td>292 Fabricaci�n de carrocer�as para veh�culos de motor;
								fabricaci�n de remolques y semirremolques</td>
						</tr>
						<tr>
							<td>2920 Fabricaci�n de carrocer�as para veh�culos de motor;
								fabricaci�n de remolques y semirremolques</td>
						</tr>
						<tr>
							<td>293 Fabricaci�n de componentes, piezas y accesorios para
								veh�culos de motor</td>
						</tr>
						<tr>
							<td>2931 Fabricaci�n de equipos el�ctricos y electr�nicos
								para veh�culos de motor</td>
						</tr>
						<tr>
							<td>2932 Fabricaci�n de otros componentes, piezas y
								accesorios para veh�culos de motor</td>
						</tr>
						<tr>
							<td>30 Fabricaci�n de otro material de transporte</td>
						</tr>
						<tr>
							<td>301 Construcci�n naval</td>
						</tr>
						<tr>
							<td>3011 Construcci�n de barcos y estructuras flotantes</td>
						</tr>
						<tr>
							<td>3012 Construcci�n de embarcaciones de recreo y deporte</td>
						</tr>
						<tr>
							<td>302 Fabricaci�n de locomotoras y material ferroviario</td>
						</tr>
						<tr>
							<td>3020 Fabricaci�n de locomotoras y material ferroviario</td>
						</tr>
						<tr>
							<td>303 Construcci�n aeron�utica y espacial y su maquinaria</td>
						</tr>
						<tr>
							<td>3030 Construcci�n aeron�utica y espacial y su maquinaria</td>
						</tr>
						<tr>
							<td>304 Fabricaci�n de veh�culos militares de combate</td>
						</tr>
						<tr>
							<td>3040 Fabricaci�n de veh�culos militares de combate</td>
						</tr>
						<tr>
							<td>309 Fabricaci�n de otro material de transporte n.c.o.p.</td>
						</tr>
						<tr>
							<td>3091 Fabricaci�n de motocicletas</td>
						</tr>
						<tr>
							<td>3092 Fabricaci�n de bicicletas y de veh�culos para
								personas con discapacidad</td>
						</tr>
						<tr>
							<td>3099 Fabricaci�n de otro material de transporte n.c.o.p.</td>
						</tr>
						<tr>
							<td>31 Fabricaci�n de muebles</td>
						</tr>
						<tr>
							<td>310 Fabricaci�n de muebles</td>
						</tr>
						<tr>
							<td>3101 Fabricaci�n de muebles de oficina y de
								establecimientos comerciales</td>
						</tr>
						<tr>
							<td>3102 Fabricaci�n de muebles de cocina</td>
						</tr>
						<tr>
							<td>3103 Fabricaci�n de colchones</td>
						</tr>
						<tr>
							<td>3109 Fabricaci�n de otros muebles</td>
						</tr>
						<tr>
							<td>32 Otras industrias manufactureras</td>
						</tr>
						<tr>
							<td>321 Fabricaci�n de art�culos de joyer�a, bisuter�a y
								similares</td>
						</tr>
						<tr>
							<td>3211 Fabricaci�n de monedas</td>
						</tr>
						<tr>
							<td>3212 Fabricaci�n de art�culos de joyer�a y art�culos
								similares</td>
						</tr>
						<tr>
							<td>3213 Fabricaci�n de art�culos de bisuter�a y art�culos
								similares</td>
						</tr>
						<tr>
							<td>322 Fabricaci�n de instrumentos musicales</td>
						</tr>
						<tr>
							<td>3220 Fabricaci�n de instrumentos musicales</td>
						</tr>
						<tr>
							<td>323 Fabricaci�n de art�culos de deporte</td>
						</tr>
						<tr>
							<td>3230 Fabricaci�n de art�culos de deporte</td>
						</tr>
						<tr>
							<td>324 Fabricaci�n de juegos y juguetes</td>
						</tr>
						<tr>
							<td>3240 Fabricaci�n de juegos y juguetes</td>
						</tr>
						<tr>
							<td>325 Fabricaci�n de instrumentos y suministros m�dicos y
								odontol�gicos</td>
						</tr>
						<tr>
							<td>3250 Fabricaci�n de instrumentos y suministros m�dicos y
								odontol�gicos</td>
						</tr>
						<tr>
							<td>329 Industrias manufactureras n.c.o.p.</td>
						</tr>
						<tr>
							<td>3291 Fabricaci�n de escobas, brochas y cepillos</td>
						</tr>
						<tr>
							<td>3299 Otras industrias manufactureras n.c.o.p.</td>
						</tr>
						<tr>
							<td>33 Reparaci�n e instalaci�n de maquinaria y equipo</td>
						</tr>
						<tr>
							<td>331 Reparaci�n de productos met�licos, maquinaria y
								equipo</td>
						</tr>
						<tr>
							<td>3311 Reparaci�n de productos met�licos</td>
						</tr>
						<tr>
							<td>3312 Reparaci�n de maquinaria</td>
						</tr>
						<tr>
							<td>3313 Reparaci�n de equipos electr�nicos y �pticos</td>
						</tr>
						<tr>
							<td>3314 Reparaci�n de equipos el�ctricos</td>
						</tr>
						<tr>
							<td>3315 Reparaci�n y mantenimiento naval</td>
						</tr>
						<tr>
							<td>3316 Reparaci�n y mantenimiento aeron�utico y espacial</td>
						</tr>
						<tr>
							<td>3317 Reparaci�n y mantenimiento de otro material de
								transporte</td>
						</tr>
						<tr>
							<td>3319 Reparaci�n de otros equipos</td>
						</tr>
						<tr>
							<td>332 Instalaci�n de m�quinas y equipos industriales</td>
						</tr>
						<tr>
							<td>3320 Instalaci�n de m�quinas y equipos industriales</td>
						</tr>
						<tr>
							<td>35 Suministro de energ�a el�ctrica, gas, vapor y aire
								acondicionado</td>
						</tr>
						<tr>
							<td>351 Producci�n, transporte y distribuci�n de energ�a
								el�ctrica</td>
						</tr>
						<tr>
							<td>3512 Transporte de energ�a el�ctrica</td>
						</tr>
						<tr>
							<td>3513 Distribuci�n de energ�a el�ctrica</td>
						</tr>
						<tr>
							<td>3514 Comercio de energ�a el�ctrica</td>
						</tr>
						<tr>
							<td>3515 Producci�n de energ�a hidroel�ctrica</td>
						</tr>
						<tr>
							<td>3516 Producci�n de energ�a el�ctrica de origen t�rmico
								convencional</td>
						</tr>
						<tr>
							<td>3517 Producci�n de energ�a el�ctrica de origen nuclear</td>
						</tr>
						<tr>
							<td>3518 Producci�n de energ�a el�ctrica de origen e�lico</td>
						</tr>
						<tr>
							<td>3519 Producci�n de energ�a el�ctrica de otros tipos</td>
						</tr>
						<tr>
							<td>352 Producci�n de gas; distribuci�n por tuber�a de
								combustibles gaseosos</td>
						</tr>
						<tr>
							<td>3521 Producci�n de gas</td>
						</tr>
						<tr>
							<td>3522 Distribuci�n por tuber�a de combustibles gaseosos</td>
						</tr>
						<tr>
							<td>3523 Comercio de gas por tuber�a</td>
						</tr>
						<tr>
							<td>353 Suministro de vapor y aire acondicionado</td>
						</tr>
						<tr>
							<td>3530 Suministro de vapor y aire acondicionado</td>
						</tr>
						<tr>
							<td>36 Captaci�n, depuraci�n y distribuci�n de agua</td>
						</tr>
						<tr>
							<td>360 Captaci�n, depuraci�n y distribuci�n de agua</td>
						</tr>
						<tr>
							<td>3600 Captaci�n, depuraci�n y distribuci�n de agua</td>
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
							<td>38 Recogida, tratamiento y eliminaci�n de residuos;
								valorizaci�n</td>
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
							<td>382 Tratamiento y eliminaci�n de residuos</td>
						</tr>
						<tr>
							<td>3821 Tratamiento y eliminaci�n de residuos no peligrosos</td>
						</tr>
						<tr>
							<td>3822 Tratamiento y eliminaci�n de residuos peligrosos</td>
						</tr>
						<tr>
							<td>383 Valorizaci�n</td>
						</tr>
						<tr>
							<td>3831 Separaci�n y clasificaci�n de materiales</td>
						</tr>
						<tr>
							<td>3832 Valorizaci�n de materiales ya clasificados</td>
						</tr>
						<tr>
							<td>39 Actividades de descontaminaci�n y otros servicios de
								gesti�n de residuos</td>
						</tr>
						<tr>
							<td>390 Actividades de descontaminaci�n y otros servicios de
								gesti�n de residuos</td>
						</tr>
						<tr>
							<td>3900 Actividades de descontaminaci�n y otros servicios
								de gesti�n de residuos</td>
						</tr>
						<tr>
							<td>41 Construcci�n de edificios</td>
						</tr>
						<tr>
							<td>411 Promoci�n inmobiliaria</td>
						</tr>
						<tr>
							<td>4110 Promoci�n inmobiliaria</td>
						</tr>
						<tr>
							<td>412 Construcci�n de edificios</td>
						</tr>
						<tr>
							<td>4121 Construcci�n de edificios residenciales</td>
						</tr>
						<tr>
							<td>4122 Construcci�n de edificios no residenciales</td>
						</tr>
						<tr>
							<td>42 Ingenier�a civil</td>
						</tr>
						<tr>
							<td>421 Construcci�n de carreteras y v�as f�rreas, puentes y
								t�neles</td>
						</tr>
						<tr>
							<td>4211 Construcci�n de carreteras y autopistas</td>
						</tr>
						<tr>
							<td>4212 Construcci�n de v�as f�rreas de superficie y
								subterr�neas</td>
						</tr>
						<tr>
							<td>4213 Construcci�n de puentes y t�neles</td>
						</tr>
						<tr>
							<td>422 Construcci�n de redes</td>
						</tr>
						<tr>
							<td>4221 Construcci�n de redes para fluidos</td>
						</tr>
						<tr>
							<td>4222 Construcci�n de redes el�ctricas y de
								telecomunicaciones</td>
						</tr>
						<tr>
							<td>429 Construcci�n de otros proyectos de ingenier�a civil</td>
						</tr>
						<tr>
							<td>4291 Obras hidr�ulicas</td>
						</tr>
						<tr>
							<td>4299 Construcci�n de otros proyectos de ingenier�a civil
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>43 Actividades de construcci�n especializada</td>
						</tr>
						<tr>
							<td>431 Demolici�n y preparaci�n de terrenos</td>
						</tr>
						<tr>
							<td>4311 Demolici�n</td>
						</tr>
						<tr>
							<td>4312 Preparaci�n de terrenos</td>
						</tr>
						<tr>
							<td>4313 Perforaciones y sondeos</td>
						</tr>
						<tr>
							<td>432 Instalaciones el�ctricas, de fontaner�a y otras
								instalaciones en obras de construcci�n</td>
						</tr>
						<tr>
							<td>4321 Instalaciones el�ctricas</td>
						</tr>
						<tr>
							<td>4322 Fontaner�a, instalaciones de sistemas de
								calefacci�n y aire acondicionado</td>
						</tr>
						<tr>
							<td>4329 Otras instalaciones en obras de construcci�n</td>
						</tr>
						<tr>
							<td>433 Acabado de edificios</td>
						</tr>
						<tr>
							<td>4331 Revocamiento</td>
						</tr>
						<tr>
							<td>4332 Instalaci�n de carpinter�a</td>
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
							<td>439 Otras actividades de construcci�n especializada</td>
						</tr>
						<tr>
							<td>4391 Construcci�n de cubiertas</td>
						</tr>
						<tr>
							<td>4399 Otras actividades de construcci�n especializada
								n.c.o.p.</td>
						</tr>
						<tr>
							<td>45 Venta y reparaci�n de veh�culos de motor y
								motocicletas</td>
						</tr>
						<tr>
							<td>451 Venta de veh�culos de motor</td>
						</tr>
						<tr>
							<td>4511 Venta de autom�viles y veh�culos de motor ligeros</td>
						</tr>
						<tr>
							<td>4519 Venta de otros veh�culos de motor</td>
						</tr>
						<tr>
							<td>452 Mantenimiento y reparaci�n de veh�culos de motor</td>
						</tr>
						<tr>
							<td>4520 Mantenimiento y reparaci�n de veh�culos de motor</td>
						</tr>
						<tr>
							<td>453 Comercio de repuestos y accesorios de veh�culos de
								motor</td>
						</tr>
						<tr>
							<td>4531 Comercio al por mayor de repuestos y accesorios de
								veh�culos de motor</td>
						</tr>
						<tr>
							<td>4532 Comercio al por menor de repuestos y accesorios de
								veh�culos de motor</td>
						</tr>
						<tr>
							<td>454 Venta, mantenimiento y reparaci�n de motocicletas y
								de sus repuestos y accesorios</td>
						</tr>
						<tr>
							<td>4540 Venta, mantenimiento y reparaci�n de motocicletas y
								de sus repuestos y accesorios</td>
						</tr>
						<tr>
							<td>46 Comercio al por mayor e intermediarios del comercio,
								excepto de veh�culos de motor y motocicletas</td>
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
								minerales, metales y productos qu�micos industriales</td>
						</tr>
						<tr>
							<td>4613 Intermediarios del comercio de la madera y
								materiales de construcci�n</td>
						</tr>
						<tr>
							<td>4614 Intermediarios del comercio de maquinaria, equipo
								industrial, embarcaciones y aeronaves</td>
						</tr>
						<tr>
							<td>4615 Intermediarios del comercio de muebles, art�culos
								para el hogar y ferreter�a</td>
						</tr>
						<tr>
							<td>4616 Intermediarios del comercio de textiles, prendas de
								vestir, peleter�a, calzado y art�culos de cuero</td>
						</tr>
						<tr>
							<td>4617 Intermediarios del comercio de productos
								alimenticios, bebidas y tabaco</td>
						</tr>
						<tr>
							<td>4618 Intermediarios del comercio especializados en la
								venta de otros productos espec�ficos</td>
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
							<td>4632 Comercio al por mayor de carne y productos c�rnicos</td>
						</tr>
						<tr>
							<td>4633 Comercio al por mayor de productos l�cteos, huevos,
								aceites y grasas comestibles</td>
						</tr>
						<tr>
							<td>4634 Comercio al por mayor de bebidas</td>
						</tr>
						<tr>
							<td>4635 Comercio al por mayor de productos del tabaco</td>
						</tr>
						<tr>
							<td>4636 Comercio al por mayor de az�car, chocolate y
								confiter�a</td>
						</tr>
						<tr>
							<td>4637 Comercio al por mayor de caf�, t�, cacao y especias</td>
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
							<td>464 Comercio al por mayor de art�culos de uso dom�stico</td>
						</tr>
						<tr>
							<td>4641 Comercio al por mayor de textiles</td>
						</tr>
						<tr>
							<td>4642 Comercio al por mayor de prendas de vestir y
								calzado</td>
						</tr>
						<tr>
							<td>4643 Comercio al por mayor de aparatos electrodom�sticos</td>
						</tr>
						<tr>
							<td>4644 Comercio al por mayor de porcelana, cristaler�a y
								art�culos de limpieza</td>
						</tr>
						<tr>
							<td>4645 Comercio al por mayor de productos perfumer�a y
								cosm�tica</td>
						</tr>
						<tr>
							<td>4646 Comercio al por mayor de productos farmac�uticos</td>
						</tr>
						<tr>
							<td>4647 Comercio al por mayor de muebles, alfombras y
								aparatos de iluminaci�n</td>
						</tr>
						<tr>
							<td>4648 Comercio al por mayor de art�culos de relojer�a y
								joyer�a</td>
						</tr>
						<tr>
							<td>4649 Comercio al por mayor de otros art�culos de uso
								dom�stico</td>
						</tr>
						<tr>
							<td>465 Comercio al por mayor de equipos para las
								tecnolog�as de la informaci�n y las comunicaciones</td>
						</tr>
						<tr>
							<td>4651 Comercio al por mayor de ordenadores, equipos
								perif�ricos y programas inform�ticos</td>
						</tr>
						<tr>
							<td>4652 Comercio al por mayor de equipos electr�nicos y de
								telecomunicaciones y sus componentes</td>
						</tr>
						<tr>
							<td>466 Comercio al por mayor de otra maquinaria, equipos y
								suministros</td>
						</tr>
						<tr>
							<td>4661 Comercio al por mayor de maquinaria, equipos y
								suministros agr�colas</td>
						</tr>
						<tr>
							<td>4662 Comercio al por mayor de m�quinas herramienta</td>
						</tr>
						<tr>
							<td>4663 Comercio al por mayor de maquinaria para la
								miner�a, la construcci�n y la ingenier�a civil</td>
						</tr>
						<tr>
							<td>4664 Comercio al por mayor de maquinaria para la
								industria textil y de m�quinas de coser y tricotar</td>
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
							<td>4671 Comercio al por mayor de combustibles s�lidos,
								l�quidos y gaseosos, y productos similares</td>
						</tr>
						<tr>
							<td>4672 Comercio al por mayor de metales y minerales
								met�licos</td>
						</tr>
						<tr>
							<td>4673 Comercio al por mayor de madera, materiales de
								construcci�n y aparatos sanitarios</td>
						</tr>
						<tr>
							<td>4674 Comercio al por mayor de ferreter�a, fontaner�a y
								calefacci�n</td>
						</tr>
						<tr>
							<td>4675 Comercio al por mayor de productos qu�micos</td>
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
							<td>47 Comercio al por menor, excepto de veh�culos de motor
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
							<td>4722 Comercio al por menor de carne y productos c�rnicos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4723 Comercio al por menor de pescados y mariscos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4724 Comercio al por menor de pan y productos de
								panader�a, confiter�a y pasteler�a en establecimientos
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
								automoci�n en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4730 Comercio al por menor de combustible para la
								automoci�n en establecimientos especializados</td>
						</tr>
						<tr>
							<td>474 Comercio al por menor de equipos para las
								tecnolog�as de la informaci�n y las comunicaciones en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4741 Comercio al por menor de ordenadores, equipos
								perif�ricos y programas inform�ticos en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4742 Comercio al por menor de equipos de
								telecomunicaciones en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4743 Comercio al por menor de equipos de audio y v�deo
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>475 Comercio al por menor de otros art�culos de uso
								dom�stico en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4751 Comercio al por menor de textiles en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4752 Comercio al por menor de ferreter�a, pintura y
								vidrio en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4753 Comercio al por menor de alfombras, moquetas y
								revestimientos de paredes y suelos en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4754 Comercio al por menor de aparatos electrodom�sticos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4759 Comercio al por menor de muebles, aparatos de
								iluminaci�n y otros art�culos de uso dom�stico en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>476 Comercio al por menor de art�culos culturales y
								recreativos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4761 Comercio al por menor de libros en establecimientos
								especializados</td>
						</tr>
						<tr>
							<td>4762 Comercio al por menor de peri�dicos y art�culos de
								papeler�a en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4763 Comercio al por menor de grabaciones de m�sica y
								v�deo en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4764 Comercio al por menor de art�culos deportivos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4765 Comercio al por menor de juegos y juguetes en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>477 Comercio al por menor de otros art�culos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4771 Comercio al por menor de prendas de vestir en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4772 Comercio al por menor de calzado y art�culos de
								cuero en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4773 Comercio al por menor de productos farmac�uticos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4774 Comercio al por menor de art�culos m�dicos y
								ortop�dicos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4775 Comercio al por menor de productos cosm�ticos e
								higi�nicos en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4776 Comercio al por menor de flores, plantas, semillas,
								fertilizantes, animales de compa��a y alimentos para los mismos
								en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4777 Comercio al por menor de art�culos de relojer�a y
								joyer�a en establecimientos especializados</td>
						</tr>
						<tr>
							<td>4778 Otro comercio al por menor de art�culos nuevos en
								establecimientos especializados</td>
						</tr>
						<tr>
							<td>4779 Comercio al por menor de art�culos de segunda mano
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
							<td>49 Transporte terrestre y por tuber�a</td>
						</tr>
						<tr>
							<td>491 Transporte interurbano de pasajeros por ferrocarril</td>
						</tr>
						<tr>
							<td>4910 Transporte interurbano de pasajeros por ferrocarril</td>
						</tr>
						<tr>
							<td>492 Transporte de mercanc�as por ferrocarril</td>
						</tr>
						<tr>
							<td>4920 Transporte de mercanc�as por ferrocarril</td>
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
							<td>494 Transporte de mercanc�as por carretera y servicios
								de mudanza</td>
						</tr>
						<tr>
							<td>4941 Transporte de mercanc�as por carretera</td>
						</tr>
						<tr>
							<td>4942 Servicios de mudanza</td>
						</tr>
						<tr>
							<td>495 Transporte por tuber�a</td>
						</tr>
						<tr>
							<td>4950 Transporte por tuber�a</td>
						</tr>
						<tr>
							<td>50 Transporte mar�timo y por v�as navegables interiores</td>
						</tr>
						<tr>
							<td>501 Transporte mar�timo de pasajeros</td>
						</tr>
						<tr>
							<td>5010 Transporte mar�timo de pasajeros</td>
						</tr>
						<tr>
							<td>502 Transporte mar�timo de mercanc�as</td>
						</tr>
						<tr>
							<td>5020 Transporte mar�timo de mercanc�as</td>
						</tr>
						<tr>
							<td>503 Transporte de pasajeros por v�as navegables
								interiores</td>
						</tr>
						<tr>
							<td>5030 Transporte de pasajeros por v�as navegables
								interiores</td>
						</tr>
						<tr>
							<td>504 Transporte de mercanc�as por v�as navegables
								interiores</td>
						</tr>
						<tr>
							<td>5040 Transporte de mercanc�as por v�as navegables
								interiores</td>
						</tr>
						<tr>
							<td>51 Transporte a�reo</td>
						</tr>
						<tr>
							<td>511 Transporte a�reo de pasajeros</td>
						</tr>
						<tr>
							<td>5110 Transporte a�reo de pasajeros</td>
						</tr>
						<tr>
							<td>512 Transporte a�reo de mercanc�as y transporte espacial</td>
						</tr>
						<tr>
							<td>5121 Transporte a�reo de mercanc�as</td>
						</tr>
						<tr>
							<td>5122 Transporte espacial</td>
						</tr>
						<tr>
							<td>52 Almacenamiento y actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>521 Dep�sito y almacenamiento</td>
						</tr>
						<tr>
							<td>5210 Dep�sito y almacenamiento</td>
						</tr>
						<tr>
							<td>522 Actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>5221 Actividades anexas al transporte terrestre</td>
						</tr>
						<tr>
							<td>5222 Actividades anexas al transporte mar�timo y por
								v�as navegables interiores</td>
						</tr>
						<tr>
							<td>5223 Actividades anexas al transporte a�reo</td>
						</tr>
						<tr>
							<td>5224 Manipulaci�n de mercanc�as</td>
						</tr>
						<tr>
							<td>5229 Otras actividades anexas al transporte</td>
						</tr>
						<tr>
							<td>53 Actividades postales y de correos</td>
						</tr>
						<tr>
							<td>531 Actividades postales sometidas a la obligaci�n del
								servicio universal</td>
						</tr>
						<tr>
							<td>5310 Actividades postales sometidas a la obligaci�n del
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
							<td>552 Alojamientos tur�sticos y otros alojamientos de
								corta estancia</td>
						</tr>
						<tr>
							<td>5520 Alojamientos tur�sticos y otros alojamientos de
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
							<td>562 Provisi�n de comidas preparadas para eventos y otros
								servicios de comidas</td>
						</tr>
						<tr>
							<td>5621 Provisi�n de comidas preparadas para eventos</td>
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
							<td>58 Edici�n</td>
						</tr>
						<tr>
							<td>581 Edici�n de libros, peri�dicos y otras actividades
								editoriales</td>
						</tr>
						<tr>
							<td>5811 Edici�n de libros</td>
						</tr>
						<tr>
							<td>5812 Edici�n de directorios y gu�as de direcciones
								postales</td>
						</tr>
						<tr>
							<td>5813 Edici�n de peri�dicos</td>
						</tr>
						<tr>
							<td>5814 Edici�n de revistas</td>
						</tr>
						<tr>
							<td>5819 Otras actividades editoriales</td>
						</tr>
						<tr>
							<td>582 Edici�n de programas inform�ticos</td>
						</tr>
						<tr>
							<td>5821 Edici�n de videojuegos</td>
						</tr>
						<tr>
							<td>5829 Edici�n de otros programas inform�ticos</td>
						</tr>
						<tr>
							<td>59 Actividades cinematogr�ficas, de v�deo y de programas
								de televisi�n, grabaci�n de sonido y edici�n musical</td>
						</tr>
						<tr>
							<td>591 Actividades cinematogr�ficas, de v�deo y de
								programas de televisi�n</td>
						</tr>
						<tr>
							<td>5912 Actividades de postproducci�n cinematogr�fica, de
								v�deo y de programas de televisi�n</td>
						</tr>
						<tr>
							<td>5914 Actividades de exhibici�n cinematogr�fica</td>
						</tr>
						<tr>
							<td>5915 Actividades de producci�n cinematogr�fica y de
								v�deo</td>
						</tr>
						<tr>
							<td>5916 Actividades de producciones de programas de
								televisi�n</td>
						</tr>
						<tr>
							<td>5917 Actividades de distribuci�n cinematogr�fica y de
								v�deo</td>
						</tr>
						<tr>
							<td>5918 Actividades de distribuci�n de programas de
								televisi�n</td>
						</tr>
						<tr>
							<td>592 Actividades de grabaci�n de sonido y edici�n musical</td>
						</tr>
						<tr>
							<td>5920 Actividades de grabaci�n de sonido y edici�n
								musical</td>
						</tr>
						<tr>
							<td>60 Actividades de programaci�n y emisi�n de radio y
								televisi�n</td>
						</tr>
						<tr>
							<td>601 Actividades de radiodifusi�n</td>
						</tr>
						<tr>
							<td>6010 Actividades de radiodifusi�n</td>
						</tr>
						<tr>
							<td>602 Actividades de programaci�n y emisi�n de televisi�n</td>
						</tr>
						<tr>
							<td>6020 Actividades de programaci�n y emisi�n de televisi�n</td>
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
							<td>612 Telecomunicaciones inal�mbricas</td>
						</tr>
						<tr>
							<td>6120 Telecomunicaciones inal�mbricas</td>
						</tr>
						<tr>
							<td>613 Telecomunicaciones por sat�lite</td>
						</tr>
						<tr>
							<td>6130 Telecomunicaciones por sat�lite</td>
						</tr>
						<tr>
							<td>619 Otras actividades de telecomunicaciones</td>
						</tr>
						<tr>
							<td>6190 Otras actividades de telecomunicaciones</td>
						</tr>
						<tr>
							<td>62 Programaci�n, consultor�a y otras actividades
								relacionadas con la inform�tica</td>
						</tr>
						<tr>
							<td>620 Programaci�n, consultor�a y otras actividades
								relacionadas con la inform�tica</td>
						</tr>
						<tr>
							<td>6201 Actividades de programaci�n inform�tica</td>
						</tr>
						<tr>
							<td>6202 Actividades de consultor�a inform�tica</td>
						</tr>
						<tr>
							<td>6203 Gesti�n de recursos inform�ticos</td>
						</tr>
						<tr>
							<td>6209 Otros servicios relacionados con las tecnolog�as de
								la informaci�n y la inform�tica</td>
						</tr>
						<tr>
							<td>63 Servicios de informaci�n</td>
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
							<td>639 Otros servicios de informaci�n</td>
						</tr>
						<tr>
							<td>6391 Actividades de las agencias de noticias</td>
						</tr>
						<tr>
							<td>6399 Otros servicios de informaci�n n.c.o.p.</td>
						</tr>
						<tr>
							<td>64 Servicios financieros, excepto seguros y fondos de
								pensiones</td>
						</tr>
						<tr>
							<td>641 Intermediaci�n monetaria</td>
						</tr>
						<tr>
							<td>6411 Banco central</td>
						</tr>
						<tr>
							<td>6419 Otra intermediaci�n monetaria</td>
						</tr>
						<tr>
							<td>642 Actividades de las sociedades holding</td>
						</tr>
						<tr>
							<td>6420 Actividades de las sociedades holding</td>
						</tr>
						<tr>
							<td>643 Inversi�n colectiva, fondos y entidades financieras
								similares</td>
						</tr>
						<tr>
							<td>6430 Inversi�n colectiva, fondos y entidades financieras
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
							<td>6611 Administraci�n de mercados financieros</td>
						</tr>
						<tr>
							<td>6612 Actividades de intermediaci�n en operaciones con
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
							<td>6621 Evaluaci�n de riesgos y da�os</td>
						</tr>
						<tr>
							<td>6622 Actividades de agentes y corredores de seguros</td>
						</tr>
						<tr>
							<td>6629 Otras actividades auxiliares a seguros y fondos de
								pensiones</td>
						</tr>
						<tr>
							<td>663 Actividades de gesti�n de fondos</td>
						</tr>
						<tr>
							<td>6630 Actividades de gesti�n de fondos</td>
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
							<td>6832 Gesti�n y administraci�n de la propiedad
								inmobiliaria</td>
						</tr>
						<tr>
							<td>69 Actividades jur�dicas y de contabilidad</td>
						</tr>
						<tr>
							<td>691 Actividades jur�dicas</td>
						</tr>
						<tr>
							<td>6910 Actividades jur�dicas</td>
						</tr>
						<tr>
							<td>692 Actividades de contabilidad, tenedur�a de libros,
								auditor�a y asesor�a fiscal</td>
						</tr>
						<tr>
							<td>6920 Actividades de contabilidad, tenedur�a de libros,
								auditor�a y asesor�a fiscal</td>
						</tr>
						<tr>
							<td>70 Actividades de las sedes centrales; actividades de
								consultor�a de gesti�n empresarial</td>
						</tr>
						<tr>
							<td>701 Actividades de las sedes centrales</td>
						</tr>
						<tr>
							<td>7010 Actividades de las sedes centrales</td>
						</tr>
						<tr>
							<td>702 Actividades de consultor�a de gesti�n empresarial</td>
						</tr>
						<tr>
							<td>7021 Relaciones p�blicas y comunicaci�n</td>
						</tr>
						<tr>
							<td>7022 Otras actividades de consultor�a de gesti�n
								empresarial</td>
						</tr>
						<tr>
							<td>71 Servicios t�cnicos de arquitectura e ingenier�a;
								ensayos y an�lisis t�cnicos</td>
						</tr>
						<tr>
							<td>711 Servicios t�cnicos de arquitectura e ingenier�a y
								otras actividades relacionadas con el asesoramiento t�cnico</td>
						</tr>
						<tr>
							<td>7111 Servicios t�cnicos de arquitectura</td>
						</tr>
						<tr>
							<td>7112 Servicios t�cnicos de ingenier�a y otras
								actividades relacionadas con el asesoramiento t�cnico</td>
						</tr>
						<tr>
							<td>712 Ensayos y an�lisis t�cnicos</td>
						</tr>
						<tr>
							<td>7120 Ensayos y an�lisis t�cnicos</td>
						</tr>
						<tr>
							<td>72 Investigaci�n y desarrollo</td>
						</tr>
						<tr>
							<td>721 Investigaci�n y desarrollo experimental en ciencias
								naturales y t�cnicas</td>
						</tr>
						<tr>
							<td>7211 Investigaci�n y desarrollo experimental en
								biotecnolog�a</td>
						</tr>
						<tr>
							<td>7219 Otra investigaci�n y desarrollo experimental en
								ciencias naturales y t�cnicas</td>
						</tr>
						<tr>
							<td>722 Investigaci�n y desarrollo experimental en ciencias
								sociales y humanidades</td>
						</tr>
						<tr>
							<td>7220 Investigaci�n y desarrollo experimental en ciencias
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
							<td>7312 Servicios de representaci�n de medios de
								comunicaci�n</td>
						</tr>
						<tr>
							<td>732 Estudio de mercado y realizaci�n de encuestas de
								opini�n p�blica</td>
						</tr>
						<tr>
							<td>7320 Estudio de mercado y realizaci�n de encuestas de
								opini�n p�blica</td>
						</tr>
						<tr>
							<td>74 Otras actividades profesionales, cient�ficas y
								t�cnicas</td>
						</tr>
						<tr>
							<td>741 Actividades de dise�o especializado</td>
						</tr>
						<tr>
							<td>7410 Actividades de dise�o especializado</td>
						</tr>
						<tr>
							<td>742 Actividades de fotograf�a</td>
						</tr>
						<tr>
							<td>7420 Actividades de fotograf�a</td>
						</tr>
						<tr>
							<td>743 Actividades de traducci�n e interpretaci�n</td>
						</tr>
						<tr>
							<td>7430 Actividades de traducci�n e interpretaci�n</td>
						</tr>
						<tr>
							<td>749 Otras actividades profesionales, cient�ficas y
								t�cnicas n.c.o.p.</td>
						</tr>
						<tr>
							<td>7490 Otras actividades profesionales, cient�ficas y
								t�cnicas n.c.o.p.</td>
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
							<td>771 Alquiler de veh�culos de motor</td>
						</tr>
						<tr>
							<td>7711 Alquiler de autom�viles y veh�culos de motor
								ligeros</td>
						</tr>
						<tr>
							<td>7712 Alquiler de camiones</td>
						</tr>
						<tr>
							<td>772 Alquiler de efectos personales y art�culos de uso
								dom�stico</td>
						</tr>
						<tr>
							<td>7721 Alquiler de art�culos de ocio y deportivos</td>
						</tr>
						<tr>
							<td>7722 Alquiler de cintas de v�deo y discos</td>
						</tr>
						<tr>
							<td>7729 Alquiler de otros efectos personales y art�culos de
								uso dom�stico</td>
						</tr>
						<tr>
							<td>773 Alquiler de otra maquinaria, equipos y bienes
								tangibles</td>
						</tr>
						<tr>
							<td>7731 Alquiler de maquinaria y equipo de uso agr�cola</td>
						</tr>
						<tr>
							<td>7732 Alquiler de maquinaria y equipo para la
								construcci�n e ingenier�a civil</td>
						</tr>
						<tr>
							<td>7733 Alquiler de maquinaria y equipo de oficina,
								incluidos ordenadores</td>
						</tr>
						<tr>
							<td>7734 Alquiler de medios de navegaci�n</td>
						</tr>
						<tr>
							<td>7735 Alquiler de medios de transporte a�reo</td>
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
							<td>781 Actividades de las agencias de colocaci�n</td>
						</tr>
						<tr>
							<td>7810 Actividades de las agencias de colocaci�n</td>
						</tr>
						<tr>
							<td>782 Actividades de las empresas de trabajo temporal</td>
						</tr>
						<tr>
							<td>7820 Actividades de las empresas de trabajo temporal</td>
						</tr>
						<tr>
							<td>783 Otra provisi�n de recursos humanos</td>
						</tr>
						<tr>
							<td>7830 Otra provisi�n de recursos humanos</td>
						</tr>
						<tr>
							<td>79 Actividades de agencias de viajes, operadores
								tur�sticos, servicios de reservas y actividades relacionadas con
								los mismos</td>
						</tr>
						<tr>
							<td>791 Actividades de agencias de viajes y operadores
								tur�sticos</td>
						</tr>
						<tr>
							<td>7911 Actividades de las agencias de viajes</td>
						</tr>
						<tr>
							<td>7912 Actividades de los operadores tur�sticos</td>
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
							<td>80 Actividades de seguridad e investigaci�n</td>
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
							<td>803 Actividades de investigaci�n</td>
						</tr>
						<tr>
							<td>8030 Actividades de investigaci�n</td>
						</tr>
						<tr>
							<td>81 Servicios a edificios y actividades de jardiner�a</td>
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
							<td>813 Actividades de jardiner�a</td>
						</tr>
						<tr>
							<td>8130 Actividades de jardiner�a</td>
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
							<td>8219 Actividades de fotocopiado, preparaci�n de
								documentos y otras actividades especializadas de oficina</td>
						</tr>
						<tr>
							<td>822 Actividades de los centros de llamadas</td>
						</tr>
						<tr>
							<td>8220 Actividades de los centros de llamadas</td>
						</tr>
						<tr>
							<td>823 Organizaci�n de convenciones y ferias de muestras</td>
						</tr>
						<tr>
							<td>8230 Organizaci�n de convenciones y ferias de muestras</td>
						</tr>
						<tr>
							<td>829 Actividades de apoyo a las empresas n.c.o.p.</td>
						</tr>
						<tr>
							<td>8291 Actividades de las agencias de cobros y de
								informaci�n comercial</td>
						</tr>
						<tr>
							<td>8292 Actividades de envasado y empaquetado</td>
						</tr>
						<tr>
							<td>8299 Otras actividades de apoyo a las empresas n.c.o.p.</td>
						</tr>
						<tr>
							<td>84 Administraci�n P�blica y defensa; Seguridad Social
								obligatoria</td>
						</tr>
						<tr>
							<td>841 Administraci�n P�blica y de la pol�tica econ�mica y
								social</td>
						</tr>
						<tr>
							<td>8411 Actividades generales de la Administraci�n P�blica</td>
						</tr>
						<tr>
							<td>8412 Regulaci�n de las actividades sanitarias,
								educativas y culturales y otros servicios sociales, excepto
								Seguridad Social</td>
						</tr>
						<tr>
							<td>8413 Regulaci�n de la actividad econ�mica y contribuci�n
								a su mayor eficiencia</td>
						</tr>
						<tr>
							<td>842 Prestaci�n de servicios a la comunidad en general</td>
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
							<td>8424 Orden p�blico y seguridad</td>
						</tr>
						<tr>
							<td>8425 Protecci�n civil</td>
						</tr>
						<tr>
							<td>843 Seguridad Social obligatoria</td>
						</tr>
						<tr>
							<td>8430 Seguridad Social obligatoria</td>
						</tr>
						<tr>
							<td>85 Educaci�n</td>
						</tr>
						<tr>
							<td>851 Educaci�n preprimaria</td>
						</tr>
						<tr>
							<td>8510 Educaci�n preprimaria</td>
						</tr>
						<tr>
							<td>852 Educaci�n primaria</td>
						</tr>
						<tr>
							<td>8520 Educaci�n primaria</td>
						</tr>
						<tr>
							<td>853 Educaci�n secundaria</td>
						</tr>
						<tr>
							<td>8531 Educaci�n secundaria general</td>
						</tr>
						<tr>
							<td>8532 Educaci�n secundaria t�cnica y profesional</td>
						</tr>
						<tr>
							<td>854 Educaci�n postsecundaria</td>
						</tr>
						<tr>
							<td>8541 Educaci�n postsecundaria no terciaria</td>
						</tr>
						<tr>
							<td>8543 Educaci�n universitaria</td>
						</tr>
						<tr>
							<td>8544 Educaci�n terciaria no universitaria</td>
						</tr>
						<tr>
							<td>855 Otra educaci�n</td>
						</tr>
						<tr>
							<td>8551 Educaci�n deportiva y recreativa</td>
						</tr>
						<tr>
							<td>8552 Educaci�n cultural</td>
						</tr>
						<tr>
							<td>8553 Actividades de las escuelas de conducci�n y
								pilotaje</td>
						</tr>
						<tr>
							<td>8559 Otra educaci�n n.c.o.p.</td>
						</tr>
						<tr>
							<td>856 Actividades auxiliares a la educaci�n</td>
						</tr>
						<tr>
							<td>8560 Actividades auxiliares a la educaci�n</td>
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
							<td>862 Actividades m�dicas y odontol�gicas</td>
						</tr>
						<tr>
							<td>8621 Actividades de medicina general</td>
						</tr>
						<tr>
							<td>8622 Actividades de medicina especializada</td>
						</tr>
						<tr>
							<td>8623 Actividades odontol�gicas</td>
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
								personas mayores y con discapacidad f�sica</td>
						</tr>
						<tr>
							<td>8731 Asistencia en establecimientos residenciales para
								personas mayores</td>
						</tr>
						<tr>
							<td>8732 Asistencia en establecimientos residenciales para
								personas con discapacidad f�sica</td>
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
							<td>8891 Actividades de cuidado diurno de ni�os</td>
						</tr>
						<tr>
							<td>8899 Otros actividades de servicios sociales sin
								alojamiento n.c.o.p.</td>
						</tr>
						<tr>
							<td>90 Actividades de creaci�n, art�sticas y espect�culos</td>
						</tr>
						<tr>
							<td>900 Actividades de creaci�n, art�sticas y espect�culos</td>
						</tr>
						<tr>
							<td>9001 Artes esc�nicas</td>
						</tr>
						<tr>
							<td>9002 Actividades auxiliares a las artes esc�nicas</td>
						</tr>
						<tr>
							<td>9003 Creaci�n art�stica y literaria</td>
						</tr>
						<tr>
							<td>9004 Gesti�n de salas de espect�culos</td>
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
							<td>9103 Gesti�n de lugares y edificios hist�ricos</td>
						</tr>
						<tr>
							<td>9104 Actividades de los jardines bot�nicos, parques
								zool�gicos y reservas naturales</td>
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
							<td>9311 Gesti�n de instalaciones deportivas</td>
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
								parques tem�ticos</td>
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
							<td>9492 Actividades de organizaciones pol�ticas</td>
						</tr>
						<tr>
							<td>9499 Otras actividades asociativas n.c.o.p.</td>
						</tr>
						<tr>
							<td>95 Reparaci�n de ordenadores, efectos personales y
								art�culos de uso dom�stico</td>
						</tr>
						<tr>
							<td>951 Reparaci�n de ordenadores y equipos de comunicaci�n</td>
						</tr>
						<tr>
							<td>9511 Reparaci�n de ordenadores y equipos perif�ricos</td>
						</tr>
						<tr>
							<td>9512 Reparaci�n de equipos de comunicaci�n</td>
						</tr>
						<tr>
							<td>952 Reparaci�n de efectos personales y art�culos de uso
								dom�stico</td>
						</tr>
						<tr>
							<td>9521 Reparaci�n de aparatos electr�nicos de audio y
								v�deo de uso dom�stico</td>
						</tr>
						<tr>
							<td>9522 Reparaci�n de aparatos electrodom�sticos y de
								equipos para el hogar y el jard�n</td>
						</tr>
						<tr>
							<td>9523 Reparaci�n de calzado y art�culos de cuero</td>
						</tr>
						<tr>
							<td>9524 Reparaci�n de muebles y art�culos de menaje</td>
						</tr>
						<tr>
							<td>9525 Reparaci�n de relojes y joyer�a</td>
						</tr>
						<tr>
							<td>9529 Reparaci�n de otros efectos personales y art�culos
								de uso dom�stico</td>
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
							<td>9602 Peluquer�a y otros tratamientos de belleza</td>
						</tr>
						<tr>
							<td>9603 Pompas f�nebres y actividades relacionadas</td>
						</tr>
						<tr>
							<td>9604 Actividades de mantenimiento f�sico</td>
						</tr>
						<tr>
							<td>9609 Otras servicios personales n.c.o.p.</td>
						</tr>
						<tr>
							<td>97 Actividades de los hogares como empleadores de
								personal dom�stico</td>
						</tr>
						<tr>
							<td>970 Actividades de los hogares como empleadores de
								personal dom�stico</td>
						</tr>
						<tr>
							<td>9700 Actividades de los hogares como empleadores de
								personal dom�stico</td>
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
				<p>Busque el c�digo en la tabla y despu�s m�rquelo en la casilla





				
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

