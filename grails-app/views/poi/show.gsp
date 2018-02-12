<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-poi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-poi" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>



            <div class="row">
                <div class="col-md-6">

                    <table class="table table-bordered col-md-6">
                        <tr>
                            <td colspan="2">

                                <g:each in="poi.listImage" var="im">
                                    <img
                                            src='${createLink(controller:"poi", action:"getImage", id:"${im}")}'
                                            alt="Fjords"
                                            width="300" height="200" style="width: 300px; height: 200px; margin: 5px" />
                                </g:each>



                            </td>
                        </tr>

                        <tr>
                            <th>Nom du POI</th>
                            <td>${poi.nom}</td>
                        </tr>

                        <tr>
                            <th>Description</th>
                            <td>${poi.description}</td>
                        </tr>
                    </table>

                </div>
            </div>



            <g:form resource="${this.poi}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn" action="edit" resource="${this.poi}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
