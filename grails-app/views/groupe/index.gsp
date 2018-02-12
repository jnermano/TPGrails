<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-groupe" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


            <table class="table table-bordered table-responsive">
                <thead>
                    <tr>
                        <th>Nom Groupe</th>
                        <th>Description</th>
                        <th>Nombre de POIs</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${groupeList}" var="g">
                        <tr>
                            <td><g:link controller="groupe" action="show" id="${g.id}" >${g.nomGroupe}</g:link></td>
                            <td>${g.description}</td>
                            <td>${g.listPois.size()}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>



            <div class="pagination">
                <g:paginate total="${groupeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>