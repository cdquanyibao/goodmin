package com.yuyusoft.goodmin

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpAdminController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OpAdmin.list(params), model: [opAdminInstanceCount: OpAdmin.count()]
    }

    def show(OpAdmin opAdminInstance) {
        respond opAdminInstance
    }

    def create() {
        def opAdminInstance = new OpAdmin(params)
        // init status to 1
        opAdminInstance.status = 1
        respond opAdminInstance
    }

    @Transactional
    def save(OpAdmin opAdminInstance) {
        if (opAdminInstance == null) {
            notFound()
            return
        }

        if (opAdminInstance.hasErrors()) {
            respond opAdminInstance.errors, view: 'create'
            return
        }

        opAdminInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin'), opAdminInstance.id])
                redirect opAdminInstance
            }
            '*' { respond opAdminInstance, [status: CREATED] }
        }
    }

    def edit(OpAdmin opAdminInstance) {
        respond opAdminInstance
    }

    @Transactional
    def update(OpAdmin opAdminInstance) {
        if (opAdminInstance == null) {
            notFound()
            return
        }

        if (opAdminInstance.hasErrors()) {
            respond opAdminInstance.errors, view: 'edit'
            return
        }

        opAdminInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OpAdmin.label', default: 'OpAdmin'), opAdminInstance.id])
                redirect opAdminInstance
            }
            '*' { respond opAdminInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OpAdmin opAdminInstance) {

        if (opAdminInstance == null) {
            notFound()
            return
        }

        opAdminInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OpAdmin.label', default: 'OpAdmin'), opAdminInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

}
