<%--
 * textarea.tag
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@ tag language="java" body-content="empty" %>

<%-- Taglibs --%>

<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags" %>

<%-- Checkbox --%>

<%-- Attributes --%> 

<%@ attribute name="path" required="true" %>
<%@ attribute name="url" required="false" %>
<%@ attribute name="style" required="false" %>
<%@ attribute name="id" required="false" %>
<%@ attribute name="onchange" required="false" %>


<%-- Definition --%>

<div class="form-group" style="
    width: 0px;
    margin-bottom: 0px;
">
	<form:label path="${path}">
	</form:label>
	<form:checkbox path="${path}" style="${style}" id="${id}" onchange="${onchange}"/>
	<form:errors path="${path}" cssClass="error" />
</div>
