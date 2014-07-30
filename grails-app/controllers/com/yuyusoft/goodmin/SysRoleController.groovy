package com.yuyusoft.goodmin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SysRoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def configPermits(SysRole sysRoleInstance) {
        println ">>> configPermits"
        respond sysRoleInstance
    }

    @Transactional
    def savePermits(SysRole sysRoleInstance) {
        println ">>> ${sysRoleInstance.roleName}"
        println ">>> params: " + params.toQueryString()

        // clean all sysPermits of sysRoleInstance
        sysRoleInstance.sysPermits = null

        params.each {
            println(">>> key=" + it.key + ", value=" + it.value)

            if (it.value == "on") {

                def sysPermitInstance = SysPermit.get(it.key)
                println "get key >>> " + sysPermitInstance.permitName

                sysRoleInstance.addToSysPermits(sysPermitInstance)
            }
        }

        if (sysRoleInstance.hasErrors()) {
            log.error(sysRoleInstance.errors)
            respond sysRoleInstance.errors, view: 'show'
            return
        }

        try {
            sysRoleInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            sysRoleInstance.errors.putAt("sysPermits", e)
            respond sysRoleInstance.errors, view: 'show'
            return
        }

        flash.message = message(code: "default.saved.message")

        sysRoleInstance.sysPermits.each {
            println("+++" + it.permitUrl)
        }

        redirect sysRoleInstance
    }

/*    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SysRole.list(params), model: [sysRoleInstanceCount: SysRole.count()]
    }*/

    def index() {
        respond SysRole.list(), model: [sysRoleInstanceCount: SysRole.count()]
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

        try {
            sysRoleInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond sysRoleInstance.errors, view: 'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sysRole.label', default: 'SysRole'), sysRoleInstance.roleName])
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

        try {
            sysRoleInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond sysRoleInstance.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sysRole.label', default: 'SysRole'), sysRoleInstance.roleName])
                log.error("msg>>>" + flash.message)
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

        try {
            sysRoleInstance.delete flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            println(">>> " + sysRoleInstance.errors)
            flash.message = message(code: "default.goodmin.oper.delete.forbidden")
            redirect(action: 'show', id: sysRoleInstance.id)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sysRole.label', default: 'SysRole'), sysRoleInstance.id])
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
