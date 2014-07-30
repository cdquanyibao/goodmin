package com.yuyusoft.goodmin

class LoginController {

    def index = {
        redirect(action: 'login')
    }

    def login = {}

    def logout = {}

    def authenticate = {

        println(">>> authenticate: " + params)

        def user = OpAdmin.findByLoginName(params.loginName)

        if (user) {
            if (params.loginPWD == user.loginPWD) {
                session.user = user
                session.userRole = user.sysRole

                def userPermitUrls = ""
                if (user.id == 1) {
                    // 对超级管理员赋予所有权限
                    SysPermit.findAll().each {
                        if (it.permitUrl) {
                            userPermitUrls = userPermitUrls + it.permitUrl + ";"
                        }
                    }
                } else {
                    user.sysRole.sysPermits.each {
                        if (it.permitUrl) {
                            userPermitUrls = userPermitUrls + it.permitUrl + ";"
                        }
                    }
                }

                session.userPermitUrls = userPermitUrls

                if (user.id == 1) {
                    SysPermit.findAll().each {
                        if (it.permitUrl) {
                            userPermitUrls = userPermitUrls + it.permitUrl + ";"
                        }
                    }
                }

                println(">>> user login: " + session.user + ", urls: " + session.userPermitUrls)
                redirect uri: "/"
                return
            }

            flash.message = message(code: "default.goodmin.page.login.err.password")
            redirect(action: 'login')
            return
        }

        flash.message = message(code: "default.goodmin.page.login.err.nouser")
        redirect(action: 'login')
    }

    def deny = {
        flash.message = message(code: "default.goodmin.page.login.err.deny")
    }
}
