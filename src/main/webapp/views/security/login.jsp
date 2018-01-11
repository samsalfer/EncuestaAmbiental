 <%--
 * login.jsp
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Encuesta Junta Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="back/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="back/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="back/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="back/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="back/nuevojs/jquery.loadmask.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>
	<script type='text/javascript' src='back/nuevojs/jquery.loadmask.js'></script>
	
	<style>
			#content { padding:5px;height:35px; }
		</style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3" align="center">
                <img src="back/img/junta02.png" align="middle" alt="Junta" style="margin-top: 20px;display: block;
    margin-left: auto;
    margin-right: auto;"/>
            </div>
            
            <div class="col-lg-12">
					&nbsp;
		</div>
            
            <div class="col-lg-12" id="content" align="center">
				&nbsp;
		</div>
            
            <div class="col-lg-12">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title	">Identifícate con tu CIF</h3>
                    </div>
                    <div class="panel-body">
                        <form:form action="j_spring_security_check" modelAttribute="credentials">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="CIF" name="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                </div>
                                <jstl:if test="${showError == true}">
									<div class="error">
										<spring:message code="security.login.failed" />
									</div>
								</jstl:if>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Enviar" id="process">
                            </fieldset>
                       	</form:form>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    
		
		
		<script>
			$(document).ready(function(){
				$("#process").bind("click", function () {
					$("#content").mask("Cargando.. Espere por favor");
				});
				
			});
		</script>
    

<!--     jQuery -->
<!--     <script src="back/bower_components/jquery/dist/jquery.min.js"></script> -->

<!--     Bootstrap Core JavaScript -->
<!--     <script src="back/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->

<!--     Metis Menu Plugin JavaScript -->
<!--     <script src="back/bower_components/metisMenu/dist/metisMenu.min.js"></script> -->

<!--     Custom Theme JavaScript -->
<!--     <script src="back/dist/js/sb-admin-2.js"></script> -->
    

</body>

</html>