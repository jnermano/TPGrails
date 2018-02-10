<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainContent" />
        <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
            <div id="list-poi" class="content scaffold-list" role="main">
            <div class="container-fluid">
            <div class="col-md-4">
                <h1 style="width: 50%"><g:message code="default.list.label" args="[entityName]" /></h1>
            </div>
            <div class="col-md-6">
                <g:link class="btn btn-info btn-xs create pull-right" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

            </div>

        </div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${poiList}" />

            <div class="pagination">
                <g:paginate total="${poiCount ?: 0}" />
            </div>
        </div>

    </body>
</html>