<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
            <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
                        <%@taglib prefix="display" uri="http://displaytag.sf.net" %>


                            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                            <html>

                            <head>

                                <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

                                <meta charset="utf-8">
                                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                <meta name="viewport" content="width=device-width, initial-scale=1">
                                <meta name="description" content="Encuestas ambientales Junta de Andalucía">
                                <meta name="author" content="Junta de Andalucía">
                                <title>
                                    <tiles:insertAttribute name="title" ignore="true" />
                                </title>


                                <!-- Bootstrap Core CSS -->
                                <link href="back/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

                                <!-- MetisMenu CSS -->
                                <link href="back/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

                                <!-- Timeline CSS -->
                                <link href="back/dist/css/timeline.css" rel="stylesheet">

                                <!-- Custom CSS -->
                                <link href="back/dist/css/sb-admin-2.css" rel="stylesheet">

                                <!-- Morris Charts CSS -->
                                <link href="back/bower_components/morrisjs/morris.css" rel="stylesheet">

                                <!-- Custom Fonts -->
                                <link href="back/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

                                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                                <!--[if lt IE 9]>
	        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	        
	        
	    <![endif]-->
	    
	    
	    					<link rel="stylesheet" href="back/nuevojs/screen.css">
							<script src="back/nuevojs/jquery.js"></script>
							<script src="back/nuevojs/jquery.validate.js"></script>
							<script>
							$().ready(function() {
								// validate the comment form when it is submitted
								$("#commentForm").validate();
						
							});
							</script>	
	    						
	    						
	    						
                            </head>

                            <body>

                                <div id="wrapper">

                                    <tiles:insertAttribute name="header" />

                                    <tiles:insertAttribute name="body" />
                                    <jstl:if test="${message != null}">
                                        <br />
                                        <span class="message"><spring:message code="${message}" /></span>
                                    </jstl:if>

                                    <tiles:insertAttribute name="footer" />

                                </div>

                                <!-- Javascripts -->
                                <!-- jQuery -->
<!--                                 <script src="back/bower_components/jquery/dist/jquery.min.js"></script> -->

                                <!-- Bootstrap Core JavaScript -->
                                <script src="back/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

                                <!-- Metis Menu Plugin JavaScript -->
                                <script src="back/bower_components/metisMenu/dist/metisMenu.min.js"></script>

                                <!-- Morris Charts JavaScript -->
                                <script src="back/bower_components/raphael/raphael-min.js"></script>
                                <script src="back/bower_components/morrisjs/morris.min.js"></script>
                                <script src="back/js/morris-data.js"></script>

                                <!-- Custom Theme JavaScript -->
                                <script src="back/dist/js/sb-admin-2.js"></script>


                            </body>

                            </html>