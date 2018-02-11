<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-poi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-poi" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.poi}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.poi}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:uploadForm action="save_poi">



                    <div><label>Nom</label><input type="text" name="nom" /></div>
                    <div><label>Emplacement</label><input type="text" name="emplacement" /></div>
                    <div><label>Latitude</label><input type="text" name="latitude" /></div>
                    <div><label>Longitude</label><input type="text" name="longitude" /></div>

                    <div><label>Image</label><input type="file" name="image" /></div>



                <fieldset class="buttons">
                    <g:submitButton name="upload" class="save" value="Upload" />
                </fieldset>

            </g:uploadForm>
        </div>
    </body>
</html>
