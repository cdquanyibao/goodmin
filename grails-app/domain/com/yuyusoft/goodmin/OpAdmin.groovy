package com.yuyusoft.goodmin

class OpAdmin {

    String loginName
    String loginPWD
    String realName
    int status
    SysRole sysRole

    Date dateCreated
    Date lastUpdated

    static constraints = {
        loginName(size: 4..30, blank: false, unique: true)
        loginPWD(size: 1..50, blank: false)
        realName(size: 1..20, blank: false)
        status(inList: [0, 1])
        sysRole(nullable: true)

        dateCreated(nullable: true)
        lastUpdated(nullable: true)
    }

//    def beforeInsert() {
//        println(">>> beforeInsert: loginPWD=" + loginPWD)
//        loginPWD = loginPWD.encodeAsMD5();
//        println(">>> after beforeInsert: loginPWD=" + loginPWD)
//    }
//
//    def beforeUpdate() {
//        println(">>> beforeUpdate: loginPWD=" + loginPWD)
//        loginPWD = loginPWD.encodeAsMD5();
//        println(">>> after beforeUpdate: loginPWD=" + loginPWD)
//    }
}
