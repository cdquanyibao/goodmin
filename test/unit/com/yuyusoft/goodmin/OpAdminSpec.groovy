package com.yuyusoft.goodmin

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(OpAdmin)
class OpAdminSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        def opAdminInstance = new OpAdmin(loginName: 'test', loginPWD: '123456', realName: 'test', status: 1)
        opAdminInstance.save()
        if (opAdminInstance.hasErrors()) {
            println("error: " + opAdminInstance.errors)
            return
        }
        println("md5: " + opAdminInstance.loginPWD)
    }
}
