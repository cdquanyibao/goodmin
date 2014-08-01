import com.yuyusoft.goodmin.OpAdmin
import com.yuyusoft.goodmin.SysLog
import com.yuyusoft.goodmin.SysPermit
import com.yuyusoft.goodmin.SysRole
import grails.util.GrailsUtil
import org.codehaus.groovy.grails.commons.GrailsApplication

class BootStrap {

    def init = { servletContext ->

        if (GrailsUtil.isDevelopmentEnv()) {

            // 超级管理员角色
            def superAdminRole = new SysRole(roleName: "超级管理员", description: "拥有所有权限")
            superAdminRole.save()
            if (superAdminRole.hasErrors()) {
                println(">>> Init errors: " + superAdminRole.errors)
            }

            // 普通管理员角色
            def adminRole = new SysRole(roleName: "系统管理员", description: "拥有系统管理权限")
            adminRole.save()
            if (adminRole.hasErrors()) {
                println(">>> Init errors: " + adminRole.errors)
            }

            // 超级管理员账号
            def superAdmin = new OpAdmin(id: 0, loginName: "super_admin", loginPWD: "123", realName: "超级管理员", status: 1)
            superAdmin.save()
            if (superAdmin.hasErrors()) {
                println(">>> Init errors: " + superAdmin.errors)
            } else {
                superAdmin.sysRole = superAdminRole
            }

            // 普通管理员账号
            def admin = new OpAdmin(id: 0, loginName: "admin", loginPWD: "123", realName: "系统管理员", status: 1)
            admin.save()
            if (admin.hasErrors()) {
                println(">>> Init errors: " + admin.errors)
            } else {
                admin.sysRole = adminRole
            }

        }

        def initLog = new SysLog(ip: "0.0.0.0", trace: "系统启动")
        initLog.save()
        if (initLog.hasErrors()) log.error(initLog.errors.toString())
    }

    def destroy = {

        def destroyLog = new SysLog(ip: "0.0.0.0", trace: "系统关闭")
        destroyLog.save()
        if (destroyLog.hasErrors()) log.error(destroyLog.errors.toString())
    }
}
