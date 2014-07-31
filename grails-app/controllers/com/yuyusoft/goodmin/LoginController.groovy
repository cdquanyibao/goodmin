package com.yuyusoft.goodmin

class LoginController {

    def index = {
        redirect(action: 'login')
    }

    def login = {}

    def logout = {
        session.user = null
        session.userRole = null
        session.usePermitUrls = null
        redirect controller: 'login', action: 'login'
    }

    def authenticate = {

        println(">>> authenticate: " + params)

        def user = OpAdmin.findByLoginName(params.loginName)

        if (user) {
            println "params.loginPWD.encodeAsMD5()=" + params.loginPWD.encodeAsMD5()
            println "user.loginPWD=" + user.loginPWD

            if (params.loginPWD.encodeAsMD5() == user.loginPWD) {
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

                println(">>> user login: " + session.user + ", userRole.sysPermits=" + session.userRole.sysPermits + " , urls: " + session.userPermitUrls)
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
