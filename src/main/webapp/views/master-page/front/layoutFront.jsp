<%-- * layout.jsp * * Copyright (C) 2014 Universidad de Sevilla * * The use of this project is hereby constrained to the conditions of the * TDG Licence, a copy of which you may download from * http://www.tdg-seville.info/License.html --%>

    <%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

        <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
                    <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

                        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                        <html>

                        <head>

                            <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

                            <meta charset="utf-8">
                            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
                            <meta name="description" content="">
                            <meta name="viewport" content="width=device-width">
                            <title>
                                <tiles:insertAttribute name="title" ignore="true" />
                            </title>
                            <link rel="stylesheet" href="front/css/bootstrap.min.css">
                            <link rel="stylesheet" href="front/css/icomoon-social.css">
                            <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

                            <link rel="stylesheet" href="front/css/leaflet.css" />
                            <!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
                            <link rel="stylesheet" href="front/css/main.css">

                            <script src="front/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
                        </head>

                        <body>

                            <tiles:insertAttribute name="header" />

                            <tiles:insertAttribute name="body" />
                            <jstl:if test="${message != null}">
                                <br />
                                <span class="message"><spring:message code="${message}" /></span>
                            </jstl:if>

                            <tiles:insertAttribute name="footer" />

                            <!-- Javascripts -->
                            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                            <script>
                                window.jQuery || document.write('<script src="front/js/jquery-1.9.1.min.js"><\/script>')
                            </script>
                            <script src="front/js/bootstrap.min.js"></script>
                            <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
                            <script src="front/js/jquery.fitvids.js"></script>
                            <script src="front/js/jquery.sequence-min.js"></script>
                            <script src="front/js/jquery.bxslider.js"></script>
                            <script src="front/js/main-menu.js"></script>
                            <script src="front/js/template.js"></script>


                        </body>

                        </html>