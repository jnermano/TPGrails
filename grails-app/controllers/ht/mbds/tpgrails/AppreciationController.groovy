package ht.mbds.tpgrails

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AppreciationController {

    AppreciationService appreciationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond appreciationService.list(params), model:[appreciationCount: appreciationService.count()]
    }

    def show(Long id) {
        respond appreciationService.get(id)
    }

    def create() {
        respond new Appreciation(params)
    }

    def save(Appreciation appreciation) {
        if (appreciation == null) {
            notFound()
            return
        }

        try {
            appreciationService.save(appreciation)
        } catch (ValidationException e) {
            respond appreciation.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'appreciation.label', default: 'Appreciation'), appreciation.id])
                redirect appreciation
            }
            '*' { respond appreciation, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond appreciationService.get(id)
    }

    def update(Appreciation appreciation) {
        if (appreciation == null) {
            notFound()
            return
        }

        try {
            appreciationService.save(appreciation)
        } catch (ValidationException e) {
            respond appreciation.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'appreciation.label', default: 'Appreciation'), appreciation.id])
                redirect appreciation
            }
            '*'{ respond appreciation, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        appreciationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'appreciation.label', default: 'Appreciation'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'appreciation.label', default: 'Appreciation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
