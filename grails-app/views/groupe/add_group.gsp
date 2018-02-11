<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="mainContent" />
    <g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-groupe" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.groupe}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.groupe}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>


    <g:uploadForm action="save_group">

        <div><label>Nom</label><input type="text" name="nomGroupe" /></div>

        <div><label>Desc</label><input type="text" name="description" /></div>

        <div><label>Image</label><input type="file" name="image" /></div>

        <fieldset class="buttons">
            <g:submitButton name="upload" class="save" value="Upload" />
        </fieldset>

    </g:uploadForm>


</div>
</body>
</html>
