package com.yuyusoft.goodmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SysRoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SysRole.list(params), model: [sysRoleInstanceCount: SysRole.count()]
    }

    def show(SysRole sysRoleInstance) {
        respond sysRoleInstance
    }

    def create() {
        respond new SysRole(params)
    }

    @Transactional
    def save(SysRole sysRoleInstance) {
        if (sysRoleInstance == null) {
            notFound()
            return
        }

        if (sysRoleInstance.hasErrors()) {
            respond sysRoleInstance.errors, view: 'create'
            return
        }

        sysRoleInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sysRole.label', default: 'SysRole'), sysRoleInstance.id])
                redirect sysRoleInstance
            }
            '*' { respond sysRoleInstance, [status: CREATED] }
        }
    }

    def edit(SysRole sysRoleInstance) {
        respond sysRoleInstance
    }

    @Transactional
    def update(SysRole sysRoleInstance) {
        if (sysRoleInstance == null) {
            notFound()
            return
        }

        if (sysRoleInstance.hasErrors()) {
            respond sysRoleInstance.errors, view: 'edit'
            return
        }

        sysRoleInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SysRole.label', default: 'SysRole'), sysRoleInstance.id])
                redirect sysRoleInstance
            }
            '*' { respond sysRoleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SysRole sysRoleInstance) {

        if (sysRoleInstance == null) {
            notFound()
            return
        }

        sysRoleInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SysRole.label', default: 'SysRole'), sysRoleInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sysRole.label', default: 'SysRole'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
