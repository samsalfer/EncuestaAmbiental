<%-- * header.jsp * * Copyright (C) 2014 Universidad de Sevilla * * The use of this project is hereby constrained to the conditions of the * TDG Licence, a copy of which you may download from * http://www.tdg-seville.info/License.html --%>

    <%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
        <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
                    <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

                        <!-- Navigation -->
                        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                            <div class="navbar-header">

                                <a class="navbar-brand" href="encuesta/bienvenida.do">Encuesta Junta de Andaluc&iacutea</a>
                            </div>
                            <!-- /.navbar-header -->

                            <ul class="nav navbar-top-links navbar-right">

                                <!-- /.dropdown -->
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                    	<security:authorize access="hasAnyRole('ADMIN')">
                                    	<li><a href="encuesta/bienvenida.do"><i class="fa fa-user fa-fw"></i> Administración</a>
                        				</li>
                        				</security:authorize>
                                        <li><a href="j_spring_security_logout"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a>
                                        </li>
                                    </ul>
                                    <!-- /.dropdown-user -->
                                </li>
                                <!-- /.dropdown -->
                            </ul>
                            <!-- /.navbar-top-links -->


                            <!-- /.navbar-static-side -->
                        </nav>