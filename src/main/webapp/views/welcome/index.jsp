<%--
 * index.jsp
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<!-- Homepage Slider -->
<div class="homepage-slider">
	<div id="sequence">
		<ul class="sequence-canvas">
			<!-- Slide 1 -->
			<li class="bg4">
				<!-- Slide Title -->
				<h3 class="title">Estad�stica sobre Actividad Econ�mica y Medio
					Ambiente en Andaluc�a</h3> <!-- Slide Text -->
				<h3 class="subtitle">Incluido en el Plan Estad�stico de
					Andaluc�a 2013-2017</h3>
				<div class="subtitle-button" align="center">
					<a
						href="http://www.juntadeandalucia.es/medioambiente/site/portalweb/menuitem.7e1cf46ddf59bb227a9ebe205510e1ca/?vgnextoid=cba8e71b027fc310VgnVCM2000000624e50aRCRD&vgnextchannel=43335d34e7a85310VgnVCM2000000624e50aRCRD"
						class="btn" target="_blank" style="margin-top: 20px;">Visitar
						p�gina</a>
				</div> <!-- Slide Image --> <img class="slide-img"
				src="front/img/logojunta2.png" alt="Slide 1" />
			</li>
			<!-- End Slide 1 -->
			<!-- Slide 2 -->
			<li class="bg3">
				<!-- Slide Title -->
				<h2 class="title">Conoce el buscador p�blico del DEMA</h2> <!-- Slide Text -->
				<h3 class="subtitle">Recogido en el directorio de Empresas y
					Entidades relacionadas con el Medio Ambiente en Andaluc�a</h3>
				<div class="subtitle-button" align="center">
					<a
						href="http://www.juntadeandalucia.es/medioambiente/site/portalweb/menuitem.7e1cf46ddf59bb227a9ebe205510e1ca/?vgnextoid=e0767dbb6cc4b410VgnVCM1000001325e50aRCRD&vgnextchannel=43335d34e7a85310VgnVCM2000000624e50aRCRD"
						class="btn" target="_blank" style="margin-top: 20px;">Visitar
						p�gina</a>
				</div> <!-- Slide Image -->
			</li>
			<!-- End Slide 2 -->
			<!-- Slide 3 -->
			<!-- 					<li class="bg1"> -->
			<!-- 						Slide Title -->
			<!-- 						<h2 class="title">Feature Rich</h2> -->
			<!-- 						Slide Text -->
			<!-- 						<h3 class="subtitle">Huge amount of components and over 30 sample pages!</h3> -->
			<!-- 						Slide Image -->
			<!-- 						<img class="slide-img" src="front/img/logojunta1.png" alt="Slide 3" /> -->
			<!-- 					</li> -->
			<!-- End Slide 3 -->
		</ul>
		<div class="sequence-pagination-wrapper">
			<ul class="sequence-pagination">
				<li>1</li>
				<li>2</li>
			</ul>
		</div>
	</div>
</div>
<!-- End Homepage Slider -->


<div class="container">
	<div class="row">
		<br>
		<div class="col-md-6" align="center">
			<h3>Naturaleza, caracter�sticas y finalidad</h3>
			<br>
			<p align="justify">Las actividades conexas a la protecci�n y
				conservaci�n del medio ambiente y la gesti�n de los recursos
				naturales han experimentado en los �ltimos a�os un auge
				considerable. Tendencia que responde, simult�neamente, a la demanda
				de nuevos bienes y servicios derivados de una mayor concienciaci�n y
				sensibilizaci�n social hacia estos temas, junto al progresivo
				aumento del nivel de exigencia normativo y program�tico por parte de
				las Administraciones P�blicas tanto de �mbito auton�mico como
				nacional y europeo.</p>
			<p align="justify">Esta evoluci�n de la actividad ambiental exige
				la producci�n de informaci�n relacionada con dicho sector,
				informaci�n relevante que apoye la toma de decisiones a la hora de
				dirigir las distintas pol�ticas a desarrollar por los gobiernos en
				general.</p>
			<p align="justify">
				Para ello, la Consejer�a de Medio Ambiente y Ordenaci�n del
				Territorio elabora de forma peri�dica La <b>Estad�stica
					Actividad Econ�mica y Medio Ambiente en Andaluc�a</b> incluida en el <b>Plan
					de Estad�stica de Andaluc�a 2013-2017</b>. Su �rea de estudio se
				enmarca en la necesidad de obtener informaci�n acerca de los
				procesos de creaci�n de actividad, volumen de negocio, inversi�n y
				empleo conexos a la protecci�n del medio ambiente y la gesti�n
				sostenible de los recursos naturales en nuestra Comunidad Aut�noma.
			</p>
			<p align="justify">El presente proyecto trata, en definitiva, de
				obtener un conocimiento exhaustivo de la composici�n de las
				actividades medioambientales, su especializaci�n y diversificaci�n,
				tipo y tama�o de los mercados, y por supuesto, el empleo generado.
				Todo lo cual constituye una prioridad de la Consejer�a de Medio
				Ambiente y Ordenaci�n del Territorio de la Junta de Andaluc�a, al
				objeto de contribuir significativamente al desarrollo sostenible de
				Andaluc�a, a trav�s de la elaboraci�n y puesta en marcha de las
				pol�ticas y programas m�s id�neos para consolidar la oferta andaluza
				de bienes, servicios y tecnolog�as ambientales.</p>
			<br>
		</div>
		<div class="col-md-6" align="center">
			<h3>Tipos de cuestionarios</h3>
			<div class="col-md-6 col-sm-6">
				<div class="service-wrapper">
					<a href="front/Cuestionario_2014_Tipo_I.pdf" target="_blank"><img
						src="front/img/service-icon/doc.png" alt="Tipo 1"></a>
					<h3>Tipo I</h3>
					<p>Productores de bienes y servicios ambientales</p>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="service-wrapper">
					<a href="front/Cuestionario 2014_Tipo_II.pdf" target="_blank"><img
						src="front/img/service-icon/doc.png" alt="Tipo 2"></a>
					<h3>Tipo II</h3>
					<p>Empresas y entidades especializadas en Educaci�n y
						sensibilizaci�n ambiental y en Ecoinnovaci�n, investigaci�n y
						desarrollo en materia ambiental</p>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="service-wrapper">
					<a href="front/Cuestionario_2014_Tipo_III.pdf" target="_blank"><img
						src="front/img/service-icon/doc.png" alt="Tipo 3"></a>
					<h3>Tipo III</h3>
					<p>Administraci�n local andaluza</p>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="service-wrapper">
					<a href="front/Cuestionario_2014_Tipo_IV.pdf" target="_blank"><img src="front/img/service-icon/doc.png" alt="Tipo 4"></a>
					<h3>Tipo IV</h3>
					<p>Empresas vinculadas a la industria no ambiental</p>
				</div>
			</div>
		</div>
	</div>
</div>

<br>
<br>

