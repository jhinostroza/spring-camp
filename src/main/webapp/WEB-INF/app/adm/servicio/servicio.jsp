<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrador</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">




                    <div class="panel panel-default">

                        <div class="panel-heading">
                            <div class="icon">
                                <i class="icon-2x icon-cogs"></i>
                            </div>
                            <h4>Servicios</h4>
                            <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/servicio/new"> Nuevo </a>
                        </div>



                        <div class="panel-body">

                            <table class="table table-hover table-bordered">

                                <th class="header">Descripción</th>
                                <th class="header">Costo Hora</th>
                                <th class="span1 header"></th>
                                <th class="span1 header"></th>

                                <c:forEach var="camp" items="${servicios}">
                                    <tr>
                                        <td><c:out value="${camp.descripcion}"/></td>
                                        <td><c:out value="${camp.costoHora}"/></td>
                                        <td><a href="<%=contextPath%>/adm/servicio/update/${adm.id}"><i class="icon-edit"></i></a>
                                        </td>

                                        <td><a href="<%=contextPath%>/adm/servicio/delete/${adm.id}"><i class="icon-trash" style="color: red"></i></a>
                                        </td>

                                    </tr>
                                </c:forEach>
                            </table>

                        </div>


                    </div>









                </div>
            </div>
            <hr>
        </div>

        <%@include file="/public/footer.jsp" %>

    </body>
</html>







