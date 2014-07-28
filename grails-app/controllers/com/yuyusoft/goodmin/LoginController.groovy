package com.yuyusoft.goodmin

class LoginController {

    def index = {
        redirect(action: 'login')
    }

    def login = {}

    def logout = {}

    def authenticate = {

        println(">>> authenticate: " + params)
        redirect uri: "/"
    }
}
