<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-poi" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-poi" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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


            <g:uploadForm resource="${this.poi}" action="save" class="">

                <div class="row">
                    <div class="col-md-5">

                        <input type="hidden" value="${this.poi.id}">

                        <div class="form-group "><label>Nom</label>
                            <input type="text" name="nom" class="form-control" value="${this.poi.nom}"/></div>

                        <div class="form-group"><label>Description</label>
                            <input type="text" name="description" class="form-control" value="${this.poi.description}"/></div>

                        <div class="form-group"><label>Emplacement</label>
                            <input type="text" name="emplacement" class="form-control" value="${this.poi.emplacement}"/></div>

                        <div class="form-group"><label>Latitude</label>
                            <input type="text" name="latitude" class="form-control" value="${this.poi.latitude}"/></div>

                        <div class="form-group"><label>Longitude</label>
                            <input type="text" name="longitude" class="form-control" value="${this.poi.longitude}"/></div>

                        <div class="form-group"><label>Images</label>
                            <br/><input type="file" name="image1"/></div>

                        <div class="form-group"><input type="file" name="image2"/></div>

                        <div class="form-group"><input type="file" name="image3"/></div>

                        <div class="form-group"><input type="file" name="image4"/></div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">

                        <fieldset class="buttons">
                            <g:submitButton name="upload" class="save btn btn-primary" value="Sauvegarder"/>
                        </fieldset>

                    </div>
                </div>

            </g:uploadForm>


            %{--<g:form resource="${this.poi}" method="PUT">
                <g:hiddenField name="version" value="${this.poi?.version}" />
                <fieldset class="form">
                    <f:all bean="poi"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>--}%


        </div>
    </body>
</html>
