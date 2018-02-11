package ht.mbds.tpgrails

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class GroupeController {

    GroupeService groupeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond groupeService.list(params), model:[groupeCount: groupeService.count()]
    }

    def show(Long id) {
        respond groupeService.get(id)
    }

    def create() {
        respond new Groupe(params)
    }

    def save(Groupe groupe) {
        if (groupe == null) {
            notFound()
            return
        }

        try {


            groupeService.save(groupe)
        } catch (ValidationException e) {
            respond groupe.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupe.label', default: 'Groupe'), groupe.id])
                redirect groupe
            }
            '*' { respond groupe, [status: CREATED] }
        }
    }

    def add_group(){
        respond new Groupe(params)
    }

    def save_group(){
        def groupe = new Groupe(params)
        /*groupe.nomGroupe = params.nom
        groupe.description = params.desc
        groupe.image = request.get('image').getBytes()*/

        groupe.save()

        redirect(action: 'index')

    }

    def getImage(Long id){
        def groupe = groupeService.get(id)
        response.outputStream << groupe.image
        response.outputStream.flush()
    }

    def edit(Long id) {
        respond groupeService.get(id)
    }

    def update(Groupe groupe) {
        if (groupe == null) {
            notFound()
            return
        }

        try {
            groupeService.save(groupe)
        } catch (ValidationException e) {
            respond groupe.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'groupe.label', default: 'Groupe'), groupe.id])
                redirect groupe
            }
            '*'{ respond groupe, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        groupeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'groupe.label', default: 'Groupe'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupe.label', default: 'Groupe'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
