<%-- * action-1.jsp * * Copyright (C) 2013 Universidad de Sevilla * * The use of this project is hereby constrained to the conditions of the * TDG Licence, a copy of which you may download from * http://www.tdg-seville.info/License.html --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<style>
.errorMessages {
	display: none;
	list-style-type: disc;
	margin: 0 10px 15px 10px;
	padding: 8px 35px 8px 30px;
	color: #B94A48;
	background-color: #F2DEDE;
	border: 2px solid #EED3D7;
	border-radius: 4px;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}

.errorMessages span {
	font-weight: bold;
}
</style>

<jstl:if test="${tipoCIF1!=null}">
	<jstl:import url="../../pages/cif1/paginaCinco.jsp" />
</jstl:if>

<jstl:if test="${tipoCIF2!=null}">
	<jstl:import url="../../pages/cif2/paginaCinco.jsp" />
</jstl:if>

<jstl:if test="${tipoCIF3!=null}">
	<jstl:import url="../../pages/cif3/paginaCinco.jsp" />
</jstl:if>

<jstl:if test="${tipoCIF4!=null}">
	<jstl:import url="../../pages/cif4/paginaCinco.jsp" />
</jstl:if>