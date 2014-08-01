package com.yuyusoft.goodmin

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SysLogController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index() {
        respond SysLog.list()
    }

/*    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SysLog.list(params), model: [sysLogInstanceCount: SysLog.count()]
    }*/


}
