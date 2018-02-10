<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <asset:stylesheet src="tpgrails/grid.css"/>
</head>

<body>

<div id="list-poi" class="content scaffold-list" role="main">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <div>

        <g:each var="p" in="${poiList}">
            <div class="gallery">

                <g:link controller="poi" action="show" id="${p.id}">
                    <img src="http://via.placeholder.com/300x200" alt="Fjords" width="300" height="200">
                </g:link>

                <div class="desc">${p.description}</div>
            </div>
        </g:each>

    </div>


    <div class="pagination">
        <g:paginate total="${poiCount ?: 0}"/>
    </div>

</div>

</body>
</html>