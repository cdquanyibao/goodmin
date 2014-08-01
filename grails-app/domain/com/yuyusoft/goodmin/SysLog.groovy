package com.yuyusoft.goodmin

class SysLog {

    OpAdmin opAdmin
    String ip
    String trace

    Date dateCreated
    Date lastUpdated

    static constraints = {

        opAdmin(nullable: true)

        dateCreated(nullable: true)
        lastUpdated(nullable: true)
    }

    String toString() {
        "${opAdmin} ${trace}"
    }
}
