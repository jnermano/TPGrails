package ht.mbds.tpgrails

import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_ADMIN', 'ROLE_MODER'])
class PoiController {

    PoiService poiService
    IllustrationService illustrationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond poiService.list(params), model:[poiCount: poiService.count()]
    }

    @Secured(['permitAll'])
    def indexJson() {
         def pois = poiService.list()
        render (pois as JSON)
    }

    @Secured(['permitAll'])
    def show(Long id) {
        respond poiService.get(id)
    }

    @Secured(['permitAll'])
    def showGrid(Integer max){
        params.max = Math.min(max ?: 10, 100)
        respond poiService.list(params), model:[poiCount: poiService.count()]
    }


    def create() {
        respond new Poi(params)
    }


    def getImage(Long id){
        def illustration = illustrationService.get(id)
        response.outputStream << illustration.image
        response.outputStream.flush()
    }


    def save(Poi poi) {
        if (poi == null) {
            notFound()
            return
        }

        try {
            poiService.save(poi)

            for(int i = 1; i < 5; i++){
                def file = params.get("image" + i)

                if (file == null)
                    continue


                def illustration = new Illustration()
                illustration.nomImage = poi.nom + poi.id
                illustration.pathImage = poi.description + poi.id
                illustration.image = file.getBytes()
                illustration.poiIllustration = poi
                illustration.save()
            }

        } catch (ValidationException e) {
            respond poi.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'poi.label', default: 'Poi'), poi.id])
                redirect poi
            }
            '*' { respond poi, [status: CREATED] }
        }
    }


    def edit(Long id) {
        respond poiService.get(id)
    }


    def update(Poi poi) {
        if (poi == null) {
            notFound()
            return
        }

        try {
            poiService.save(poi)

            for(int i = 1; i < 5; i++){
                def file = params.get("image" + i)

                if (file == null)
                    continue


                def illustration = new Illustration()
                illustration.nomImage = poi.nom + poi.id
                illustration.pathImage = poi.description + poi.id
                illustration.image = file.getBytes()
                illustration.poiIllustration = poi
                illustration.save()
            }

        } catch (ValidationException e) {
            respond poi.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'poi.label', default: 'Poi'), poi.id])
                redirect poi
            }
            '*'{ respond poi, [status: OK] }
        }
    }


    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        poiService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'poi.label', default: 'Poi'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'poi.label', default: 'Poi'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
