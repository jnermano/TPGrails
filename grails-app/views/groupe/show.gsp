<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin"/>
    <g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-groupe" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <div class="row">
        <div class="col-md-6">

            <table class="table table-bordered col-md-6">
                <tr>
                    <td colspan="2">
                        <img
                                src='
                                <g:if test="${groupe.image}">
                                    ${createLink(controller:"groupe", action:"getImage", id:"${groupe.id}")}
                                </g:if>
                                <g:else>
                                    http://via.placeholder.com/300x200
                                </g:else>
                                '
                                alt="Fjords"
                                width="300" height="200">
                    </td>
                </tr>

                <tr>
                    <th>Nom du groupe</th>
                    <td>${groupe.nomGroupe}</td>
                </tr>

                <tr>
                    <th>Description</th>
                    <td>${groupe.description}</td>
                </tr>
            </table>

        </div>
    </div>


    <g:form resource="${this.groupe}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit btn" action="edit" resource="${this.groupe}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <input class="delete btn btn-danger" type="submit"
                   value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                   onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>

</div>
</body>
</html>
