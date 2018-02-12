<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'groupe.label', default: 'Groupe')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-groupe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-groupe" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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


            <g:uploadForm resource="${this.groupe}" action="update">
                <div class="row">
                    <div class="col-md-5">

                        <input type="hidden" name="id" value="${this.groupe.id}">

                        <div class="form-group "><label>Nom</label>
                            <input type="text" name="nomGroupe" value="${this.groupe.nomGroupe}" class="form-control"/></div>

                        <div class="form-group "><label>Description</label>
                            <input type="text" name="description" value="${this.groupe.description}" class="form-control"/>
                        </div>

                        <div class="form-group "><label>Image</label> <br/>
                            <input type="file" name="image"/></div>

                        <fieldset class="buttons">
                            <g:submitButton name="upload" class="save btn btn-primary" value="Upload"/>
                        </fieldset>

                    </div>
                </div>

            </g:uploadForm>



        </div>
    </body>
</html>
