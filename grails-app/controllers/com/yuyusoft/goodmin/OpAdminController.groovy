package com.yuyusoft.goodmin

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpAdminController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

/*    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OpAdmin.list(params), model: [opAdminInstanceCount: OpAdmin.count()]
    }*/

    def changePassword(OpAdmin opAdminInstance) {
        // 修改个人密码不受全局过滤器影响
        if (session.user == null) {
            redirect controller: 'login', action: 'login'
        }

        // cannot change other's password
        if (session.user.id != opAdminInstance.id) {
            redirect controller: 'login', action: 'deny'
            return
        }

        respond opAdminInstance
    }

    @Transactional
    def updatePassword(OpAdmin opAdminInstance) {
        if (opAdminInstance == null) {
            notFound()
            return
        }

        // 修改个人密码不受全局过滤器影响
        if (session.user == null) {
            redirect controller: 'login', action: 'login'
        }

        // cannot change other's password
        if (session.user.id != opAdminInstance.id) {
            redirect controller: 'login', action: 'deny'
            return
        }

        if (opAdminInstance.hasErrors()) {
            respond opAdminInstance.errors, view: 'changePassword'
            return
        }

//        println ">>> updatePassword params: " + params.toQueryString()

        if (params.newPassword != params.newPasswordConfirm) {
            flash.message = message(code: 'opAdmin.oper.updatePassword.error.notsame')
            respond opAdminInstance, view: 'changePassword'
            return
        }

        if (params.oldPassword.encodeAsMD5() != opAdminInstance.loginPWD) {
            flash.message = message(code: 'opAdmin.oper.updatePassword.error.wrong')
            respond opAdminInstance, view: 'changePassword'
            return
        }

        opAdminInstance.loginPWD = params.newPassword.encodeAsMD5()

        try {
            opAdminInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond opAdminInstance.errors, view: 'changePassword'
            return
        }

        SysLogUtils.trace(request, session, message(code: 'trace.goodmin.update.password'))

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.password.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin')])
                redirect opAdminInstance
            }
            '*' { respond opAdminInstance, [status: OK] }
        }
    }

    def index() {
        respond OpAdmin.list(), model: [opAdminInstanceCount: OpAdmin.count()]
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

        try {
            opAdminInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond opAdminInstance.errors, view: 'create'
            return
        }

        SysLogUtils.trace(request, session, message(code: 'trace.goodmin.save', args: [message(code: 'opAdmin.label'), opAdminInstance]))

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin'), opAdminInstance])
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

        try {
            opAdminInstance.save flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond opAdminInstance.errors, view: 'edit'
            return
        }

        SysLogUtils.trace(request, session, message(code: 'trace.goodmin.update', args: [message(code: 'opAdmin.label'), opAdminInstance]))

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin'), opAdminInstance])
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

        try {
            opAdminInstance.delete flush: true
        } catch (Exception e) {
            log.error(e.toString(), e)
            respond opAdminInstance.errors, view: 'index'
            return
        }

        SysLogUtils.trace(request, session, message(code: 'trace.goodmin.delete', args: [message(code: 'opAdmin.label'), opAdminInstance]))

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'opAdmin.label', default: 'OpAdmin'), opAdminInstance])
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
