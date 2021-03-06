<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin"/>
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
                    <img
                            src='
                                <g:if test="${p.listImage.size() > 0}">
                                    ${createLink(controller:"poi", action:"getImage", id:"${p.listImage[0].id}")}
                                </g:if>
                                <g:else>
                                    http://via.placeholder.com/300x200
                                </g:else>
                            '
                            alt="Fjords"
                            width="300" height="200" style="width: 300px; height: 200px;">
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