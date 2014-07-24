package com.yuyusoft.goodmin

class SysPermit {

    String permitName
    String permitUrl
    int idx
    int level
    int parent

    Date dateCreated
    Date lastUpdated

    static constraints = {
        permitName(blank: false)
        permitUrl(nullable: true)
        idx()
        level()
        parent()

        dateCreated(nullable: true)
        lastUpdated(nullable: true)
    }

    String toString() {
        "${permitName}"
    }
}
