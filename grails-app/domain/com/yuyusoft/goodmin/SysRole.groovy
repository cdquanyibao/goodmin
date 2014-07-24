package com.yuyusoft.goodmin

class SysRole {

    String roleName
    String description

    Date dateCreated
    Date lastUpdated

    static hasMany = [sysPermits: SysPermit]

    static constraints = {

        roleName(blank: false, size: 0..100, unique: true)
        description()

        dateCreated(nullable: true)
        lastUpdated(nullable: true)
    }

    String toString() {
        return roleName;
    }
}
