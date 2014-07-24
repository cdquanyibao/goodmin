package com.yuyusoft.goodmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SysPermitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SysPermit.list(params), model: [sysPermitInstanceCount: SysPermit.count()]
    }

    def show(SysPermit sysPermitInstance) {
        respond sysPermitInstance
    }

    def create() {
        respond new SysPermit(params)
    }

    @Transactional
    def save(SysPermit sysPermitInstance) {
        if (sysPermitInstance == null) {
            notFound()
            return
        }

        if (sysPermitInstance.hasErrors()) {
            respond sysPermitInstance.errors, view: 'create'
            return
        }

        sysPermitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sysPermit.label', default: 'SysPermit'), sysPermitInstance.id])
                redirect sysPermitInstance
            }
            '*' { respond sysPermitInstance, [status: CREATED] }
        }
    }

    def edit(SysPermit sysPermitInstance) {
        respond sysPermitInstance
    }

    @Transactional
    def update(SysPermit sysPermitInstance) {
        if (sysPermitInstance == null) {
            notFound()
            return
        }

        if (sysPermitInstance.hasErrors()) {
            respond sysPermitInstance.errors, view: 'edit'
            return
        }

        sysPermitInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SysPermit.label', default: 'SysPermit'), sysPermitInstance.id])
                redirect sysPermitInstance
            }
            '*' { respond sysPermitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SysPermit sysPermitInstance) {

        if (sysPermitInstance == null) {
            notFound()
            return
        }

        sysPermitInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SysPermit.label', default: 'SysPermit'), sysPermitInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sysPermit.label', default: 'SysPermit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
